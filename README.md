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
  The special sub-specifier contains special related text: delimiters and
  date formats, which are optional and follow these specifications:
  [
    <a href="http://www.google.com/url?q=http%3A%2F%2Fmsdn.microsoft.com%2Fen-us%2Flibrary%2F8kb3ddd4(v%3Dvs.110).aspx%23gSpecifier&sa=D&sntz=1&usg=AFQjCNFQPPRtYkSAMLi43M20GKhVNamG2w">
      content and documentation adapted from: MSDN
    </a>
  ]
</p>

<table>
  <thead>
    <tr>
      <th>special</th>
      <th>description</th>
      <th colspan="2">Examples</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td rowspan="2"><code>d</code></td>
      <td rowspan="2">The day of the month, from 1 through 31.</td>
      <td><code>6/1/2009 1:45:30 PM</code></td>
      <td><output>1</output></td>
    </tr>
    <tr>
      <td><code>6/15/2009 1:45:30 PM</code></td>
      <td><output>15</output></td>
    </tr>
    
    <tr>
      <td><code>dd</code></td>
      <td rowspan="2">The day of the month, from 1 through 31.</td>
      <td><code>6/1/2009 1:45:30 PM</code></td>
      <td><output>01</output></td>
    </tr>
    <tr>
      <td><code>%d</code></td>
      <td><code>6/15/2009 1:45:30 PM</code>
      <td><output>15</output></td>
    </tr>
    
    
    <tr>
      <td><code>e</code></td>
      <td rowspan="2">Day of the month, space-padded ( 1-31)</td>
      <td rowspan="2"><code>6/1/2009 1:45:30 PM</code></td>
      <td rowspan="2"><output>&nbsp;1</output></td>
    </tr>
    <tr><td><code>%e</code></td></tr>
    
    <tr>
      <td><code>ddd</code></td>
      <td rowspan="2">The abbreviated name of the day of the week.</td>
      <td rowspan="2"><code>6/15/2009 1:45:30 PM</code></td>
      <td rowspan="2"><output>Mon</output></td>
    </tr>
    <tr><td><code>%a</code></td></tr>
    <tr>
      <td><code>dddd</code></td>
      <td rowspan="2">The full name of the day of the week.</td>
      <td rowspan="2"><code>6/15/2009 1:45:30 PM</code></td>
      <td rowspan="2"><output>Monday</output></td>
    </tr>
    <tr><td><code>%A</code></td></tr>
    
    
    <tr>
      <td rowspan="2"><code>f</code></td>
      <td rowspan="2">The tenths of a second in a date and time value.</td>
      <td><code>6/15/2009 13:45:30.617</code></td>
      <td><output>6</output></td>
    </tr>
    <tr>
      <td><code>6/15/2009 13:45:30.050</code></td>
      <td><output>0</output></td>
    </tr>
    
    <tr>
      <td rowspan="2"><code>ff</code></td>
      <td rowspan="2">The hundredths of a second in a date and time value.</td>
      <td><code>6/15/2009 13:45:30.617</code></td>
      <td><output>61</output></td>
    </tr>
    <tr>
      <td><code>6/15/2009 13:45:30.005</code></td>
      <td><output>00</output></td>
    </tr>
    
    
    
    
    <tr>
      <td rowspan="2"><code>fff</code></td>
      <td rowspan="2">The milliseconds in a date and time value.</td>
      <td><code>6/15/2009 13:45:30.617</code></td>
      <td><output>617</output></td>
    </tr>
    <tr>
      <td><code>6/15/2009 13:45:30.0005</code></td>
      <td><output>000</output></td>
    </tr>
    
    
    
    <tr>
      <td rowspan="2"><code>ffff</code></td>
      <td rowspan="2">The ten thousandths of a second in a date and time value.</td>
      <td><code>6/15/2009 13:45:30.6175</code></td>
      <td><output>6175</output></td>
    </tr>
    <tr>
      <td><code>6/15/2009 13:45:30.000005</code></td>
      <td><output>0000</output></td>
    </tr>
    
    
    <tr>
      <td rowspan="2"><code>fffff</code></td>
      <td rowspan="2">The hundred thousandths of a second in a date and time value.</td>
      <td><code>6/15/2009 13:45:30.61754</code></td>
      <td><output>61754</output></td>
    </tr>
    <tr>
      <td><code>6/15/2009 13:45:30.000005</code></td>
      <td><output>00000</output></td>
    </tr>
    
    <tr>
      <td rowspan="2"><code>ffffff</code></td>
      <td rowspan="2">The millionths of a second in a date and time value.</td>
      <td><code>6/15/2009 13:45:30.617542</code></td>
      <td><output>617542</output></td>
    </tr>
    <tr>
      <td><code>6/15/2009 13:45:30.0000005</code></td>
      <td><output>000000</output></td>
    </tr>
    
    <tr>
      <td rowspan="2"><code>fffffff</code></td>
      <td rowspan="2">The ten millionths of a second in a date and time value.</td>
      <td><code>6/15/2009 13:45:30.6175425</code></td>
      <td><output>6175425</output></td>
    </tr>
    <tr>
      <td><code>6/15/2009 13:45:30.00000005</code></td>
      <td><output>000000</output></td>
    </tr>
    <tr>
      <td rowspan="2"><code>F</code></td>
      <td rowspan="2">If non-zero, the tenths of a second in a date and time value.</td>
      <td><code>6/15/2009 13:45:30.617</code></td>
      <td><output>6</output></td>
    </tr>
    <tr>
      <td><code>6/15/2009 13:45:30.050</code></td>
      <td><output>(no output)</output></td>
    </tr>
    
    <tr>
      <td rowspan="2"><code>FF</code></td>
      <td rowspan="2">If non-zero, the hundredths of a second in a date and time value.</td>
      <td><code>6/15/2009 13:45:30.617</code></td>
      <td><output>61</output></td>
    </tr>
    <tr>
      <td><code>6/15/2009 13:45:30.005</code></td>
      <td><output>(no output)</output></td>
    </tr>
    
    <tr>
      <td rowspan="2"><code>FFF</code></td>
      <td rowspan="2">If non-zero, the milliseconds in a date and time value.</td>
      <td><code>6/15/2009 13:45:30.617</code></td>
      <td><output>617</output></td>
    </tr>
    <tr>
      <td><code>6/15/2009 13:45:30.0005</code></td>
      <td><output>(no output)</output></td>
    </tr>
    
    
    
    <tr>
      <td rowspan="2"><code>FFFF</code></td>
      <td rowspan="2">If non-zero, the ten thousandths of a second in a date and time value.</td>
      <td><code>6/15/2009 13:45:30.6175</code></td>
      <td><output>6175</output></td>
    </tr>
    <tr>
      <td><code>6/15/2009 13:45:30.000005</code></td>
      <td><output>(no output)</output></td>
    </tr>
    
    
    <tr>
      <td rowspan="2"><code>FFFFF</code></td>
      <td rowspan="2">If non-zero, the hundred thousandths of a second in a date and time value.</td>
      <td><code>6/15/2009 13:45:30.61754</code></td>
      <td><output>61754</output></td>
    </tr>
    <tr>
      <td><code>6/15/2009 13:45:30.000005</code></td>
      <td><output>(no output)</output></td>
    </tr>
    
    <tr>
      <td rowspan="2"><code>FFFFFF</code></td>
      <td rowspan="2">If non-zero, the millionths of a second in a date and time value.</td>
      <td><code>6/15/2009 13:45:30.617542</code></td>
      <td><output>617542</output></td>
    </tr>
    <tr>
      <td><code>6/15/2009 13:45:30.0000005</code></td>
      <td><output>(no output)</output></td>
    </tr>
    
    <tr>
      <td rowspan="2"><code>FFFFFFF</code></td>
      <td rowspan="2">If non-zero, the ten millionths of a second in a date and time value.</td>
      <td><code>6/15/2009 13:45:30.6175425</code></td>
      <td><output>6175425</output></td>
    </tr>
    <tr>
      <td><code>6/15/2009 13:45:30.00000005</code></td>
      <td><output>(no output)</output></td>
    </tr>
    
    
    <tr>
      <td><code>g</code></td>
      <td rowspan="2">The period or era.</td>
      <td rowspan="2"><code>6/15/2009 1:45:30 PM</code></td>
      <td rowspan="2"><output>A.D.</output></td>
    </tr>
    <tr>
      <td><code>gg</code></td>
    </tr>
    
    <tr>
      <td rowspan="2"><code>h</code></td>
      <td rowspan="2">The hour, using a 12-hour clock from 1 to 12.</td>
      <td><code>6/15/2009 1:45:30 AM</code></td>
      <td><output>1</output></td>
    </tr>
    <tr>
      <td><code>6/15/2009 1:45:30 PM</code></td>
      <td><output>15</output></td>
    </tr>
    
    <tr>
      <td><code>hh</code></td>
      <td rowspan="2">The hour, using a 12-hour clock from 01 to 12.</td>
      <td><code>6/1/2009 1:45:30 AM</code></td>
      <td><output>01</output></td>
    </tr>
    <tr>
      <td><code>%I</code></td>
      <td><code>6/15/2009 1:45:30 PM</code>
      <td><output>1</output></td>
    </tr>
    
    <tr>
      <td rowspan="2"><code>H</code></td>
      <td rowspan="2">The hour, using a 24-hour clock from 1 to 24.</td>
      <td><code>6/15/2009 1:45:30 AM</code></td>
      <td><output>1</output></td>
    </tr>
    <tr>
      <td><code>6/15/2009 1:45:30 PM</code></td>
      <td><output>13</output></td>
    </tr>
    
    <tr>
      <td><code>HH</code></td>
      <td rowspan="2">The hour, using a 24-hour clock from 01 to 24.</td>
      <td><code>6/15/2009 1:45:30 AM</code></td>
      <td><output>01</output></td>
    </tr>
    <tr>
      <td><code>%H</code></td>
      <td><code>6/15/2009 1:45:30 PM</code>
      <td><output>13</output></td>
    </tr>
    
    
    <tr>
      <td rowspan="2"><code>m</code></td>
      <td rowspan="2">The minute, from 0 through 59.</td>
      <td><code>6/15/2009 1:09:30 AM</code></td>
      <td><output>9</output></td>
    </tr>
    <tr>
      <td><code>6/15/2009 1:09:30 PM</code></td>
      <td><output>9</output></td>
    </tr>
    
    <tr>
      <td><code>mm</code></td>
      <td rowspan="2">The minute, from 00 through 59.</td>
      <td><code>6/1/2009 1:09:30 AM</code></td>
      <td><output>09</output></td>
    </tr>
    <tr>
      <td><code>%M</code></td>
      <td><code>6/15/2009 1:09:30 PM</code>
      <td><output>09</output></td>
    </tr>
    
    <tr>
      <td><code>M</code></td>
      <td>The month, from 1 through 12.</td>
      <td><code>6/15/2009 1:45:30 PM</code></td>
      <td><output>6</output></td>
    </tr>
    
    <tr>
      <td><code>MM</code></td>
      <td rowspan="2">The month, from 01 through 12.</td>
      <td rowspan="2"><code>6/15/2009 1:45:30 PM</code></td>
      <td rowspan="2"><output>06</output></td>
    </tr>
    <tr><td><code>%m</code></td></tr>
    
    
    
    <tr>
      <td><code>MMM</code></td>
      <td rowspan="2">The abbreviated name of the month.</td>
      <td rowspan="2"><code>6/15/2009 1:45:30 PM</code></td>
      <td rowspan="2"><output>Jun</output></td>
    </tr>
    
    <tr><td><code>%b</code></td></tr>
    
    <tr>
      <td><code>MMMM</code></td>
      <td rowspan="2">The full name of the month.</td>
      <td rowspan="2"><code>6/15/2009 1:45:30 PM</code></td>
      <td rowspan="2"><output>June</output></td>
    </tr>
    
    <tr><td><code>%B</code></td></tr>
    
    <tr>
      <td><code>s</code></td>
      <td>The second, from 0 through 59.</td>
      <td><code>6/15/2009 1:45:09 AM</code></td>
      <td><output>9</output></td>
    </tr>
    
    
    <tr>
      <td><code>ss</code></td>
      <td rowspan="2">The second, from 00 through 59.</td>
      <td rowspan="2"><code>6/15/2009 1:45:09 AM</code></td>
      <td rowspan="2"><output>09</output></td>
    </tr>
    <tr><td><code>%S</code></td></tr>
    
    
    <tr>
      <td><code>t</code></td>
      <td>The first character of the AM/PM designator.</td>
      <td><code>6/15/2009 1:45:30 PM</code></td>
      <td><output>P</output></td>
    </tr>
    
    <tr>
      <td><code>tt</code></td>
      <td rowspan="2">The AM/PM designator.</td>
      <td rowspan="2"><code>6/15/2009 1:45:30 PM</code></td>
      <td rowspan="2"><output>PM</output></td>
    </tr>
    <tr><td><code>%p</code></td></tr>
    
    
    
    <tr>
      <td rowspan="5"><code>y</code></td>
      <td rowspan="5">The year, from 0 to 99.</td>
      <td><code>1/1/0001 12:00:00 AM</code></td>
      <td><output>1</output></td>
    </tr>
    <tr>
      <td><code>1/1/0900 12:00:00 AM</code></td>
      <td><output>0</output></td>
    </tr>
    <tr>
      <td><code>1/1/1900 12:00:00 AM</code></td>
      <td><output>0</output></td>
    </tr>
    <tr>
      <td><code>6/15/2009 1:45:30 PM</code></td>
      <td><output>9</output></td>
    </tr>
    <tr>
      <td><code>6/15/2009 12:00:00 AM</code></td>
      <td><output>9</output></td>
    </tr>
    
    
    
    
    <tr>
      <td rowspan="2"><code>yy</code></td>
      <td rowspan="4">The year, from 00 to 99.</td>
      <td><code>1/1/0001 12:00:00 AM</code></td>
      <td><output>01</output></td>
    </tr>
    <tr>
      <td><code>1/1/0900 12:00:00 AM</code></td>
      <td><output>00</output></td>
    </tr>
    <tr>
      
      <td rowspan="2"><code>%y</code></td>
      <td><code>1/1/1900 12:00:00 AM</code></td>
      <td><output>00</output></td>
    </tr>
    <tr>
      <td><code>6/15/2009 1:45:30 PM</code></td>
      <td><output>09</output></td>
    </tr>
    
    
    <tr>
      <td><code>C</code></td>
      <td rowspan="2">Year divided by 100 and truncated to integer (00-99). (Century)</td>
      <td rowspan="2"><code>6/15/2009 1:45:09 AM</code></td>
      <td rowspan="2"><output>20</output></td>
    </tr>
    <tr><td><code>%C</code></td></tr>
    
    <tr>
      <td rowspan="4"><code>yyy</code></td>
      <td rowspan="4">The year, with a minimum of three digits.</td>
      <td><code>1/1/0001 12:00:00 AM</code></td>
      <td><output>001</output></td>
    </tr>
    <tr>
      <td><code>1/1/0900 12:00:00 AM</code></td>
      <td><output>900</output></td>
    </tr>
    <tr>
      <td><code>1/1/1900 12:00:00 AM</code></td>
      <td><output>1900</output></td>
    </tr>
    <tr>
      <td><code>6/15/2009 1:45:30 PM</code></td>
      <td><output>2009</output></td>
    </tr>
    
    
    <tr>
      <td rowspan="2"><code>yyyy</code></td>
      <td rowspan="4">The year, with a minimum of four digits.</td>
      <td><code>1/1/0001 12:00:00 AM</code></td>
      <td><output>0001</output></td>
    </tr>
    <tr>
      <td><code>1/1/0900 12:00:00 AM</code></td>
      <td><output>0900</output></td>
    </tr>
    <tr>
    
      <td rowspan="2"><code>%Y</code></td>
      <td><code>1/1/1900 12:00:00 AM</code></td>
      <td><output>1900</output></td>
    </tr>
    <tr>
      <td><code>6/15/2009 1:45:30 PM</code></td>
      <td><output>2009</output></td>
    </tr>
    
    
    <tr>
      <td rowspan="2"><code>yyyyy</code></td>
      <td rowspan="2">The year, with a minimum of five digits.</td>
      <td><code>1/1/0001 12:00:00 AM</code></td>
      <td><output>00001</output></td>
    </tr>
    <tr>
      <td><code>6/15/2009 1:45:30 PM</code></td>
      <td><output>02009</output></td>
    </tr>
    
    
    <tr>
      <td><code>z</code></td>
      <td>Hours offset from UTC, with no leading zeros.</td>
      <td><code>6/15/2009 1:45:30 PM -07:00</code></td>
      <td><output>-7</output></td>
    </tr>
    
    
    <tr>
      <td><code>zz</code></td>
      <td>Hours offset from UTC, with a leading zero for a single-digit value.</td>
      <td><code>6/15/2009 1:45:30 PM -07:00</code></td>
      <td><output>-07</output></td>
    </tr>
    
    
    <tr>
      <td><code>zzz</code></td>
      <td>Hours and minutes offset from UTC, with a leading zero for a single-digit value.</td>
      <td><code>6/15/2009 1:45:30 PM -07:00</code></td>
      <td><output>-07:00</output></td>
    </tr>
    
    <tr>
      <td><code>zzzz</code></td>
      <td rowspan="2">
        ISO 8601 offset from UTC in timezone (1 minute=1, 1 hour=100) 
        If timezone cannot be termined, no characters(no : )
      </td>
      <td rowspan="2"><code>6/15/2009 1:45:30 PM -07:00</code></td>
      <td rowspan="2"><output>-07:00</output></td>
    </tr>
    
    <tr><td><code>%z</code></td></tr>
    
    <tr>
      <td><code>Z</code></td>
      <td rowspan="2">Timezone name or abbreviation *If timezone cannot be termined, no characters</td>
      <td rowspan="2"><code>6/15/2009 1:45:30 PM -07:00</code></td>
      <td rowspan="2"><output>PST</output></td>
    </tr>
    <tr><td><code>%Z</code></td></tr>
    
    <tr>
      <td><code>u</code></td>
      <td rowspan="2">ISO 8601 weekday as number with Monday as 1 (1-7)</td>
      <td rowspan="2"><code>6/1/2009 1:45:30 PM</code></td>
      <td rowspan="2"><output>01</output></td>
    </tr>
    <tr><td><code>%u</code></td></tr>
    
    
    <tr>
      <td><code>w</code></td>
      <td rowspan="2">Weekday as a decimal number with Sunday as 0 (0-6)</td>
      <td rowspan="2"><code>6/1/2009 1:45:30 PM</code></td>
      <td rowspan="2"><output>01</output></td>
    </tr>
    <tr><td><code>%w</code></td></tr>
    
    
    <tr>
      <td><code>U</code></td>
      <td rowspan="2">Week number with the first Sunday as the first day of week one (00-53)</td>
      <td rowspan="2"><code>6/1/2009 1:45:30 PM</code></td>
      <td rowspan="2"><output>23</output></td>
    </tr>
    <tr><td><code>%U</code></td></tr>
    
    <tr>
      <td><code>W</code></td>
      <td rowspan="4">Week number with the first Monday as the first day of week one (00-53)</td>
      <td rowspan="4"><code>6/1/2009 1:45:30 PM</code></td>
      <td rowspan="4"><output>23</output></td>
    </tr>
    <tr><td><code>V</code></td></tr>
    <tr><td><code>%U</code></td></tr>
    <tr><td><code>%V</code></td></tr>
    
    
    <tr>
      <td><code>ggg</code></td>
      <td rowspan="2">Week-based year, last two digits (00-99)</td>
      <td rowspan="2"><code>6/1/2009 1:45:30 PM</code></td>
      <td rowspan="2"><output>09</output></td>
    </tr>
    <tr><td><code>%g</code></td></tr>
    
    <tr>
      <td><code>G</code></td>
      <td rowspan="2">Week-based year</td>
      <td rowspan="2"><code>6/1/2009 1:45:30 PM</code></td>
      <td rowspan="2"><output>2009</output></td>
    </tr>
    <tr><td><code>%G</code></td></tr>
    
    
    <tr>
      <td><code>jjj</code></td>
      <td rowspan="2">Day of the year (001-366)</td>
      <td><code>12/31/2009 1:45:30 PM</code></td>
      <td><output>001</output></td>
    </tr>
    <tr>
      <td><code>%j</code></td>
      <td><code>12/31/2009 1:45:30 PM</code></td>
      <td><output>365</output></td>
    </tr>
    
    <tr>
      <td rowspan="2"><code>jj</code></td>
      <td rowspan="2">Day of the year (01-366)</td>
      <td><code>12/31/2009 1:45:30 PM</code></td>
      <td><output>01</output></td>
    </tr>
    <tr>
      <td><code>12/31/2009 1:45:30 PM</code></td>
      <td><output>365</output></td>
    </tr>
    
    
    <tr>
      <td rowspan="2"><code>j</code></td>
      <td rowspan="2">Day of the year (1-366)</td>
      <td><code>12/31/2009 1:45:30 PM</code></td>
      <td><output>1</output></td>
    </tr>
    <tr>
      <td><code>12/31/2009 1:45:30 PM</code></td>
      <td><output>365</output></td>
    </tr>
  </tbody>
</table>
