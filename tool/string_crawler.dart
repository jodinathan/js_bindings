

class StringCrawler {
  final String _buffer;
  int _point = 0;
  int get point => _point;

  StringCrawler(this._buffer);

  void reset() {
    _point = 0;
  }

  String? exBetween(RegExp open, RegExp close) {
    final match = open.firstMatch(_buffer.substring(_point));

    if (match != null) {
      _point += match.end;

      final mcl = close.firstMatch(_buffer.substring(_point));

      if (mcl != null) {
        final e = _point + mcl.end;
        final ret = _buffer.substring(_point, e);

        _point = e;

        return ret;
      }
    }

    return null;
  }

  String? getBetween(String open, String close) {
    final p = _buffer.indexOf(open, _point);

    if (p >= 0) {
      _point = p + open.length;

      final e = _buffer.indexOf(close, _point);

      if (e >= 0) {
        final ret = _buffer.substring(_point, e);

        _point = e;
        return ret;
      }
    }

    return null;
  }

  String? enclosed(String open, String close) {
    final p = _buffer.indexOf(open, _point);

    if (p >= 0) {
      var count = 1;
      var olen = open.length;
      var clen = close.length;
      var start = p + olen;

      _point = start;

      while (count > 0) {
        final p = _buffer.indexOf(open, _point);
        final e = _buffer.indexOf(close, _point);

        if (e >= 0) {
          if (p > -1 && p < e) {
            _point = e + clen;
            continue;
          }

          final ret = _buffer.substring(start, e);

          _point = e;
          return ret;
        }
      }
    }

    return null;
  }

  Iterable<String> getAllBetween(String from, String to) {
    final ret = <String>[];
    String? bet;

    while ((bet = getBetween(from, to)) != null) {
      ret.add(bet!);
    }

    return ret;
  }
  bool moveTo(String from) {
    final p = _buffer.indexOf(from, _point);

    if (p >= 0) {
      _point = p + from.length;
      return true;
    }

    return false;
  }
  String? getUntil(String close) {
    final p = _buffer.indexOf(close, _point);

    if (p >= 0) {
      final clen = close.length;
      final ret = _buffer.substring(_point, p);

      _point = p + clen;

      return ret;
    }

    return null;
  }

  int pointOf(String from) {
    return _buffer.indexOf(from, _point);
  }
}