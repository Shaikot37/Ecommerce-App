import 'package:flutter/foundation.dart' show immutable;

typedef CloseLoadingScreen = bool Function();
typedef UpdateLoadingScreen = bool Function(String text);

@immutable
class LoadingScreenController {
  final CloseLoadingScreen close;
  final UpdateLoadingScreen update;

  const LoadingScreenController({
    required this.close,
    required this.update,
  });
}




/*
// Call LoadingScreen().show() to SHOW  Loading Dialog
LoadingScreen().show(
context: context,
text: 'Please wait a moment',
);

// await for 2 seconds to Mock Loading Data
await Future.delayed(const Duration(seconds: 2));
setState(() {
_counter++;
});

// Call LoadingScreen().hide() to HIDE  Loading Dialog
LoadingScreen().hide();*/
