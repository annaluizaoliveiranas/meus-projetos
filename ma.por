programa
{
	
	funcao inicio()
	{
	inteiro a, m

	escreva ("digite um valor para a : ")
	leia (a)
	se (a > 0)
	m = 1
	senao se (a < 0)
	m = 2
	senao
	m = 0
	escolha (m)
	{
		 caso 1:
		 escreva( " O numero positivo")
		 pare
		 
		 caso 2:
		 escreva("O numero negativo")
		 pare

		 caso 3:
		 escreva("O numero zero")
		 pare
		 	
     
     caso contrario: 
     escreva("erro inesperado")
		
		     	
     }
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 391; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */