public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++)
  {
    if (palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    } else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}

//Palindrome
public boolean palindrome(String word)
{
  String rtn= onlyLetters(noSpaces(noCapitals(word)));
  return (rtn.equals(reverse(rtn)));
}


// No Capitals
public String noCapitals(String sWord) {
  return sWord.toLowerCase();
}

//Only Letters
public String onlyLetters(String sString) {
  String str = "";

  for (int i = 0; i < sString.length(); i++) {
    if (Character.isLetter(sString.charAt(i))) {
      str += sString.charAt(i);
    }
  }
  return str;
}

//No Spaces
public String noSpaces(String sWord) {
  String str = "";

  for (int i = 0; i < sWord.length(); i++) {
    if (!sWord.substring(i, i + 1).equals(" ")) {
      str += sWord.substring(i, i + 1);
    }
  }
  return str;
}

//Reverse
public String reverse(String str)
{
  String rtn="";

  for (int j=str.length(); j>0; j--) {
    rtn=rtn+str.substring(j-1, j);
  }
  return rtn;
}
