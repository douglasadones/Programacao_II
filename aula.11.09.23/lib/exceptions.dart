void main() {
// lançar exceptions: (Error handling)

  throw FormatException(
      'Podemos lançar um erro assim'); // Mais recomendado informar alguma função de erro derivadas da função Exception.

  throw 'errou';

  // Capturando exceptions

  try {
    breedMoreLiamas();
  } on OutOfLlamasException {
    buyMoreLiamas();
  }

  // ou on Exception catch (e) -- aqui são todas as exeptions da função Exception
  // ou catch (e) -- Aqui todas as exeptions serão capturadas.
  // O cath (e) só serve para capturar a exeption que está solta na memória.
  // caso queria capturar também o stack trace, basta adicionar outra variável no catch: catch (e, s)
  // Obs: O Stacktrace é como um "histórico" de todas as funções que foram chamadas e onde o erro aconteceu.


  try {
    print('blá');
  } catch (e) {
    rethrow;
  } // Olhar de pois esse rethrow.
  // Esse rethrow serve para lançar novamente o erro para tratar em outro lugar, se quiser.

  // Obs: Não é preciso usar o catch para usar o finally.
}
