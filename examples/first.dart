import "package:trmsta/take.dart";
import "dart:async";

void main() async {
  print("hej");
  Downloaded nasz = await download();
  print(nasz.ParseSta().map((LocRowSta a) => a.string()));
  print(nasz.ParseData().map((StaData a) => a.string()));
  print(nasz.ParseAll().map((AllSta a) => a.string()));
}

