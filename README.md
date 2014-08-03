| specifier | Output | Example |
|-----------|--------|---------|
| d or i | Signed decimal integer | 392 |
| u | Unsigned decimal integer | 7235 |
| o | Unsigned octal | 610 |
| x | Unsigned hexadecimal \ninteger | 7fa|
| X | Unsigned hexadecimal \ninteger (uppercase) | 7FA|
| f | Decimal floating point, \nlowercase | 392.65 |
| F | Decimal floating point, \nuppercase | 392.65 |
| e | Scientific notation \n(mantissa/exponent), \nlowercase | 3.9265e+2 |
| E | Scientific notation \n(mantissa/exponent), \nuppercase | 3.9265E+2 |
| g | Use the shortest \nrepresentation: %e or %f | 392.65 |
| G | Use the shortest \nrepresentation: %E or %F | 392.65 |
| a | Hexadecimal floating \npoint, lowercase | -0xc.90fep-2 |
| A | Hexadecimal floating \npoint, uppercase | -0XC.90FEP-2 |
| \$ | Currency | \$25.00|
| c | Character | a  |
| C | Character capitalized | A  |
| s | String of characters  | sample |
| S | String of characters in \nall caps | SAMPLE |
| b | String representation of \na Boolean variable | true   |
| B | String representation of \na Boolean variable, uppercase | TRUE |
| v | String representation of \nan array variable | a, b, c|
| V | String representation of \nan array variable, \nuppercase | A, B, C|
| D | String representation of \na date object | Aug 15, 1990 |
| W | CSS styling (obviously \nnot supported when printing to a textarea) | style |
| T | Datatype for the \nparameter object | string |
| O | Custom formatting \nfunction for the parameter object | this is a circle |
| p | Pointer address | b8000000 |
| n | Nothing printed. \n\nThe corresponding \nargument must be a \npointer to a signed int. \n\nThe number of characters \nwritten so far is stored \n in the pointed location. | |
| % | A % followed by another \n% character will write a \nsingle % to the stream. | % |
