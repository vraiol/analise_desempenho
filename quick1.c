#include <stdio.h>
#include <stdlib.h>

// Fun��o de parti��o para o Quick Sort
int partition(int arr[], int low, int high) {
    int pivot = arr[high];
    int i = low - 1;
    int j;

    for (j = low; j <= high - 1; j++) {
        if (arr[j] <= pivot) {
            i++;
            // Troca arr[i] e arr[j]
            int temp = arr[i];
            arr[i] = arr[j];
            arr[j] = temp;
        }
    }

    // Troca arr[i + 1] e arr[high]
    int temp = arr[i + 1];
    arr[i + 1] = arr[high];
    arr[high] = temp;

    return i + 1;
}

// Fun��o principal do Quick Sort
void quickSort(int arr[], int low, int high) {
    if (low < high) {
        // Encontra o �ndice de parti��o
        int pi = partition(arr, low, high);

        // Recursivamente ordena as sub-listas antes e depois da parti��o
        quickSort(arr, low, pi - 1);
        quickSort(arr, pi + 1, high);
    }
}

int main() {
	int a;
    // Nome do arquivo a ser lido
    const char* inputFilename = "dados1.txt";

    FILE *inputFile = fopen(inputFilename, "r");

    if (!inputFile) {
        fprintf(stderr, "Erro ao abrir o arquivo de entrada.\n");
        return 1;
    }

    // L� os dados do arquivo e conta o n�mero de elementos
    int value, count = 0;
    while (fscanf(inputFile, "%d", &value) == 1) {
        count++;
    }

    // Reposiciona o ponteiro do arquivo para o in�cio
    fseek(inputFile, 0, SEEK_SET);

    // Aloca mem�ria para armazenar os dados
    int *data = malloc(count * sizeof(int));

    // L� os dados do arquivo e armazena no array
    for (a = 0; a < count; a++) {
        fscanf(inputFile, "%d", &data[a]);
    }

    // Fecha o arquivo de entrada
    fclose(inputFile);

    // Chama a fun��o Quick Sort para ordenar os dados
    quickSort(data, 0, count - 1);

    // Imprime os dados ordenados
    printf("Dados ordenados:\n");
    for (a = 0; a < count; a++) {
        printf("%d ", data[a]);
    }
    printf("\n");

    // Libera a mem�ria alocada
    free(data);

    return 0;
}

