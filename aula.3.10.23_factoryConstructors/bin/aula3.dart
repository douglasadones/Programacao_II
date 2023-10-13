/*

  Pontos importantes da aula 3.10.23

  Constructors Generative and Factory (Ex no arquivo rationalFactory aula.2.10.12_ex_class_rational)

  Ex de construtor Generativo nomeado privado (_): 
    const Rational._fromInt(this.num, [this.den = 1]) {

    }



  To create a Factory constructor, the class need to have a generative constructor (but the generative do not need a Factory constructor)

  Generative Constructor  (Construtor normal não nomeado)

  Factory Constructor

  Construtor factory é como um método estático
  Sempre vai retornar uma instância da classe generativa

  O construtor factory, serve para "tratar os parâmetros de entrada" de uma classe para só depois, retornar a instância da classe (objeto). Coisa que não podemos fazer com um construtor const.


  Sobrecarga de operadores (no mesmo arquivo comentado acima)

  Se usar o operador == ele vai comprar os endereços e não os valores
  Para que o == compare os valores, temos que fazer um @override e configurar isso. (no arquivo citado tem).

  Ver sobre Type Cast

 */