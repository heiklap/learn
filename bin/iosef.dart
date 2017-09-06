


import 'dart:io' show Platform;

main() {
  print('Hello Josef');
  Map<String, String> envVars = Platform.environment;
  print(envVars['PATH']);
}
