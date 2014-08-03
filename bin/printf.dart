library printf;

import "dart:core";
import "dart:math";
import "dart:io";
part "regex_helper.dart";




RegExp   PLACEHOLDER_REGEX = new RegExp(
    //r"(?:^|[^%])" +
    
    r"%((?:" + 
      r"([\+ 0#\-])?" + 
      r"(?:" + 
        r"(?!\1)" + 
        r"([\+ 0#\-])" + 
      r")?" + 
      r"(?:" + 
        r"(?!\1|\2)" + 
        r"([\+ 0#\-])" + 
      r")?" + 
      r"(?:" + 
        r"(?!\1|\2|\3)" + 
        r"([\+ 0#\-])" + 
      r")?" +
    r")" +
    
    r"(\[.*\])?" + 
    r"(\d+|\*)?" +
    r"(\.(\d+|\*)?)?" +
    r"([hljztL]|(?:hh)|(?:ll))?" + 
    r"([abcdefgionsuvxABCDEFGOSTVWX]))", multiLine: true);

const bool DEBUG = false;

void check(dynamic args)
{
  if(DEBUG) print(DEBUG ? args : "");
}

typedef dynamic OnCall(List);
class VarargsFunction extends Function 
{
  OnCall _onCall;

  VarargsFunction(this._onCall);

  dynamic call() => _onCall([]);

  dynamic noSuchMethod(Invocation invocation) 
  {
    final List<dynamic> arguments = invocation.positionalArguments;
    return _onCall(arguments);
  }
}



/**
 * 
 */
final printf = new VarargsFunction((List<dynamic> arguments)
{
  vprintf(arguments[0], arguments.sublist(1));
});





final fprintf = new VarargsFunction((List<dynamic> arguments)
{
  return vfprintf(arguments[0], arguments[1], arguments.sublist(2));
});


int vfprintf(File stream, String format, List<dynamic> args)
{
  StringBuffer buffer = new StringBuffer();
  vsprintf_c(buffer, format, args);
  
  stream.writeAsStringSync(buffer.toString().replaceAll("\n", "\r\n"),mode: APPEND);
  return buffer.length;
}

int vprintf(String format, List<dynamic> args)
{
  StringBuffer buffer = new StringBuffer();
  vsprintf_c(buffer, format, args);
  String s = buffer.toString().trim();
  print(s);
  return buffer.length;
}


final sprintf = new VarargsFunction((List<dynamic> arguments)
{
  int i = 0;
  bool c_style;
  StringBuffer buffer;
  if(arguments[0] is StringBuffer)
  {
    buffer = arguments[i++];
  }
  else
  {
    buffer = new StringBuffer();
  }
  String format = arguments[i++];
  
  vsprintf_c(buffer, format, arguments.sublist(i));
  return c_style ? buffer.length : buffer.toString();
});

final vsnprintf = new VarargsFunction((List<dynamic> arguments)
{
  int i = 0;
  bool c_style;
  StringBuffer buffer;
  if(arguments[0] is StringBuffer)
  {
    buffer = arguments[i++];
  }
  else
  {
    buffer = new StringBuffer();
  }

  int n = arguments[i++];
  String format = arguments[i++];
  
  vsprintf_c(buffer, format, arguments.sublist(i));
  String temp = buffer.toString().substring(0,n-1);
  buffer.clear();
  buffer.write(temp);
  return c_style ? buffer.length : buffer.toString();
  
  
});

