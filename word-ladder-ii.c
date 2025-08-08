#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <limits.h>

typedef struct {
    char** words;
    int size;
    int capacity;
} WordList;

typedef struct {
    char*** result;
    int* pathSizes;
    int size;
    int capacity;
} Result;

void addWord(WordList* list, char* word) {
    if (list->size == list->capacity) {
        list->capacity *= 2;
        list->words = (char**)realloc(list->words, list->capacity * sizeof(char*));
    }

    list->words[list->size] = strdup(word);
    list->size++;
}

void addPath(Result* result, char** path, int pathSize) {
    if (result->size == result->capacity) {
        result->capacity *= 2;
        result->result = (char***)realloc(result->result, result->capacity * sizeof(char**));
        result->pathSizes = (int*)realloc(result->pathSizes, result->capacity * sizeof(int));
    }

    result->result[result->size] = (char**)malloc(pathSize * sizeof(char*));

    for (int i = 0; i < pathSize; i++) {
        result->result[result->size][i] = strdup(path[i]);
    }

    result->pathSizes[result->size] = pathSize;
    result->size++;
}

int diffByOne(char* a, char* b) {
    int diff = 0;

    while (*a) {
        if (*a != *b) diff++;
        if (diff > 1) return 0;
        a++;
        b++;
    }

    return diff == 1;
}

void findLaddersHelper(char* beginWord, char* endWord, WordList* wordList, char** path, int pathSize, int* visited, Result* result, int minLen) {
    if (pathSize > minLen) return;

    if (strcmp(path[pathSize - 1], endWord) == 0) {
        addPath(result, path, pathSize);
        return;
    }


    for (int i = 0; i < wordList->size; i++) {
        if (!visited[i] && diffByOne(path[pathSize - 1], wordList->words[i])) {
            visited[i] = 1;
            path[pathSize] = wordList->words[i];
            findLaddersHelper(beginWord, endWord, wordList, path, pathSize + 1, visited, result, minLen);
            visited[i] = 0;
        }
    }
}

char*** findLadders(char* beginWord, char* endWord, char** wordList, int wordListSize, int* returnSize, int** returnColumnSizes) {
    int* visited = (int*)calloc(wordListSize, sizeof(int));

    WordList list = {wordList, wordListSize, wordListSize};
    Result result = {(char***)malloc(16 * sizeof(char**)), (int*)malloc(16 * sizeof(int)), 0, 16};

    int minLen = INT_MAX;

    for (int i = 0; i < wordListSize; i++) {
        if (strcmp(wordList[i], endWord) == 0) {
            char* path[100];
            path[0] = beginWord;
            findLaddersHelper(beginWord, endWord, &list, path, 1, visited, &result, minLen);
            break;
        }
    }

    char*** finalResult = (char***)malloc(result.size * sizeof(char**));
    *returnColumnSizes = (int*)malloc(result.size * sizeof(int));

    for (int i = 0; i < result.size; i++) {
        finalResult[i] = result.result[i];
        (*returnColumnSizes)[i] = result.pathSizes[i];
    }

    *returnSize = result.size;

    free(visited);
    free(result.result);
    free(result.pathSizes);

    return finalResult;
}

const int main(void) {
    char* beginWord = "hit";
    char* endWord = "cog";
    char* wordList[] = {"hot","dot","dog","lot","log","cog"};
    int* returnColumnSizes;
    int wordListSize = 6;
    int returnSize;

    char*** result = findLadders(beginWord, endWord, wordList, wordListSize, &returnSize, &returnColumnSizes);

    for (int i = 0; i < returnSize; i++) {
        for (int j = 0; j < returnColumnSizes[i]; j++) printf("%s ", result[i][j]);
        printf("\n");
    }

    for (int i = 0; i < returnSize; i++) {
        for (int j = 0; j < returnColumnSizes[i]; j++) free(result[i][j]);
        free(result[i]);
    }

    free(result);
    free(returnColumnSizes);

    return 0;
}
