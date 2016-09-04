library trmsta.download;

import 'dart:async';
import 'dtype.dart';

const THE_URL = "http://trm24.pl/panel-trm/maps.jsp";

Future<String> downloadString(Future<String> httpreadfunc(String url), [String url = THE_URL]) async {
  return await httpreadfunc(url);
}

Future<Downloaded> download(Future<String> httpreadfunc(String url), [String url = THE_URL]) async {
  DateTime time = new DateTime.now();
  return new Downloaded(await downloadString(httpreadfunc, url), time);
}
