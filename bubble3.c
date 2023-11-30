#include <stdio.h>
#include <stdlib.h>

// Fun��o para realizar o Bubble Sort
void bubbleSort(int arr[], int n) 
{
	int i, j;
	
    for (i = 0; i < n-1; i++) {
        for (j = 0; j < n-i-1; j++) {
            if (arr[j] > arr[j+1]) {
                // Troca os elementos se estiverem fora de ordem
                int temp = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = temp;
                

            }
        }
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
    for ( a = 0; a < count; a++) {
        fscanf(inputFile, "%d", &data[a]);
    }

    // Fecha o arquivo de entrada
    fclose(inputFile);

    // Chama a fun��o Bubble Sort para ordenar os dados
    bubbleSort(data, count);
	for ( a = 0; a < count; a++) {
        printf("%d ", data[a]);
    }

    // Libera a mem�ria alocada
    free(data);

    return 0;
}

