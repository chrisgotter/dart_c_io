part of printf;


class RegexHelper
{

  static bool isMatch(String pattern, String arg)
  {
    return new RegExp(pattern).firstMatch(arg) != null;
    
  }
  
  static String getMatch(String pattern, String arg)
  {
    Match match = new RegExp(pattern).firstMatch(arg);
    return match != null ? match.group(0) : null;
  }
  
}