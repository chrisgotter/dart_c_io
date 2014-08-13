<div>
  <i style="float:left; width:40%;">function</i>
  <div style="float:right; width:40%;">&lt;<code>dart_c_io</code>&gt;</div>
</div>


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

<code>
  %[flags][ [special] ][width][.precision][length]specifier
</code>

Where the specifier character at the end is the most significant
component, since it defines the type and the interpretation of its
corresponding argument:

<output>
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
      <td><code>d</code> or <code>i</code></td>
      <td>Signed decimal integer</td>
      <td><output>392</output></td>
    </tr>
    <tr>
      <td><code>u</code></td>
      <td>Unsigned decimal integer</td>
      <td><output>7235</output></td>
    </tr>
    <tr>
      <td><code>o</code></td>
      <td>Unsigned octal</td>
      <td><output>610</output></td>
    </tr>
    <tr>
      <td><code>x</code></td>
      <td>Unsigned hexadecimal integer</td>
      <td><output>7fa</output></td>
    </tr>
    <tr>
      <td><code>X</code></td>
      <td>Unsigned hexadecimal integer (uppercase)</td>
      <td><output>7FA</output></td>
    </tr>
    <tr>
      <td><code>f</code></td>
      <td>Decimal floating point, lowercase</td>
      <td><output>392.65</output></td>
    </tr>
    <tr>
      <td><code>F</code></td>
      <td>Decimal floating point, uppercase</td>
      <td><output>392.65</output></td>
    </tr>
    <tr>
      <td><code>e</code></td>
      <td>Scientific notation (mantissa/exponent), lowercase</td>
      <td><output>3.9265e+2</output></td>
    </tr>
    <tr>
      <td><code>E</code></td>
      <td>Scientific notation (mantissa/exponent), uppercase</td>
      <td><output>3.9265E+2</output></td>
    </tr>
    <tr>
      <td><code>g</code></td>
      <td>Use the shortest representation: %e or %f</td>
      <td><output>392.65</output></td>
    </tr>
    <tr>
      <td><code>G</code></td>
      <td>Use the shortest representation: %E or %F</td>
      <td><output>392.65</output></td>
    </tr>
    <tr>
      <td><code>a</code></td>
      <td>Hexadecimal floating point, lowercase</td>
      <td><output>-0xc.90fep-2</output></td>
    </tr>
    <tr>
      <td><code>A</code></td>
      <td>Hexadecimal floating point, uppercase</td>
      <td><output>-0XC.90FEP-2</output></td>
    </tr>
    <tr>
      <td><code>\$</code></td>
      <td>Currency</td>
      <td><output>\$25.00</output></td>
    </tr>
    <tr>
      <td><code>c</code></td>
      <td>Character</td>
      <td><output>a</output></td>
    </tr>
    <tr>
      <td><code>C</code></td>
      <td>Character capitalized</td>
      <td><output>A</output></td>
    </tr>
    <tr>
      <td><code>s</code></td>
      <td>String of characters</td>
      <td><output>sample</output></td>
    </tr>
    <tr>
      <td><code>S</code></td>
      <td>String of characters in all caps</td>
      <td><output>SAMPLE</output></td>
    </tr>
    <tr>
      <td><code>b</code></td>
      <td>String representation of a Boolean variable</td>
      <td><output>true</output></td>
    </tr>
    <tr>
      <td><code>B</code></td>
      <td>String representation of a Boolean variable, uppercase</td>
      <td><output>TRUE</output></td>
    </tr>
    <tr>
      <td><code>v</code></td>
      <td>String representation of an array variable</td>
      <td><output>a,b,c</output></td>
    </tr>
    <tr>
      <td><code>V</code></td>
      <td>String representation of an array variable, uppercase</td>
      <td><output>A,B,C</output></td>
    </tr>
    <tr>
      <td><code>D</code></td>
      <td>String representation of a date object</td>
      <td><output>Aug 15, 1990</output></td>
    </tr>
    <tr>
      <td><code>W</code></td>
      <td>CSS styling (obviously not supported when printing to a textarea)</td>
      <td><output>style</output></td>
    </tr>
    <tr>
      <td><code>T</code></td>
      <td>Datatype for the parameter object</td>
      <td><output>String</output></td>
    </tr>
    <tr>
      <td><code>O</code></td>
      <td>Custom formatting function for the parameter object</td>
      <td><output>this is a circle</output></td>
    </tr>
    <tr>
      <td><code>p</code></td>
      <td>Hash Code</td>
      <td><output>#8000000</output></td>
    </tr>
    <tr>
      <td><code>n</code></td>
      <td colspan="2">
        Nothing printed. The corresponding argument must be a pointer to a signed int. 
        The number of characters written so far is stored  in the pointed location.
      </td>
    </tr>
    <tr>
      <td><code>%</code></td>
      <td>A % followed by another % character will write a single % to the stream.</td>
      <td><output>%</output></td>
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
      <td><code>-</code></td>
      <td>
        Left-justify within the given field width; Right justification is 
        the default (see width sub-specifier).
      </td>
    </tr>
    <tr>
      <td><code>+</code></td>
      <td>
        Forces to precede the result with a  plus or minus sign (+ or -) 
        even for positive numbers. By default, only negative numbers are 
        preceded with a - sign.
      </td>
    </tr>
    <tr>
      <td><code>(space)</code></td>
      <td>
        If no sign is going to be written, a blank space is inserted 
        before the value.
      </td>
    </tr>
    <tr>
      <td><code>#</code></td>
      <td>
        Used with o, x or X specifiers the value is preceded with 0, 0x 
        or 0X respectively for values different than zero. Used with a, 
        A, e, E, f, F, g or G  it forces the written output to contain 
        a decimal point even if no more digits follow. By default, if 
        no digits follow, no decimal point is written.
      </td>
    </tr>
    <tr>
      <td><code>0</code></td>
      <td>
        Left-pads the number with zeroes (0) instead of spaces when 
        padding is specified (see width sub-specifier).
      </td>
    </tr>
  </tbody>
</table>
<p>
  The special sub-specifier contains additional optional formatting info including
  delimiters and <a href="strftime">date format strings</a>.
</p>

