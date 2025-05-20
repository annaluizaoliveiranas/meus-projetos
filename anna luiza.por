programa
{
    // Inclui a biblioteca para gerar números aleatórios
    inclua biblioteca Util --> u

    // Vetores: original e cópias para ordenações
    inteiro senhas[10]
    inteiro copia[10]

    // Função para gerar 10 senhas aleatórias de 1 a 999
    funcao gerar_senhas(inteiro vetor[], inteiro tamanho)
    {
        para (inteiro i = 0; i < tamanho; i = i + 1)
        {
            vetor[i] = u.sorteia(1, 999)
        }
    }

    // Função para exibir o conteúdo de um vetor
    funcao exibir_vetor(inteiro vetor[], inteiro tamanho)
    {
        para (inteiro i = 0; i < tamanho; i = i + 1)
        {
            escreva(vetor[i], " ")
        }
        escreva("\n")
    }

    // Função para copiar um vetor para outro
    funcao copiar_vetor(inteiro origem[], inteiro destino[], inteiro tamanho)
    {
        para (inteiro i = 0; i < tamanho; i = i + 1)
        {
            destino[i] = origem[i]
        }
    }

    // Função Bubble Sort
    funcao bubble_sort(inteiro vetor[], inteiro tamanho)
    {
        inteiro i, j, temp
        para (i = 0; i < tamanho - 1; i = i + 1)
        {
            para (j = 0; j < tamanho - i - 1; j = j + 1)
            {
                se (vetor[j] > vetor[j + 1])
                {
                    temp = vetor[j]
                    vetor[j] = vetor[j + 1]
                    vetor[j + 1] = temp
                }
            }
        }
    }

    // Função merge para uso no Merge Sort
    funcao merge(inteiro vetor[], inteiro inicio, inteiro meio, inteiro fim)
    {
        inteiro i = inicio, j = meio + 1, k = 0
        inteiro temp[10]  // vetor auxiliar

        enquanto (i <= meio e j <= fim)
        {
            se (vetor[i] <= vetor[j])
            {
                temp[k] = vetor[i]
                i = i + 1
            }
            senao
            {
                temp[k] = vetor[j]
                j = j + 1
            }
            k = k + 1
        }

        enquanto (i <= meio)
        {
            temp[k] = vetor[i]
            i = i + 1
            k = k + 1
        }

        enquanto (j <= fim)
        {
            temp[k] = vetor[j]
            j = j + 1
            k = k + 1
        }

        para (i = 0; i < k; i = i + 1)
        {
            vetor[inicio + i] = temp[i]
        }
    }

    // Função Merge Sort
    funcao merge_sort(inteiro vetor[], inteiro inicio, inteiro fim)
    {
        se (inicio < fim)
        {
            inteiro meio = (inicio + fim) / 2
            merge_sort(vetor, inicio, meio)
            merge_sort(vetor, meio + 1, fim)
            merge(vetor, inicio, meio, fim)
        }
    }

    // Função principal
    funcao inicio()
    {
        inteiro opcao

        // Gera as senhas aleatórias no início
        gerar_senhas(senhas, 10)

        // Laço de repetição com "enquanto (verdadeiro)"
        enquanto (verdadeiro)
        {
            escreva("\n===== MENU DE ORDENAÇÃO DE SENHAS =====\n")
            escreva("1 - Exibir senhas originais\n")
            escreva("2 - Ordenar com Bubble Sort\n")
            escreva("3 - Ordenar com Merge Sort\n")
            escreva("0 - Sair\n")
            escreva("Escolha uma opção: ")
            leia(opcao)

            escolha (opcao)
            {
                caso 1:
                    escreva("\n Senhas originais:\n")
                    exibir_vetor(senhas, 10)
                    pare

                caso 2:
                    copiar_vetor(senhas, copia, 10)
                    bubble_sort(copia, 10)
                    escreva("\n Senhas ordenadas com Bubble Sort:\n")
                    exibir_vetor(copia, 10)
                    pare

                caso 3:
                    copiar_vetor(senhas, copia, 10)
                    merge_sort(copia, 0, 9)
                    escreva("\n Senhas ordenadas com Merge Sort:\n")
                    exibir_vetor(copia, 10)
                    pare

                caso 0:
                    escreva("Encerrando o programa...\n")
                    // sai do laço enquanto
                    pare

                caso contrario:
                    escreva(" Opção inválida! Tente novamente.\n")
            }
        }
    }
}

    


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4212; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */