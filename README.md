
| specifier | Output | Example |
|-----------|--------|---------|
| d or i | Signed decimal integer | 392 |
| u | Unsigned decimal integer | 7235 |
| o | Unsigned octal | 610 |
| x | Unsigned hexadecimal integer | 7fa|
| X | Unsigned hexadecimal integer (uppercase) | 7FA|
| f | Decimal floating point, lowercase | 392.65 |
| F | Decimal floating point, uppercase | 392.65 |
| e | Scientific notation (mantissa/exponent), lowercase | 3.9265e+2 |
| E | Scientific notation (mantissa/exponent), uppercase | 3.9265E+2 |
| g | Use the shortest representation: %e or %f | 392.65 |
| G | Use the shortest representation: %E or %F | 392.65 |
| a | Hexadecimal floating point, lowercase | -0xc.90fep-2 |
| A | Hexadecimal floating point, uppercase | -0XC.90FEP-2 |
| \$ | Currency | \$25.00|
| c | Character | a  |
| C | Character capitalized | A  |
| s | String of characters  | sample |
| S | String of characters in all caps | SAMPLE |
| b | String representation of a Boolean variable | true   |
| B | String representation of a Boolean variable, uppercase | TRUE |
| v | String representation of an array variable | a, b, c|
| V | String representation of an array variable, uppercase | A, B, C|
| D | String representation of a date object | Aug 15, 1990 |
| W | CSS styling (obviously not supported when printing to a textarea) | style |
| T | Datatype for the parameter object | string |
| O | Custom formatting function for the parameter object | this is a circle |
| p | Pointer address | b8000000 |
| n | Nothing printed. The corresponding argument must be a pointer to a signed int. The number of characters written so far is stored  in the pointed location. | |
| % | A % followed by another % character will write a single % to the stream. | % |
