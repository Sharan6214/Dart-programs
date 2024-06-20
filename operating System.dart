import 'dart:io';

void main() {
  // Get the operating system name
  String osName = Platform.operatingSystem;

  // Get the operating system version
  String osVersion = Platform.operatingSystemVersion;

  // Get the platform information
  String platform = Platform.localeName;

  // Print the OS name, platform, and release information
  print('Operating System: $osName');
  print('OS Version: $osVersion');
  print('Platform: $platform');
}
