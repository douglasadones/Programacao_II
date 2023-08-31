void main() {
  // Comentário de documentação: /// (marcação para o software: Docs gen) (Effective dart: Documentation)

  //    int.parse('1') --> Convert to int

  // types:
  //    Numbers (int, double)
  //    Strings (String)
  //    Booleans (bool)
  //    Records ((value1, value2))
  //    Lists (List, )
  var teste = ''' Multiline
  multiline''';

  var teste2 = """ Multiline
  Multiline""";

  var teste3 = "teste"
      "this isn's multine"
      "it's just a string line without multilines";

  /* 
  Scape sequence:
  \r -- 13 - CR
  \n -- 10 - LF
  \b --  8 - BS
  \f -- 12 - F
  \a --  7 - BL
  \t --  9 - TB

  \x1b -- 27 - ESC  

  para que a linguagem não interprete a linguagem scape, devemos usar o r:
  In order to see the sequence scape in String, just use r String:
  
  "First line \n Second le":
    "First line"
    "Second line"
  r"First line \n first line too":
    "First linha \n first line too"

   */

  // Os Sets, diferente das listas, não suportam repetições ou ordem
  // Ex de Set:
  // var halogens = {'flourine', 'chlorine', 'bromine'}; -> Sem ordem ou repetição de dados.

  // var elements = <String>{}; --> cria uma variável string vazia.

  /* 
  linux commands:
    cat - return all the file to the terminal
    hd file.name - terurn all file in hexa to the terminal.

   */

  // switch (command) {
  //  case 'CASE1':
  //    executeit();
  //  case 'CASE2':
  //    executeit();
  //  case 'CASE 3':
  //    executeit();
  //  case 'CASE 4':
  //    executeit();
  //  default: (optional)
  //    executeir();
  // };

  
}
