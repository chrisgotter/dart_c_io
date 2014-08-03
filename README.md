function

\<print.js\>

printf
======

int printf ( String format, ... );

Print formatted data to stdout

Writes the JavaScript string referenced by format to the textarea output
(console). If format includes format specifiers(subsequences beginning
with %), the additional arguments following format are formatted and
inserted in the resulting string replacing their respective specifiers.

[[content and documentation adapted from
cplusplus.com](http://www.google.com/url?q=http%3A%2F%2Fwww.cplusplus.com%2Freference%2Fcstdio%2Fprintf%2F&sa=D&sntz=1&usg=AFQjCNH1zQO27Ukbs5_aqlLdCE4SiXz02Q)]

### Parameters

format

String that contains the text to be written to console.

It can optionally contain embedded format specifiers that are replaced
by the values specified in subsequent additional arguments and formatted
as requested.

A format specifier follows this prototype: [[see compatibility note
below](http://www.google.com/url?q=http%3A%2F%2Fwww.cplusplus.com%2Freference%2Fcstdio%2Fprintf%2F%23compatibility&sa=D&sntz=1&usg=AFQjCNEXv52mTvFL6PofBONcYdNWYotleQ)]

%[flags][ [special] ][width][.precision][length]specifier

Where the specifier character at the end is the most significant
component, since it defines the type and the interpretation of its
corresponding argument:

[](#)[](#)

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

The format specifier can also contain sub-specifiers: flags, width,
.precision and modifiers (in that order), which are optional and follow
these specifications:

[](#)[](#)

| flags  | description |
|--------|-------------|
| - | Left-justify within the given field width; Right justification is the default (see width sub-specifier). |
| + | Forces to precede the result with a  plus or minus sign (+ or -) even for positive numbers. By default, only negative numbers are preceded with a - sign. |
| (space) | If no sign is going to be written, a blank space is inserted before the value. |
| \# | Used with o, x or X specifiers the value is preceded with 0, 0x or 0X respectively for values different than zero. Used with a, A, e, E, f, F, g or G  it forces the written output to contain a decimal point even if no more digits follow. By default, if no digits follow, no decimal point is written. |
| 0 | Left-pads the number with zeroes (0) instead of spaces when padding is specified (see width sub-specifier). |

The special sub-specifier contains special related text: delimiters and
date formats, which are optional and follow these specifications:
[[content and documentation adapted from:
MSDN](http://www.google.com/url?q=http%3A%2F%2Fmsdn.microsoft.com%2Fen-us%2Flibrary%2F8kb3ddd4(v%3Dvs.110).aspx%23gSpecifier&sa=D&sntz=1&usg=AFQjCNFQPPRtYkSAMLi43M20GKhVNamG2w)]

[](#)[](#)

| special | description | Examples |
|---------|-------------|----------|
| d | The day of the month, from 1 through 31. | 6/1/2009 1:45:30 PM -\> 1 <br /> 6/15/2009 1:45:30 PM -\> 15 |
