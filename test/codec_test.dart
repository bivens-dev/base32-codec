import 'package:base32_codec/base32_codec.dart';
import 'package:test/test.dart';

void main() {
  group('Base32Codec', () {
    test('RFC 4648 encoding', () {
      final codec = Base32Codec();
      expect(codec.encode([0x74, 0x65, 0x73, 0x74]), equals('ORSXG5A='));
      expect(codec.decode('ORSXG5A='), equals([0x74, 0x65, 0x73, 0x74]));
    });

    test('RFC 4648 hex encoding', () {
      final codec = Base32Codec.hex();
      expect(codec.encode([0x74, 0x65, 0x73, 0x74]), equals('EHIN6T0='));
      expect(codec.decode('EHIN6T0='), equals([0x74, 0x65, 0x73, 0x74]));
    });

    test('Crockford encoding', () {
      final codec = Base32Codec.crockford();
      expect(codec.encode([0x74, 0x65, 0x73, 0x74]), equals('EHJQ6X0'));
      expect(codec.decode('EHJQ6X0'), equals([0x74, 0x65, 0x73, 0x74]));
    });

    // test('Invalid input', () {
    //   final codec = Base32Codec();
    //   expect(() => codec.decode('MZXW6='), throwsArgumentError);
    //   expect(() => codec.decode('MZXW6'), throwsArgumentError);
    //   expect(() => codec.decode('MZXW6==='), throwsArgumentError);
    // });
  });
}
