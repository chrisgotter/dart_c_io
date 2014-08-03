import "dart:io";
import "printf.dart";

void main()
{  
  printf("Characters: %c %c \n", 'a', 65);
  printf("Decimals: %d %ld\n", 1977, 650000);
  printf("Preceding with blanks: %10d \n", 1977);
  printf("Preceding with zeros: %010d \n", 1977);
  printf("Some different radices: %d %x %o %#x %#o \n", 100, 100, 100, 100, 100);
  printf("Floats: %4.2f %+.0e %E \n", 3.1416, 3.1416, 3.1416);
  printf("Width trick: %*d \n", 5, 10);
  printf("%s \n", "A string");
  printf("Arrays: %[->]v\n", [3.1416, 3.1416, 3.1416]);
  printf("Boolean values: %b \n", true);
  printf("The color: %s\n", "blue");
  printf("First number: %d\n", 12345);
  printf("Second number: %04d\n", 25);
  printf("Third number: %i\n", 1234);
  printf("Float number: %3.2f\n", 3.14159);
  printf("Hexadecimal: %x\n", 255);
  printf("Octal: %o\n", 255);
  printf("Unsigned value: %u\n", 150);
  printf("Just print the percentage sign %%\n", 10);
  printf(":%s:\n", "Hello, world!");
  printf(":%15s:\n", "Hello, world!");
  printf(":%.10s:\n", "Hello, world!");
  printf(":%-10s:\n", "Hello, world!");
  printf(":%-15s:\n", "Hello, world!");
  printf(":%.15s:\n", "Hello, world!");
  printf(":%15.10s:\n", "Hello, world!");
  printf(":%-15.10s:\n", "Hello, world!");
  printf("too long: %hhd %hd\n", 1977, 123456789);
  printf("too long: %f %lf\n", 1977, 123456789);
  //-----------------------------------------------------------------------------------------

  File file = new File("test.txt");
  //IOSink sink = f.openWrite(mode: WRITE);
  
  fprintf(file, "Characters: %c %c \n", 'a', 65);
  fprintf(file, "Decimals: %d %ld\n", 1977, 650000);
  fprintf(file, "Preceding with blanks: %10d \n", 1977);
  fprintf(file, "Preceding with zeros: %010d \n", 1977);
  fprintf(file, "Some different radices: %d %x %o %#x %#o \n", 100, 100, 100, 100, 100);
  fprintf(file, "Floats: %4.2f %+.0e %E \n", 3.1416, 3.1416, 3.1416);
  fprintf(file, "Width trick: %*d \n", 5, 10);
  fprintf(file, "%s \n", "A string");
  fprintf(file, "Arrays: %[->]v\n", [3.1416, 3.1416, 3.1416]);
  fprintf(file, "Boolean values: %b \n", true);
  fprintf(file, "The color: %s\n", "blue");
  fprintf(file, "First number: %d\n", 12345);
  fprintf(file, "Second number: %04d\n", 25);
  fprintf(file, "Third number: %i\n", 1234);
  fprintf(file, "Float number: %3.2f\n", 3.14159);
  fprintf(file, "Hexadecimal: %x\n", 255);
  fprintf(file, "Octal: %o\n", 255);
  fprintf(file, "Unsigned value: %u\n", 150);
  fprintf(file, "Just print the percentage sign %%\n", 10);
  fprintf(file, ":%s:\n", "Hello, world!");
  fprintf(file, ":%15s:\n", "Hello, world!");
  fprintf(file, ":%.10s:\n", "Hello, world!");
  fprintf(file, ":%-10s:\n", "Hello, world!");
  fprintf(file, ":%-15s:\n", "Hello, world!");
  fprintf(file, ":%.15s:\n", "Hello, world!");
  fprintf(file, ":%15.10s:\n", "Hello, world!");
  fprintf(file, ":%-15.10s:\n", "Hello, world!");
  fprintf(file, "too long: %hhd %hd\n", 1977, 123456789);
  fprintf(file, "too long: %f %lf\n", 1977, 123456789);
}