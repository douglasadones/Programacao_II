// receber um int no formato xxxxxxxxxx.xxx e formatar para xx.xxx.xxx.xxx,xx

void main() {
  double val = 12345678900.33876;

  print('$val -> ${formatNumber(val)}');
}

String formatNumber(
  double number, {
  int decimalPlaces = 2,
  String thousandSeparator = '.',
  String decimalSeparator = ',',
  String currency = 'R\$', // ou r'R$ tbm 'escapa' o $
}) {
  var result = currency;
  var text = number.toStringAsFixed(decimalPlaces);
  var intDigits = text.length - decimalPlaces - (decimalPlaces > 0 ? 1 : 0); // operador ternário
  var di = (intDigits % 3 != 0) ? intDigits % 3 : 3;
  var i = 0;


  while (i < intDigits) {
    result += text.substring(i, i + di);
    i += di;
    if (i < intDigits) {
      result += thousandSeparator;
    }
    di = 3;
  }

  if (decimalPlaces > 0) {
    result += decimalSeparator;
    result += text.substring(intDigits + 1);
  }

  return result;
}
