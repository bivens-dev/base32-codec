<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

TODO: Put a short description of the package here that helps potential users
know whether this package might be useful for them.

## Features

TODO: List what your package can do. Maybe include images, gifs, or videos.

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder. 

```dart
import 'dart:convert';

import 'package:base32_codec/base32_codec.dart';

void main() {
  final utf8String = utf8.encode("Hello World");
  final base32String = Base32Codec().encode(utf8String);
  final bas332HexString = Base32Codec.hex().encode(utf8String);
  final crockfordString = Base32Codec.crockford().encode(utf8String);
  final decodedString = Base32Codec().decode(base32String);

  print("UTF-8 Encoding: $utf8String");
  print("RFC 4648 Base32 Encoding: $base32String");
  print("Base32 Hex Encoding: $bas332HexString");
  print("Crockford's Base32 Encoding: $crockfordString");
  print("Decoded string: ${utf8.decode(decodedString)}");
}
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to 
contribute to the package, how to file issues, what response they can expect 
from the package authors, and more.