final vsprintf = new VarargsFunction((List<dynamic> arguments)
{
  int i = 0;
  bool c_style;
  StringBuffer buffer;
  if(arguments[0] is StringBuffer)
  {
    buffer = arguments[i++];
  }
  else
  {
    buffer = new StringBuffer();
  }
  String format = arguments[i++];
  
  vsprintf_c(buffer, format, arguments.sublist(i));

  return c_style ? buffer.length : buffer.toString();
  
  
});
int vsprintf_c(StringBuffer buffer, String format, List<dynamic> args)
{
  int i = 0;
  format = format.replaceAll("%%", "<<percent>>");
  int last = 0;
  for(Match match in PLACEHOLDER_REGEX.allMatches(format))
  {

    bool rightJustify = true;
    bool showPlus = false;
    bool verbose = false;
    String padchar = ' ';
    String special = "";
    
    int width = null;
    int precision = null;
    String modifiers = "";
    String specifier = "";
      
      
    String placeholder = match.group(0);
    String formatted = placeholder;
    String flags = RegexHelper.getMatch(r"%[\+ 0#\-]*", formatted);
    
    int current = format.indexOf(placeholder, last);
    String sub = format.substring(last, current).replaceAll("<<percent>>", "%");
    buffer.write(sub);
    last = current + placeholder.length;
    
    formatted = formatted.replaceFirst(flags, "");
    
    rightJustify = !flags.contains('-');
    check("rightJustify = $rightJustify");
    
    verbose = flags.contains('#');
    check("verbose = $verbose");
    
    showPlus = flags.contains('+');
    check("showPlus = $showPlus");
    
    padchar = flags.contains('0') ? '0' : ' ';
    check("padchar = '$padchar'");
    check("flags = $flags");
    
    special = RegexHelper.getMatch(r"\[(.*)\]", formatted);
    special = special == null ? "" : special;
    formatted = formatted.replaceFirst("[$special]", "");
    
    check("special = [$special]");
    
    List<String> ptrFormatted = [formatted];
    width = parseIntLoose(ptrFormatted);
    formatted = ptrFormatted[0];
    
    if(width == null)
    {
      width = args[i++];
    }

    check("width = $width");
    
    if(formatted[0] == '.')
    {

      List<String> ptrFormatted = [formatted.replaceFirst(".", "")];
      precision = parseIntLoose(ptrFormatted);
      formatted = ptrFormatted[0];
      
      if(precision == null)
      {
        precision = args[i++];
      }
    }

    check("precision = $precision");
    
    
    modifiers = formatted.substring(0,formatted.length-1);
    check("modifiers = $modifiers");

    specifier = formatted.replaceAll(modifiers, "");
    check("specifier = $specifier");
    
    dynamic arg = args[i++];
    
    formatted = "";
    
    if(specifier == 'n')
    {
      args[i--][0] = buffer.length;
    }
    else if(RegexHelper.isMatch("[diuoxX]", specifier))
    {
      arg = specifier == 'p' ? arg.hashCode() : arg;
      formatted = formatInt(arg, specifier, modifiers, verbose, showPlus);
    }
    else if(RegexHelper.isMatch("[afegAFEG\$]", specifier))
    {
      formatted = formatFloat(arg, special, specifier, modifiers, precision, showPlus);
    }
    else if(RegexHelper.isMatch("[cC]", specifier))
    {
      formatted = formatChar(arg, specifier);
      if(modifiers == 'h')
      {
        formatted = formatted.toLowerCase();
      }
    }
    else if(RegexHelper.isMatch("[sSbB]", specifier))
    {
      formatted = RegexHelper.isMatch("[bB]", specifier) ? formatBool(arg) : arg;
      
      
      if(precision == null || formatted.toString().length < precision)
      {
        precision = formatted.toString().length;
      }
      else if(precision < 1)
      {
        precision = 1;
      }
      formatted = formatted.toString().substring(0, precision);
      
      
      if(modifiers == 't')
      {
        formatted = formatted.trim();
      }
    }
    else if(RegexHelper.isMatch("[vV]", specifier))
    {
      //List<dynamic> arr = 
      if(special.length >= 2)
      {
        special = special.substring(1, special.length-1);
      }
      if(special == '@')
      {
        special = arg;
        arg = args[i++];
      }
      formatted = arg.join(special != null ? special : ", ");
    }
    else if(specifier == 'D')
    {
      //formatted = formatDate(special, new Date(formatted), modifiers);
    }
    else if(specifier == 'O')
    {
      formatted = arg.objectPrintf(rightJustify, showPlus, verbose, padchar, special, width, precision, specifier);
    }
    else if(specifier == 'T')
    {
      formatted = arg.runtimeType;
    }
    else if(specifier == 'W')
    {
      formatted = "<span style=""$specifier"">$formatted</span>";
    }
    
    if(RegexHelper.isMatch("[A-CE-NP-SU-Z]", specifier))
    {
      formatted = formatted.toString().toUpperCase();
    }
    formatted = addPadding(formatted, width, padchar, rightJustify);
    
    buffer.write(formatted);
    
  }
  buffer.write(format.substring(last).replaceAll("<<percent>>", "%"));
      
  return buffer.length;
}

String formatStyling(String arg, String special, String specifier, String modifier, int precision, bool showPlus)
{
  return arg;
}

String formatChar(dynamic arg, String specifier)
{
  String formatted = "";
  if(arg is num)
  {
    formatted = new String.fromCharCode(arg % pow(2,16));
  }
  else if(arg is String && arg.length == 1)
  {
    formatted = arg[0];
  }
  else 
  {
    throw new Exception(arg + ": Is not a Char");
  }
  return formatted;
}


String formatFloat(num arg, String special, String specifier, String modifier, int precision, bool showPlus)
{
  if(precision == null)
  {
    precision = specifier == r'$' ? 2 : 6;

  }

  //int width = getWidth(arg, modifier, 64);
  //double.MIN_POSITIVE
  //arg = arg.clamp(width/-2, width/2-1);
  
  String specifierCopy = specifier;
  specifier = specifier == 'a' ? 'e' : specifier;
  specifier = specifier == 'A' ? 'E' : specifier;
  
  //fixed
  String f = arg.toStringAsFixed(precision);
  String e = arg.toStringAsExponential(precision);
  String formatted = "";
  
  if(RegexHelper.isMatch("[Ee]", specifier) || (RegexHelper.isMatch("[Gg]", specifier) && (e.length < f.length)))
  {
    formatted = e;
    String exponent = RegexHelper.getMatch(r"e[\+\-]\d*$", e).substring(1);
    exponent = exponent != null ? exponent : "";
    String sign = exponent[0];
    exponent = exponent.substring(2);

    while(exponent.length < 3)
    {
      exponent = '0'+exponent;
    }
    exponent = "$sign$exponent";
    formatted = formatted.substring(0, formatted.lastIndexOf('e')+1)+exponent;
  }
  else if(RegexHelper.isMatch("[Aa]", specifierCopy))
  {
    int a = arg.toInt();
    int b = int.parse(arg.toString().replaceFirst( a.toString() + ".", ""));
    formatted = formatted.replaceFirst(
        r"\d*\.\d*e", "0x${a.toRadixString(16)}.${b.toRadixString(16)}p");
  }
  else
  {
    formatted = f;
  }
  
  if(showPlus && formatted[0] != '-')
  {
    formatted = '+' + formatted;
  }
  
  if(specifier == r'$')
  {
    String symbol = special == null || special.length == 0 ? r'$' : special;
    if(formatted[0] == '-' || formatted[0] == '+')
    {
      formatted = formatted[0] + symbol + formatted.substring(1);
    }
    else
    {
      formatted = symbol + formatted;
    }
  }
  
  return formatted;
}

int getWidthMask(int width)
{
  int mask = 1;
  for(int i = 0; i < width; i++)
  {
    mask *= 2;
  }
  return mask - 1;
}

String formatInt(int arg, String specifier, String modifier, bool verbose, bool showPlus)
{
  String formatted = "";
  int base = getBase(specifier);
  int width = getWidth(arg, modifier);
  
  
  if(RegexHelper.isMatch(r"[di]", specifier))
  {
    arg = arg.toSigned(width);
  }
  else
  {
    //this is wrong but will work for now
    arg = arg.toUnsigned(width);
  }
  
  formatted = arg.toRadixString(base);
  
  if(base != 10 && formatted != '0' && verbose)
  {
    bool isNegative = formatted[0] == '-';
    if(RegexHelper.isMatch(r"[xX]", specifier))
    {
      formatted = '0x' + formatted;
    }
    else
    {
      formatted = '0' + formatted;
    }
    if(isNegative)
    {
      formatted = '-' + formatted;
    }
  }
  if(showPlus && formatted[0] != '-')
  {
    formatted = '+' + formatted;
  }
  return formatted;
}

int getBase(String specifier)
{
  int base;
  
  if(RegexHelper.isMatch(r"[o]", specifier))
  {
    base = 8;
  }
  else if(RegexHelper.isMatch(r"[xXaA]", specifier))
  {
    base = 16;
  }
  else
  {
    base = 10;
  }
  return base;
}

int getWidth(num arg, String modifier, [int bitLength = 80])
{
  int width;
  if(modifier == "hh")
  {
    width = 8;
  }
  else if(modifier == "h")
  {
    width = 16;
  }
  else if(modifier == "")
  {
    width = 32;
  }
  else if(modifier == "l")
  {
    width = 64;
  }
  else if(modifier == "ll" || modifier == "L")
  {
    width = 80;
  }
  else if(modifier == "z" || modifier == "j")
  {
    width = bitLength;
  }

  width = min(width, bitLength);
  return width;
}


String addPadding(String formatted, int width, String padchar, bool rightJustify)
{
  String pad = "";

  for(int i = formatted.length; i < width; i++)
  {
    pad += padchar;
  }
  formatted = rightJustify ? (pad + formatted) : (formatted + pad);

  return formatted;
}

String formatBool(dynamic arg)
{
  bool bValue = parseBool(arg);
  return bValue.toString();
}

bool parseBool(dynamic arg)
{
  bool value = null;
  if(arg is bool)
  {
    value = arg;
  }
  else if(arg is num)
  {
    value = arg != 0;
  }
  else if(arg is String)
  {
    String regexTrue = r"^(([tT](?:rue)?)|(?:TRUE)|(?:[yY](?:es)?)|(?:YES))$";
    String regexFalse = r"^((fF](?:alse)?)|(?:FALSE)|(?:[nN](?:o)?)|(?:NO))?$";
    value = RegexHelper.isMatch(regexTrue, arg);
    if(!value)
    {
      value = !RegexHelper.isMatch(regexFalse, arg);
      if(value)
      {
        throw new Exception(
            r"Invalid String format: ${arg}. "
            r"true, True, TRUE, " + 
            r"false, False, FALSE, " +
            r"yes, Yes, YES, " + 
            r"no, No, NO are valid");
      }
    }
  }
  else
  {
    throw new Exception(
        "Invalid Data Type Exception: ${arg.runtimeType}. " + 
        "Only num, bool or String accepted");
    
  }
  return value;
}

int parseIntLoose(List<String> arg)
{
  String match = RegexHelper.getMatch(r"^\d+", arg[0]);
  
  if(match != null)
  {
    arg[0] = arg[0].replaceFirst(match, "");
    return int.parse(match);
    
  }
  else if(arg[0].indexOf('*') == 0)
  {
    arg[0] = arg[0].replaceFirst('*', "");
    return null;
  }
  else 
  {
    return 0;
  }
  
}

