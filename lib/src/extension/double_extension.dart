part of starlight_utils;

///For Double
extension StarlightDouble on double {
  ///Currency Format
  ///eg.
  ///- `300000.00` will be Change `300,000`
  ///- `300000.25` will be Change `300,000.246`
  String get currencyFormat {
    String _format = '';
    final List _price = [];
    final String _currency = toString().split('.').first;
    final int _dec = toString().split('.').last.length > 2
        ? double.parse(
                "${toString().split('.').last.substring(0, 2)}.${toString().split('.').last.substring(2, 3)}")
            .floor()
        : int.parse(toString().split('.').last);
    final int _currencyLength = _currency.toString().length - 1;
    for (int i = 0; i < _currency.length; i++) {
      if (i != 0 && i % 3 == 0) {
        _price.add(",${_currency.toString()[_currencyLength - i]}");
      } else {
        _price.add(_currency.toString()[_currencyLength - i]);
      }
    }
    final int _priceLength = _price.join().length - 1;
    for (var i = 0; i < _price.join().length; i++) {
      _format += _price.join()[_priceLength - i];
    }
    if (_dec > 1) return "$_format.$_dec";
    return _format;
  }
}
