function

\<print.js\>

printf {.c16 .c73}
======

int printf ( String format, ... );

Print formatted data to stdout

Writes the JavaScript string referenced by format to the textarea output
(console). If format includes format specifiers(subsequences beginning
with %), the additional arguments following format are formatted and
inserted in the resulting string replacing their respective specifiers.

[[content and documentation adapted from
cplusplus.com](http://www.google.com/url?q=http%3A%2F%2Fwww.cplusplus.com%2Freference%2Fcstdio%2Fprintf%2F&sa=D&sntz=1&usg=AFQjCNH1zQO27Ukbs5_aqlLdCE4SiXz02Q)]

### Parameters {.c16 .c26}

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

|--------------------------|--------------------------|--------------------------|
| specifier                | Output                   | Example                  |
|--------------------------|--------------------------|--------------------------|
| d or i                   | Signed decimal integer   | 392                      |
|--------------------------|--------------------------|--------------------------|
| u                        | Unsigned decimal integer | 7235                     |
|--------------------------|--------------------------|--------------------------|
| o                        | Unsigned octal           | 610                      |
|--------------------------|--------------------------|--------------------------|
| x                        | Unsigned hexadecimal     | 7fa                      |
|                          | integer                  |                          |
|--------------------------|--------------------------|--------------------------|
| X                        | Unsigned hexadecimal     | 7FA                      |
|                          | integer (uppercase)      |                          |
|--------------------------|--------------------------|--------------------------|
| f                        | Decimal floating point,  | 392.65                   |
|                          | lowercase                |                          |
|--------------------------|--------------------------|--------------------------|
| F                        | Decimal floating point,  | 392.65                   |
|                          | uppercase                |                          |
|--------------------------|--------------------------|--------------------------|
| e                        | Scientific notation      | 3.9265e|2                |
|                          | (mantissa/exponent),     |                          |
|                          | lowercase                |                          |
|--------------------------|--------------------------|--------------------------|
| E                        | Scientific notation      | 3.9265E|2                |
|                          | (mantissa/exponent),     |                          |
|                          | uppercase                |                          |
|--------------------------|--------------------------|--------------------------|
| g                        | Use the shortest         | 392.65                   |
|                          | representation: %e or %f |                          |
|--------------------------|--------------------------|--------------------------|
| G                        | Use the shortest         | 392.65                   |
|                          | representation: %E or %F |                          |
|--------------------------|--------------------------|--------------------------|
| a                        | Hexadecimal floating     | -0xc.90fep-2             |
|                          | point, lowercase         |                          |
|--------------------------|--------------------------|--------------------------|
| A                        | Hexadecimal floating     | -0XC.90FEP-2             |
|                          | point, uppercase         |                          |
|--------------------------|--------------------------|--------------------------|
| \$                       | Currency                 | \$25.00                  |
|--------------------------|--------------------------|--------------------------|
| c                        | Character                | a                        |
|--------------------------|--------------------------|--------------------------|
| C                        | Character capitalized    | A                        |
|--------------------------|--------------------------|--------------------------|
| s                        | String of characters     | sample                   |
|--------------------------|--------------------------|--------------------------|
| S                        | String of characters in  | SAMPLE                   |
|                          | all caps                 |                          |
|--------------------------|--------------------------|--------------------------|
| b                        | String representation of | true                     |
|                          | a Boolean variable       |                          |
|--------------------------|--------------------------|--------------------------|
| B                        | String representation of | TRUE                     |
|                          | a Boolean variable,      |                          |
|                          | uppercase                |                          |
|--------------------------|--------------------------|--------------------------|
| v                        | String representation of | a, b, c                  |
|                          | an array variable        |                          |
|--------------------------|--------------------------|--------------------------|
| V                        | String representation of | A, B, C                  |
|                          | an array variable,       |                          |
|                          | uppercase                |                          |
|--------------------------|--------------------------|--------------------------|
| D                        | String representation of | Aug 15, 1990             |
|                          | a date object            |                          |
|--------------------------|--------------------------|--------------------------|
| W                        | CSS styling (obviously   | style                    |
|                          | not supported when       |                          |
|                          | printing to a textarea)  |                          |
|--------------------------|--------------------------|--------------------------|
| T                        | Datatype for the         | string                   |
|                          | parameter object         |                          |
|--------------------------|--------------------------|--------------------------|
| O                        | Custom formatting        | this is a circle         |
|                          | function for the         |                          |
|                          | parameter object         |                          |
|--------------------------|--------------------------|--------------------------|
| p                        | Pointer address          | b8000000                 |
|--------------------------|--------------------------|--------------------------|
| n                        | Nothing printed.         |                          |
|                          |                          |                          |
|                          | The corresponding        |                          |
|                          | argument must be a       |                          |
|                          | pointer to a signed int. |                          |
|                          |                          |                          |
|                          | The number of characters |                          |
|                          | written so far is stored |                          |
|                          | in the pointed location. |                          |
|--------------------------|--------------------------|--------------------------|
| %                        | A % followed by another  | %                        |
|                          | % character will write a |                          |
|                          | single % to the stream.  |                          |
|--------------------------|--------------------------|--------------------------|

The format specifier can also contain sub-specifiers: flags, width,
.precision and modifiers (in that order), which are optional and follow
these specifications:

[](#)[](#)

|--------------------------------------|--------------------------------------|
| flags                                | description                          |
|--------------------------------------|--------------------------------------|
| -                                    | Left-justify within the given field  |
|                                      | width; Right justification is the    |
|                                      | default (see width sub-specifier).   |
|--------------------------------------|--------------------------------------|
| |                                    | Forces to precede the result with a  |
|                                      | plus or minus sign (| or -) even for |
|                                      | positive numbers. By default, only   |
|                                      | negative numbers are preceded with a |
|                                      | - sign.                              |
|--------------------------------------|--------------------------------------|
| (space)                              | If no sign is going to be written, a |
|                                      | blank space is inserted before the   |
|                                      | value.                               |
|--------------------------------------|--------------------------------------|
| \#                                   | Used with o, x or X specifiers the   |
|                                      | value is preceded with 0, 0x or 0X   |
|                                      | respectively for values different    |
|                                      | than zero.                           |
|                                      |                                      |
|                                      | Used with a, A, e, E, f, F, g or G   |
|                                      | it forces the written output to      |
|                                      | contain a decimal point even if no   |
|                                      | more digits follow. By default, if   |
|                                      | no digits follow, no decimal point   |
|                                      | is written.                          |
|--------------------------------------|--------------------------------------|
| 0                                    | Left-pads the number with zeroes (0) |
|                                      | instead of spaces when padding is    |
|                                      | specified (see width sub-specifier). |
|--------------------------------------|--------------------------------------|

The special sub-specifier contains special related text: delimiters and
date formats, which are optional and follow these specifications:
[[content and documentation adapted from:
MSDN](http://www.google.com/url?q=http%3A%2F%2Fmsdn.microsoft.com%2Fen-us%2Flibrary%2F8kb3ddd4(v%3Dvs.110).aspx%23gSpecifier&sa=D&sntz=1&usg=AFQjCNFQPPRtYkSAMLi43M20GKhVNamG2w)]

[](#)[](#)

|--------------------------|--------------------------|--------------------------|
| special                  | description              | Examples                 |
|--------------------------|--------------------------|--------------------------|
| d                        | The day of the month,    | 6/1/2009 1:45:30 PM -\>  |
|                          | from 1 through 31.       | 1                        |
|                          |                          |                          |
|                          |                          | 6/15/2009 1:45:30 PM -\> |
|                          |                          | 15                       |
|--------------------------|--------------------------|--------------------------|
| dd                       | The day of the month,    | 6/1/2009 1:45:30 PM -\>  |
|                          | from 01 through 31.      | 01                       |
|                          |                          |                          |
|                          |                          | 6/15/2009 1:45:30 PM -\> |
|                          |                          | 15                       |
|--------------------------|--------------------------|--------------------------|
| ddd                      | The abbreviated name of  | 6/15/2009 1:45:30 PM -\> |
|                          | the day of the week.     | Mon                      |
|--------------------------|--------------------------|--------------------------|
| dddd                     | The full name of the day | 6/15/2009 1:45:30 PM -\> |
|                          | of the week.             | Monday                   |
|--------------------------|--------------------------|--------------------------|
| f                        | The tenths of a second   | 6/15/2009 13:45:30.617   |
|                          | in a date and time       | -\> 6                    |
|                          | value.                   |                          |
|                          |                          | 6/15/2009 13:45:30.050   |
|                          |                          | -\> 0                    |
|--------------------------|--------------------------|--------------------------|
| ff                       | The hundredths of a      | 6/15/2009 13:45:30.617   |
|                          | second in a date and     | -\> 61                   |
|                          | time value.              |                          |
|                          |                          | 6/15/2009 13:45:30.005   |
|                          |                          | -\> 00                   |
|--------------------------|--------------------------|--------------------------|
| fff                      | The milliseconds in a    | 6/15/2009 13:45:30.617   |
|                          | date and time value.     | -\> 617                  |
|                          |                          |                          |
|                          |                          | 6/15/2009 13:45:30.0005  |
|                          |                          | -\> 000                  |
|--------------------------|--------------------------|--------------------------|
| F                        | If non-zero, the tenths  | 6/15/2009 13:45:30.617   |
|                          | of a second in a date    | -\> 6                    |
|                          | and time value.          |                          |
|                          |                          | 6/15/2009 13:45:30.050   |
|                          |                          | -\> (empty string)       |
|--------------------------|--------------------------|--------------------------|
| FF                       | If non-zero, the         | 6/15/2009 13:45:30.617   |
|                          | hundredths of a second   | -\> 61                   |
|                          | in a date and time       |                          |
|                          | value.                   | 6/15/2009 13:45:30.005   |
|                          |                          | -\> (empty string)       |
|--------------------------|--------------------------|--------------------------|
| FFF                      | If non-zero, the         | 6/15/2009 13:45:30.617   |
|                          | milliseconds in a date   | -\> 617                  |
|                          | and time value.          |                          |
|                          |                          | 6/15/2009 13:45:30.0005  |
|                          |                          | -\> (empty string)       |
|--------------------------|--------------------------|--------------------------|
| g/gg                     | The period or era.       | 6/15/2009 1:45:30 PM -\> |
|                          |                          | A.D.                     |
|--------------------------|--------------------------|--------------------------|
| h                        | The hour, using a        | 6/15/2009 1:45:30 AM -\> |
|                          | 12-hour clock from 1 to  | 1                        |
|                          | 12.                      |                          |
|                          |                          | 6/15/2009 1:45:30 PM -\> |
|                          |                          | 1                        |
|--------------------------|--------------------------|--------------------------|
| hh                       | The hour, using a        | 6/15/2009 1:45:30 AM -\> |
|                          | 12-hour clock from 01 to | 01                       |
|                          | 12.                      |                          |
|                          |                          | 6/15/2009 1:45:30 PM -\> |
|                          |                          | 01                       |
|--------------------------|--------------------------|--------------------------|
| H                        | The hour, using a        | 6/15/2009 1:45:30 AM -\> |
|                          | 24-hour clock from 0 to  | 1                        |
|                          | 23.                      |                          |
|                          |                          | 6/15/2009 1:45:30 PM -\> |
|                          |                          | 13                       |
|--------------------------|--------------------------|--------------------------|
| HH                       | The hour, using a        | 6/15/2009 1:45:30 AM -\> |
|                          | 24-hour clock from 00 to | 01                       |
|                          | 23.                      |                          |
|                          |                          | 6/15/2009 1:45:30 PM -\> |
|                          |                          | 13                       |
|--------------------------|--------------------------|--------------------------|
| K                        | Time zone information.   |                          |
|--------------------------|--------------------------|--------------------------|
| m                        | The minute, from 0       | 6/15/2009 1:09:30 AM -\> |
|                          | through 59.              | 9                        |
|                          |                          |                          |
|                          |                          | 6/15/2009 1:09:30 PM -\> |
|                          |                          | 9                        |
|--------------------------|--------------------------|--------------------------|
| mm                       | The minute, from 00      | 6/15/2009 1:09:30 AM -\> |
|                          | through 59.              | 09                       |
|                          |                          |                          |
|                          |                          | 6/15/2009 1:09:30 PM -\> |
|                          |                          | 09                       |
|--------------------------|--------------------------|--------------------------|
| M                        | The month, from 1        | 6/15/2009 1:45:30 PM -\> |
|                          | through 12.              | 6                        |
|--------------------------|--------------------------|--------------------------|
| MM                       | The month, from 01       | 6/15/2009 1:45:30 PM -\> |
|                          | through 12.              | 06                       |
|--------------------------|--------------------------|--------------------------|
| MMM                      | The abbreviated name of  | 6/15/2009 1:45:30 PM -\> |
|                          | the month.               | Jun                      |
|--------------------------|--------------------------|--------------------------|
| MMMM                     | The full name of the     | 6/15/2009 1:45:30 PM -\> |
|                          | month.                   | June                     |
|--------------------------|--------------------------|--------------------------|
| s                        | The second, from 0       | 6/15/2009 1:45:09 PM -\> |
|                          | through 59.              | 9                        |
|--------------------------|--------------------------|--------------------------|
| ss                       | The second, from 00      | 6/15/2009 1:45:09 PM -\> |
|                          | through 59.              | 09                       |
|--------------------------|--------------------------|--------------------------|
| t                        | The first character of   | 6/15/2009 1:45:30 PM -\> |
|                          | the AM/PM designator.    | P                        |
|--------------------------|--------------------------|--------------------------|
| tt                       | The AM/PM designator.    | 6/15/2009 1:45:30 PM -\> |
|                          |                          | PM                       |
|--------------------------|--------------------------|--------------------------|
| y                        | The year, from 0 to 99.  | 1/1/0001 12:00:00 AM -\> |
|                          |                          | 1                        |
|                          |                          |                          |
|                          |                          | 1/1/0900 12:00:00 AM -\> |
|                          |                          | 0                        |
|                          |                          |                          |
|                          |                          | 1/1/1900 12:00:00 AM -\> |
|                          |                          | 0                        |
|                          |                          |                          |
|                          |                          | 6/15/2009 1:45:30 PM -\> |
|                          |                          | 9                        |
|--------------------------|--------------------------|--------------------------|
| yy                       | The year, from 00 to 99. | 1/1/0001 12:00:00 AM -\> |
|                          |                          | 01                       |
|                          |                          |                          |
|                          |                          | 1/1/0900 12:00:00 AM -\> |
|                          |                          | 00                       |
|                          |                          |                          |
|                          |                          | 1/1/1900 12:00:00 AM -\> |
|                          |                          | 00                       |
|                          |                          |                          |
|                          |                          | 6/15/2009 1:45:30 PM -\> |
|                          |                          | 09                       |
|--------------------------|--------------------------|--------------------------|
| yyy                      | The year, with a minimum | 1/1/0001 12:00:00 AM -\> |
|                          | of three digits.         | 001                      |
|                          |                          |                          |
|                          |                          | 1/1/0900 12:00:00 AM -\> |
|                          |                          | 900                      |
|                          |                          |                          |
|                          |                          | 1/1/1900 12:00:00 AM -\> |
|                          |                          | 1900                     |
|                          |                          |                          |
|                          |                          | 6/15/2009 1:45:30 PM -\> |
|                          |                          | 2009                     |
|--------------------------|--------------------------|--------------------------|
| yyyy                     | The year as a four-digit | 1/1/0001 12:00:00 AM -\> |
|                          | number.                  | 0001                     |
|                          |                          |                          |
|                          |                          | 1/1/0900 12:00:00 AM -\> |
|                          |                          | 0900                     |
|                          |                          |                          |
|                          |                          | 1/1/1900 12:00:00 AM -\> |
|                          |                          | 1900                     |
|                          |                          |                          |
|                          |                          | 6/15/2009 1:45:30 PM -\> |
|                          |                          | 2009                     |
|--------------------------|--------------------------|--------------------------|
| yyyyy                    | The year as a five-digit | 1/1/0001 12:00:00 AM -\> |
|                          | number.                  | 00001                    |
|                          |                          |                          |
|                          |                          | 6/15/2009 1:45:30 PM -\> |
|                          |                          | 02009                    |
|--------------------------|--------------------------|--------------------------|
| z                        | GMT: ISO notation 'Z'    |                          |
|--------------------------|--------------------------|--------------------------|
| zz                       | GMT: UTC notation 'GMT'  | GMT-0700                 |
|--------------------------|--------------------------|--------------------------|
| zzz                      | Hours and minutes offset | GMT-0700 (Pacific        |
|                          | from UTC.                | Daylight Time)           |
|--------------------------|--------------------------|--------------------------|
| (other)                  | delimeters for dates and |                          |
|                          | arrays                   |                          |
|--------------------------|--------------------------|--------------------------|

[](#)[](#)

|--------------------------------------|--------------------------------------|
| width                                | description                          |
|--------------------------------------|--------------------------------------|
| (number)                             | Minimum number of characters to be   |
|                                      | printed. If the value to be printed  |
|                                      | is shorter than this number, the     |
|                                      | result is padded with blank spaces.  |
|                                      | The value is not truncated even if   |
|                                      | the result is larger.                |
|--------------------------------------|--------------------------------------|
| \*                                   | The width is not specified in the    |
|                                      | format string, but as an additional  |
|                                      | integer value argument preceding the |
|                                      | argument that has to be formatted.   |
|--------------------------------------|--------------------------------------|

[](#)[](#)

|--------------------------------------|--------------------------------------|
| .precision                           | description                          |
|--------------------------------------|--------------------------------------|
| .number                              | For integer specifiers (d, i, o, u,  |
|                                      | x, X): precision specifies the       |
|                                      | minimum number of digits to be       |
|                                      | written. If the value to be written  |
|                                      | is shorter than this number, the     |
|                                      | result is padded with leading zeros. |
|                                      | The value is not truncated even if   |
|                                      | the result is longer. A precision of |
|                                      | 0 means that no character is written |
|                                      | for the value 0.                     |
|                                      |                                      |
|                                      | For a, A, e, E, f and F specifiers:  |
|                                      | this is the number of digits to be   |
|                                      | printed after the decimal point (by  |
|                                      | default, this is 6).                 |
|                                      |                                      |
|                                      | For g and G specifiers: This is the  |
|                                      | maximum number of significant digits |
|                                      | to be printed.                       |
|                                      |                                      |
|                                      | For s: this is the maximum number of |
|                                      | characters to be printed. By default |
|                                      | all characters are printed until the |
|                                      | ending null character is             |
|                                      | encountered.                         |
|                                      |                                      |
|                                      | If the period is specified without   |
|                                      | an explicit value for precision, 0   |
|                                      | is assumed.                          |
|--------------------------------------|--------------------------------------|
| .\*                                  | The precision is not specified in    |
|                                      | the format string, but as an         |
|                                      | additional integer value argument    |
|                                      | preceding the argument that has to   |
|                                      | be formatted.                        |
|--------------------------------------|--------------------------------------|

The length sub-specifier modifies the length of the data type. This is a
chart showing the types used to interpret the corresponding arguments
with and without length specifier (if a different type is used, the
proper type promotion or conversion is performed, if allowed):

[](#)[](#)

|--------------------------------------|--------------------------------------|
|                                      | specifiers                           |
|--------------------------------------|--------------------------------------|

[](#)[](#)

|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|
| lengt | d i   | u o x | f F e | c C   | s S   | D     | O     | W     | T     | b B   | v V   | n     |
| h     |       | X     | E g G |       |       |       |       |       |       |       |       |       |
|       |       |       | a A   |       |       |       |       |       |       |       |       |       |
|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|
| (none | int   | un-   | numbe | 2     | strin | Date  | Custo | text  | Objec | Bool- | delim | [numb |
| )     |       | signe | r     | byte  | g     | :     | m     | styli | t     | ean   | ited  | er]   |
|       |       | d     | doubl | num/  |       | toStr | funct | ng    | data  |       | list  |       |
|       |       | int   | e     | strin |       | ing() | ion   |       | type  |       | of    |       |
|       |       |       |       | g     |       |       | for a |       |       |       | array |       |
|       |       |       |       | of    |       |       | user  |       |       |       | eleme |       |
|       |       |       |       | lengt |       |       | provi |       |       |       | nts   |       |
|       |       |       |       | h:1   |       |       | ded   |       |       |       |       |       |
|       |       |       |       |       |       |       | objec |       |       |       |       |       |
|       |       |       |       |       |       |       | t     |       |       |       |       |       |
|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|
| hh    | signe | un-   |       |       |       | Date  |       |       |       | false |       | [1    |
|       | d     | signe |       |       |       | :     |       |       |       | -     |       | byte  |
|       | char  | d     |       |       |       | toDat |       |       |       | null  |       | num]  |
|       |       | char  |       |       |       | eStri |       |       |       |       |       |       |
|       |       |       |       |       |       | ng()  |       |       |       |       |       |       |
|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|
| h     | short | un-   |       |       |       | Date  |       |       |       | false |       | [2    |
|       | int   | signe |       |       |       | :     |       |       |       | -     |       | byte  |
|       |       | d     |       |       |       | toTim |       |       |       | undef |       | num]  |
|       |       | short |       |       |       | eStri |       |       |       | ined  |       |       |
|       |       | int   |       |       |       | ng()  |       |       |       |       |       |       |
|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|
| l     | long  | un-   |       | 2     | strin | Date  |       |       |       | bit   |       | [8    |
|       | int   | signe |       | byte  | g     | :     |       |       |       |       |       | byte  |
|       |       | d     |       | num/  |       | toLoc |       |       |       |       |       | num]  |
|       |       | long  |       | strin |       | aleTi |       |       |       |       |       |       |
|       |       | int   |       | g     |       | meStr |       |       |       |       |       |       |
|       |       |       |       | of    |       | ing() |       |       |       |       |       |       |
|       |       |       |       | lengt |       |       |       |       |       |       |       |       |
|       |       |       |       | h:1   |       |       |       |       |       |       |       |       |
|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|
| ll    | long  | un-   |       |       |       | Date  |       |       |       | signe |       | [10   |
|       | long  | signe |       |       |       | :     |       |       |       | d     |       | byte  |
|       | int   | d     |       |       |       | toLoc |       |       |       | bit   |       | num]  |
|       |       | long  |       |       |       | aleDa |       |       |       |       |       |       |
|       |       | long  |       |       |       | teStr |       |       |       |       |       |       |
|       |       | int   |       |       |       | ing() |       |       |       |       |       |       |
|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|
| j     | [intm | [uint |       |       |       | Date  |       |       |       | false |       | [intm |
|       | ax\_t | max\_ |       |       |       | :     |       |       |       | -     |       | ax\_t |
|       | ](htt | t](ht |       |       |       | toJSO |       |       |       | ""    |       | ](htt |
|       | p://w | tp:// |       |       |       | N()   |       |       |       |       |       | p://w |
|       | ww.go | www.g |       |       |       |       |       |       |       |       |       | ww.go |
|       | ogle. | oogle |       |       |       |       |       |       |       |       |       | ogle. |
|       | com/u | .com/ |       |       |       |       |       |       |       |       |       | com/u |
|       | rl?q= | url?q |       |       |       |       |       |       |       |       |       | rl?q= |
|       | http% | =http |       |       |       |       |       |       |       |       |       | http% |
|       | 3A%2F | %3A%2 |       |       |       |       |       |       |       |       |       | 3A%2F |
|       | %2Fww | F%2Fw |       |       |       |       |       |       |       |       |       | %2Fww |
|       | w.cpl | ww.cp |       |       |       |       |       |       |       |       |       | w.cpl |
|       | usplu | luspl |       |       |       |       |       |       |       |       |       | usplu |
|       | s.com | us.co |       |       |       |       |       |       |       |       |       | s.com |
|       | %2Fin | m%2Fu |       |       |       |       |       |       |       |       |       | %2Fin |
|       | tmax_ | intma |       |       |       |       |       |       |       |       |       | tmax_ |
|       | t&sa= | x_t&s |       |       |       |       |       |       |       |       |       | t&sa= |
|       | D&snt | a=D&s |       |       |       |       |       |       |       |       |       | D&snt |
|       | z=1&u | ntz=1 |       |       |       |       |       |       |       |       |       | z=1&u |
|       | sg=AF | &usg= |       |       |       |       |       |       |       |       |       | sg=AF |
|       | QjCNE | AFQjC |       |       |       |       |       |       |       |       |       | QjCNE |
|       | JyznV | NFPhT |       |       |       |       |       |       |       |       |       | JyznV |
|       | p_CqX | 2DqJm |       |       |       |       |       |       |       |       |       | p_CqX |
|       | QFvlB | dpwFw |       |       |       |       |       |       |       |       |       | QFvlB |
|       | kusGF | mTIwO |       |       |       |       |       |       |       |       |       | kusGF |
|       | 4CP9e | BxiAp |       |       |       |       |       |       |       |       |       | 4CP9e |
|       | 1A)   | DSQw) |       |       |       |       |       |       |       |       |       | 1A)\* |
|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|
| z     | [size | [size |       |       |       | Date  |       |       |       | false |       | [size |
|       | \_t]( | \_t]( |       |       |       | :     |       |       |       | -     |       | \_t]( |
|       | http: | http: |       |       |       | toISO |       |       |       | NaN   |       | http: |
|       | //www | //www |       |       |       | Strin |       |       |       |       |       | //www |
|       | .goog | .goog |       |       |       | g()   |       |       |       |       |       | .goog |
|       | le.co | le.co |       |       |       |       |       |       |       |       |       | le.co |
|       | m/url | m/url |       |       |       |       |       |       |       |       |       | m/url |
|       | ?q=ht | ?q=ht |       |       |       |       |       |       |       |       |       | ?q=ht |
|       | tp%3A | tp%3A |       |       |       |       |       |       |       |       |       | tp%3A |
|       | %2F%2 | %2F%2 |       |       |       |       |       |       |       |       |       | %2F%2 |
|       | Fwww. | Fwww. |       |       |       |       |       |       |       |       |       | Fwww. |
|       | cplus | cplus |       |       |       |       |       |       |       |       |       | cplus |
|       | plus. | plus. |       |       |       |       |       |       |       |       |       | plus. |
|       | com%2 | com%2 |       |       |       |       |       |       |       |       |       | com%2 |
|       | Fsize | Fsize |       |       |       |       |       |       |       |       |       | Fsize |
|       | _t&sa | _t&sa |       |       |       |       |       |       |       |       |       | _t&sa |
|       | =D&sn | =D&sn |       |       |       |       |       |       |       |       |       | =D&sn |
|       | tz=1& | tz=1& |       |       |       |       |       |       |       |       |       | tz=1& |
|       | usg=A | usg=A |       |       |       |       |       |       |       |       |       | usg=A |
|       | FQjCN | FQjCN |       |       |       |       |       |       |       |       |       | FQjCN |
|       | EH5zV | EH5zV |       |       |       |       |       |       |       |       |       | EH5zV |
|       | ztqm9 | ztqm9 |       |       |       |       |       |       |       |       |       | ztqm9 |
|       | 596oZ | 596oZ |       |       |       |       |       |       |       |       |       | 596oZ |
|       | 4HtGq | 4HtGq |       |       |       |       |       |       |       |       |       | 4HtGq |
|       | A3FgX | A3FgX |       |       |       |       |       |       |       |       |       | A3FgX |
|       | xyA)  | xyA)  |       |       |       |       |       |       |       |       |       | xyA)\ |
|       |       |       |       |       |       |       |       |       |       |       |       | *     |
|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|
| t     | [ptrd | [ptrd |       |       | trim  | Date  |       |       |       |       |       | [ptrd |
|       | iff\_ | iff\_ |       |       |       | :     |       |       |       |       |       | iff\_ |
|       | t](ht | t](ht |       |       | strin | toUTC |       |       |       |       |       | t](ht |
|       | tp:// | tp:// |       |       | g     | Strin |       |       |       |       |       | tp:// |
|       | www.g | www.g |       |       |       | g()   |       |       |       |       |       | www.g |
|       | oogle | oogle |       |       |       |       |       |       |       |       |       | oogle |
|       | .com/ | .com/ |       |       |       |       |       |       |       |       |       | .com/ |
|       | url?q | url?q |       |       |       |       |       |       |       |       |       | url?q |
|       | =http | =http |       |       |       |       |       |       |       |       |       | =http |
|       | %3A%2 | %3A%2 |       |       |       |       |       |       |       |       |       | %3A%2 |
|       | F%2Fw | F%2Fw |       |       |       |       |       |       |       |       |       | F%2Fw |
|       | ww.cp | ww.cp |       |       |       |       |       |       |       |       |       | ww.cp |
|       | luspl | luspl |       |       |       |       |       |       |       |       |       | luspl |
|       | us.co | us.co |       |       |       |       |       |       |       |       |       | us.co |
|       | m%2Fp | m%2Fp |       |       |       |       |       |       |       |       |       | m%2Fp |
|       | trdif | trdif |       |       |       |       |       |       |       |       |       | trdif |
|       | f_t&s | f_t&s |       |       |       |       |       |       |       |       |       | f_t&s |
|       | a=D&s | a=D&s |       |       |       |       |       |       |       |       |       | a=D&s |
|       | ntz=1 | ntz=1 |       |       |       |       |       |       |       |       |       | ntz=1 |
|       | &usg= | &usg= |       |       |       |       |       |       |       |       |       | &usg= |
|       | AFQjC | AFQjC |       |       |       |       |       |       |       |       |       | AFQjC |
|       | NGLx7 | NGLx7 |       |       |       |       |       |       |       |       |       | NGLx7 |
|       | wo6LY | wo6LY |       |       |       |       |       |       |       |       |       | wo6LY |
|       | qoUqw | qoUqw |       |       |       |       |       |       |       |       |       | qoUqw |
|       | m9vMV | m9vMV |       |       |       |       |       |       |       |       |       | m9vMV |
|       | 45sxv | 45sxv |       |       |       |       |       |       |       |       |       | 45sxv |
|       | YvdQ) | YvdQ) |       |       |       |       |       |       |       |       |       | YvdQ) |
|       |       |       |       |       |       |       |       |       |       |       |       | \*    |
|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|
| L     |       |       | long  |       |       | Date  |       |       |       |       |       |       |
|       |       |       | doubl |       |       | :     |       |       |       |       |       |       |
|       |       |       | e     |       |       | toLoc |       |       |       |       |       |       |
|       |       |       |       |       |       | aleSt |       |       |       |       |       |       |
|       |       |       |       |       |       | ring( |       |       |       |       |       |       |
|       |       |       |       |       |       | )     |       |       |       |       |       |       |
|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|

Note that the c specifier takes an 2 byte int (Number) or char (String
length 1) (or
[wint\_t](http://www.google.com/url?q=http%3A%2F%2Fwww.cplusplus.com%2Fwint_t&sa=D&sntz=1&usg=AFQjCNHoksFCND4S1t0XOCy9nc0ojGSQNQ))
as argument, but performs the proper conversion to a charvalue before
formatting it for output.

Note: Red cells indicate specifiers and sub-specifiers which cannot be
implemented due to JavaScript's restrictions. Yellow cells indicate
specifiers and sub-specifiers which have not yet been implemented.

... (additional arguments)

Depending on the format string, the function may expect a sequence of
additional arguments, each containing a value to be used to replace a
format specifier in the format string (or an array to hold an int for
n).

There should be at least as many of these arguments as the number of
values specified in the format specifiers. Additional arguments are
ignored by the function.

### Return Value {.c16 .c26}

On success, the total number of characters written is returned.

If a writing error occurs, the error
indicator ([ferror](http://www.google.com/url?q=http%3A%2F%2Fwww.cplusplus.com%2Fferror&sa=D&sntz=1&usg=AFQjCNFa2axKmAzkbjk6EmTJmuHCE2CewA))
is set and a negative number is returned.

If a multibyte character encoding error occurs while writing wide
characters,
[errno](http://www.google.com/url?q=http%3A%2F%2Fwww.cplusplus.com%2Ferrno&sa=D&sntz=1&usg=AFQjCNH0n_kY1iSbziMQB_4Pj4n6KNKceQ) is
set to EILSEQ and a negative number is returned.

### Example {.c16 .c26}

[[try it
yourself](https://googledrive.com/host/0B-5Y1OoryQYuWXJKLVcwZWh1eEk/test.htm)]

[](#)[](#)

|--------------------------------------|--------------------------------------|
| 1                                    | /\* printf example \*/\              |
|                                      | /\* \<script type="text/javascript"  |
| 2                                    | src="https://googledrive.com/host/0B |
|                                      | -5Y1OoryQYuWXJKLVcwZWh1eEk/print.js" |
| 3                                    | \>\</script\>                        |
|                                      | \*/                                  |
| 4                                    |                                      |
|                                      | \                                    |
| 5                                    | function start\_test()\              |
|                                      | {\                                   |
| 6                                    |    printf ("Characters: %c %c \\n",  |
|                                      | 'a', 65);\                           |
| 7                                    |    printf ("Decimals: %d %ld\\n",    |
|                                      | 1977, 650000);\                      |
| 8                                    |    printf ("Preceding with blanks:   |
|                                      | %10d \\n", 1977);\                   |
| 9                                    |    printf ("Preceding with zeros:    |
|                                      | %010d \\n", 1977);\                  |
| 10                                   |    printf ("Some different radices:  |
|                                      | %d %x %o %\#x %\#o \\n", 100, 100,   |
| 11                                   | 100, 100, 100);\                     |
|                                      |    printf ("floats: %4.2f %|.0e %E   |
| 12                                   | \\n", 3.1416, 3.1416, 3.1416);\      |
|                                      |    printf ("Width trick: %\*d \\n",  |
| 13                                   | 5, 10);\                             |
|                                      |    printf ("%s \\n", "A string");    |
| 14                                   |                                      |
|                                      |    printf ("arrays: %[-\>]v\\n",     |
| 15                                   | [3.1416, 3.1416, 3.1416]);           |
|                                      |                                      |
| 16                                   |    printf ("Boolean values: %b \\n", |
|                                      | true);                               |
| 17                                   |                                      |
|                                      |    printf ("Date values (implied     |
| 18                                   | toString): \\n%D \\n\\n", new        |
|                                      | Date());                             |
| 19                                   |                                      |
|                                      |    printf ("Date values (from format |
| 20                                   | string): \\n%[ddd MMM dd yyyy        |
|                                      | HH:mm:ss zzz]D \\n\\n", new Date()); |
| 21                                   |                                      |
|                                      |    printf ("Date values (from        |
| 22                                   | toString): \\n%s \\n\\n", new        |
|                                      | Date().toString());                  |
| 23                                   |                                      |
|                                      |    printf ("Date values (UTC         |
| 24                                   | modifier): \\n%tD \\n", new Date()); |
|                                      |                                      |
| 25                                   |    printf ("Date values: \\n%s       |
|                                      | \\n\\n", new Date().toUTCString());  |
| 26                                   |                                      |
|                                      |    printf ("Date values (from        |
| 27                                   | toString): \\n%s \\n\\n", 5);        |
|                                      |                                      |
| 28                                   |    Object.prototype.objectPrintf =   |
|                                      | function () {return "text"};\        |
| 29                                   |                                      |
|                                      |    printf ("Object Defined values:   |
| 30                                   | %O", new String());                  |
|                                      |                                      |
| 31                                   |                                      |
|                                      |                                      |
|                                      |    return 0;\                        |
|                                      | }                                    |
|--------------------------------------|--------------------------------------|

Output:

[](#)[](#)

|--------------------------------------------------------------------------|
| \                                                                        |
| Characters: a A                                                          |
|                                                                          |
| Decimals: 1977 650000                                                    |
|                                                                          |
| Preceding with blanks:       1977                                        |
|                                                                          |
| Preceding with zeros: 0000001977                                         |
|                                                                          |
| Some different radices: 100 64 144 0x64 0144                             |
|                                                                          |
| floats: 3.141600 |3e|000 3.141600E|000                                   |
|                                                                          |
| Width trick:    10                                                       |
|                                                                          |
| A string                                                                 |
|                                                                          |
| arrays: 3.1416-\>3.1416-\>3.1416                                         |
|                                                                          |
| Boolean values: false                                                    |
|                                                                          |
| Date values (implied toString):                                          |
|                                                                          |
| Tue Apr 15 2014 14:43:26 GMT-0700 (Pacific Daylight Time)                |
|                                                                          |
| Date values (from format string):                                        |
|                                                                          |
| Tue Apr 15 2014 14:43:26 GMT-0700 (Pacific Daylight Time)                |
|                                                                          |
| Date values (from toString):                                             |
|                                                                          |
| Tue Apr 15 2014 14:43:26 GMT-0700 (Pacific Daylight Time)                |
|                                                                          |
| Date values (UTC modifier):                                              |
|                                                                          |
| Tue, 15 Apr 2014 21:43:26 GMT                                            |
|                                                                          |
| Date values:                                                             |
|                                                                          |
| Tue, 15 Apr 2014 21:43:26 GMT                                            |
|                                                                          |
| Currency values: \$5.00                                                  |
|                                                                          |
| Object Defined values: text                                              |
|--------------------------------------------------------------------------|


