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
| dd | The day of the month, from 01 through 31.   | 6/1/2009 1:45:30 PM -\> 01 <br /> 6/15/2009 1:45:30 PM -\> 15 |
| ddd | The abbreviated name of the day of the week.  | 6/15/2009 1:45:30 PM -\> Mon |
| dddd | The full name of the day of the week. | 6/15/2009 1:45:30 PM -\> Monday |
| f | The tenths of a second in a date and time value | 6/15/2009 13:45:30.617 -\> 6 <br /> 6/15/2009 13:45:30.050 -\> 0 |
| ff | The hundredths of a second in a date and time value. | 6/15/2009 13:45:30.617 -\> 61 <br /> 6/15/2009 13:45:30.005 -\> 00 |
| fff | The milliseconds in a date and time value.   | 6/15/2009 13:45:30.617 -\> 617 <br /> 6/15/2009 13:45:30.0005 -\> 000 |
| F | If non-zero, the tenths of a second in a date and time value. | 6/15/2009 13:45:30.617 -\> 6 <br /> 6/15/2009 13:45:30.050 -\> (empty string) |
| FF | If non-zero, the hundredths of a second in a date and time value. | 6/15/2009 13:45:30.617 -\> (empty string) |
| FFF | If non-zero, the milliseconds in a date and time value. | 6/15/2009 13:45:30.617 -\> 617 <br /> 6/15/2009 13:45:30.0005 -\> (empty string) |
| g/gg | The period or era. A.D. | 6/15/2009 1:45:30 PM -\> A.D.|
| h | The hour, using a 12-hour clock from 1 to 12. | 6/15/2009 1:45:30 AM -\> <br /> 6/15/2009 1:45:30 PM -\> 1 |
| hh | The hour, using a 12-hour clock from 01 to 12. | 6/15/2009 1:45:30 AM -\> 01 <br />  6/15/2009 1:45:30 PM -\> 01 |
| H | The hour, using a 24-hour clock from 0 to 23. | 6/15/2009 1:45:30 AM -\> 1 | 6/15/2009 1:45:30 PM -\> 13 |
| HH | The hour, using a 24-hour clock from 00 to 23. | 6/15/2009 1:45:30 AM -\> 01 <br /> 6/15/2009 1:45:30 PM -\> 13 |
| K | Time zone information. |  |
| m | The minute, from 0 through 59. | 6/15/2009 1:09:30 AM -\> 9 <br /> 6/15/2009 1:09:30 PM -\> 9 |
| mm | The minute, from 00 through 59. | 6/15/2009 1:09:30 AM -\> 09 <br /> 6/15/2009 1:09:30 PM -\> 09 |
| M | The month, from 1 through 12. | 6/15/2009 1:45:30 PM -\> 6 |
| MM | The month, from 01 through 12. | 6/15/2009 1:45:30 PM -\> | 06 |
| MMM | The abbreviated name of the month. | 6/15/2009 1:45:30 PM -\> Jun |
| MMMM | The full name of the month. | 6/15/2009 1:45:30 PM -\> June |
| s | The second, from 0 through 59. | 6/15/2009 1:45:09 PM -\> 9 |
| ss | The second, from 00 through 59. | 6/15/2009 1:45:09 PM -\> 09 |
| t | The first character of the AM/PM designator. | 6/15/2009 1:45:30 PM -\> P |
| tt | The AM/PM designator. | 6/15/2009 1:45:30 PM -\> PM |
| y | The year, from 0 to 99.  | 1/1/0001 12:00:00 AM -\> 1 <br /> 1/1/0900 12:00:00 AM -\> 0 <br /> 1/1/1900 12:00:00 AM -\> 0 <br /> 6/15/2009 1:45:30 PM -\> 9 |
| yy | The year, from 00 to 99. | 1/1/0001 12:00:00 AM -\> 01 <br /> 1/1/0900 12:00:00 AM -\> 00 <br /> 1/1/1900 12:00:00 AM -\> 00 <br /> 6/15/2009 1:45:30 PM -\> 09 |
| yyy | The year, with a minimum | 1/1/0001 12:00:00 AM -\> 001 <br /> 1/1/0900 12:00:00 AM -\> 900 <br /> 1/1/1900 12:00:00 AM -\>  1900 <br /> 6/15/2009 1:45:30 PM -\> 2009 |
| yyyy | The year as a four-digit number. | 1/1/0001 12:00:00 AM -\> 0001 <br /> 1/1/0900 12:00:00 AM -\> 0900 <br /> 1/1/1900 12:00:00 AM -\> 1900 <br /> 6/15/2009 1:45:30 PM -\> 2009 |
| yyyyy | The year as a five-digit number. | 1/1/0001 12:00:00 AM -\> 00001 <br /> 6/15/2009 1:45:30 PM -\> 02009 |
| z | GMT: ISO notation 'Z' |  |
| zz | GMT: UTC notation 'GMT' | GMT-0700 |
| zzz | Hours and minutes offset from UTC. | GMT-0700 (Pacific Daylight Time) |
| (other) | delimeters for dates and arrays |  |

[](#)[](#)

| width | description |
|-------|-------------|
| (number) | Minimum number of characters to be printed. If the value to be printed is shorter than this number, the result is padded with blank spaces. The value is not truncated even if the result is larger. |
| \* | The width is not specified in the format string, but as an additional integer value argument preceding the argument that has to be formatted. |

[](#)[](#)

| .precision | description |
|------------|-------------|
| .number | For integer specifiers (d, i, o, u, x, X): precision specifies the minimum number of digits to be written. If the value to be written is shorter than this number, the result is padded with leading zeros. The value is not truncated even if the result is longer. A precision of 0 means that no character is written for the value 0. 
For a, A, e, E, f and F specifiers: this is the number of digits to be printed after the decimal point (by default, this is 6).
For g and G specifiers: This is the maximum number of significant digits to be printed. For s: this is the maximum number of characters to be printed. By default all characters are printed until the ending null character is encountered. 
If the period is specified without an explicit value for precision, 0 is assumed. |
| .\* | The precision is not specified in the format string, but as an additional integer value argument preceding the argument that has to be formatted. |
