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

<table>
  <thead>
    <tr>
      <th>specifier</th>
      <th>Output</th>
      <th>Example</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>d or i</td>
      <td>Signed decimal integer</td>
      <td>392</td>
    </tr>
    <tr>
      <td>u</td>
      <td>Unsigned decimal integer</td>
      <td>7235</td>
    </tr>
    <tr>
      <td>o</td>
      <td>Unsigned octal</td>
      <td>610</td>
    </tr>
    <tr>
      <td>x</td>
      <td>Unsigned hexadecimal integer</td>
      <td>7fa</td>
    </tr>
    <tr>
      <td>X</td>
      <td>Unsigned hexadecimal integer (uppercase)</td>
      <td>7FA</td>
    </tr>
    <tr>
      <td>f</td>
      <td>Decimal floating point, lowercase</td>
      <td>392.65</td>
    </tr>
    <tr>
      <td>F</td>
      <td>Decimal floating point, uppercase</td>
      <td>392.65</td>
    </tr>
    <tr>
      <td>e</td>
      <td>Scientific notation (mantissa/exponent), lowercase</td>
      <td>3.9265e+2</td>
    </tr>
    <tr>
      <td>E</td>
      <td>Scientific notation (mantissa/exponent), uppercase</td>
      <td>3.9265E+2</td>
    </tr>
    <tr>
      <td>g</td>
      <td>Use the shortest representation: %e or %f</td>
      <td>392.65</td>
    </tr>
    <tr>
      <td>G</td>
      <td>Use the shortest representation: %E or %F</td>
      <td>392.65</td>
    </tr>
    <tr>
      <td>a</td>
      <td>Hexadecimal floating point, lowercase</td>
      <td>-0xc.90fep-2</td>
    </tr>
    <tr>
      <td>A</td>
      <td>Hexadecimal floating point, uppercase</td>
      <td>-0XC.90FEP-2</td>
    </tr>
    <tr>
      <td>\$</td>
      <td>Currency</td>
      <td>\$25.00</td>
    </tr>
    <tr>
      <td>c</td>
      <td>Character</td>
      <td>a</td>
    </tr>
    <tr>
      <td>C</td>
      <td>Character capitalized</td>
      <td>A</td>
    </tr>
    <tr>
      <td>s</td>
      <td>String of characters</td>
      <td>sample</td>
    </tr>
    <tr>
      <td>S</td>
      <td>String of characters in all caps</td>
      <td>SAMPLE</td>
    </tr>
    <tr>
      <td>b</td>
      <td>String representation of a Boolean variable</td>
      <td>true</td>
    </tr>
    <tr>
      <td>B</td>
      <td>String representation of a Boolean variable, uppercase</td>
      <td>TRUE</td>
    </tr>
    <tr>
      <td>v</td>
      <td>String representation of an array variable</td>
      <td>a,b,c</td>
    </tr>
    <tr>
      <td>V</td>
      <td>String representation of an array variable, uppercase</td>
      <td>A,B,C</td>
    </tr>
    <tr>
      <td>D</td>
      <td>String representation of a date object</td>
      <td>Aug 15, 1990</td>
    </tr>
    <tr>
      <td>W</td>
      <td>CSS styling (obviously not supported when printing to a textarea)</td>
      <td>style</td>
    </tr>
    <tr>
      <td>T</td>
      <td>Datatype for the parameter object</td>
      <td>String</td>
    </tr>
    <tr>
      <td>O</td>
      <td>Custom formatting function for the parameter object</td>
      <td>this is a circle</td>
    </tr>
    <tr>
      <td>p</td>
      <td>Hash Code</td>
      <td>#8000000</td>
    </tr>
    <tr>
      <td>n</td>
      <td colspan="2">
        Nothing printed. The corresponding argument must be a pointer to a signed int. 
        The number of characters written so far is stored  in the pointed location.
      </td>
      <td></td>
    </tr>
    <tr>
      <td>%</td>
      <td>A % followed by another % character will write a single % to the stream.</td>
      <td>%</td>
    </tr>
  </tbody>
</table>
<p>
The format specifier can also contain sub-specifiers: flags, width,
.precision and modifiers (in that order), which are optional and follow
these specifications:
</p>

<table>
  <thead>
    <tr>
      <th>flags</th>
      <th>description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>-</td>
      <td>
        Left-justify within the given field width; Right justification is the 
        default (see width sub-specifier).
      </td>
    </tr>
    <tr>
      <td>+</td>
      <td>
        Forces to precede the result with a  plus or minus sign (+ or -) even 
        for positive numbers. By default, only negative numbers are preceded 
        with a - sign.
      </td>
    </tr>
    <tr>
      <td>(space)</td>
      <td>
        Forces to precede the result with a  plus or minus sign (+ or -) even 
        for positive numbers. By default, only negative numbers are preceded 
        with a - sign.</td>
    </tr>
    <tr>
      <td>\#</td>
      <td> 
        Used with o, x or X specifiers the value is preceded with 0, 0x or
        0X respectively for values different than zero. Used with a, A, e, E, 
        f, F, g or G  it forces the written output to contain a decimal point 
        even if no more digits follow. By default, if no digits follow, no 
        decimal point is written.
      </td>
    </tr>
    <tr>
      <td>0</td>
      <td></td>
    </tr>
  </tbody>
</table>
