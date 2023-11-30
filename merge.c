#include <stdio.h>
#include <stdlib.h>

// Função para mesclar duas sub-listas de arr[]
void merge(int arr[], int l, int m, int r) {
	
    int i, j, k;
    int n1 = m - l + 1;
    int n2 = r - m;

    // Cria arrays temporários
    int L[n1], R[n2];

    // Copia os dados para os arrays temporários L[] e R[]
    for (i = 0; i < n1; i++)
        L[i] = arr[l + i];
    for (j = 0; j < n2; j++)
        R[j] = arr[m + 1 + j];

    // Mescla os arrays temporários de volta para arr[l..r]
    i = 0;
    j = 0;
    k = l;
    while (i < n1 && j < n2) {
        if (L[i] <= R[j]) {
            arr[k] = L[i];
            i++;
        } else {
            arr[k] = R[j];
            j++;
        }
        k++;
    }

    // Copia os elementos restantes de L[], se houver algum
    while (i < n1) {
        arr[k] = L[i];
        i++;
        k++;
    }

    // Copia os elementos restantes de R[], se houver algum
    while (j < n2) {
        arr[k] = R[j];
        j++;
        k++;
    }
}

// Função principal do Merge Sort
void mergeSort(int arr[], int l, int r) {
    if (l < r) {
        // Encontra o ponto médio
        int m = l + (r - l) / 2;

        // Recursivamente ordena as sub-listas
        mergeSort(arr, l, m);
        mergeSort(arr, m + 1, r);

        // Mescla as sub-listas ordenadas
        merge(arr, l, m, r);
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

    // Lê os dados do arquivo e conta o número de elementos
    int value, count = 0;
    while (fscanf(inputFile, "%d", &value) == 1) {
        count++;
    }

    // Reposiciona o ponteiro do arquivo para o início
    fseek(inputFile, 0, SEEK_SET);

    // Aloca memória para armazenar os dados
    int *data = malloc(count * sizeof(int));

    // Lê os dados do arquivo e armazena no array
    for (a = 0; a < count; a++) {
        fscanf(inputFile, "%d", &data[a]);
    }

    // Fecha o arquivo de entrada
    fclose(inputFile);

    // Chama a função Merge Sort para ordenar os dados
    mergeSort(data, 0, count - 1);

    // Imprime os dados ordenados
    printf("Dados ordenados:\n");
    for (a = 0; a < count; a++) {
        printf("%d ", data[a]);
    }
    printf("\n");

    // Libera a memória alocada
    free(data);

    return 0;
}

