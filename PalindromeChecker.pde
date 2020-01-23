public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");

  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public String onlyLetters(String sString){
  String h = new String();
  for(int i = 0; i < sString.length(); i++)
    if(Character.isLetter(sString.charAt(i)))
      h = h + sString.substring(i,i+1);
  return h;
}
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}

public boolean palindrome(String word)
{
  String bruv = new String();
  String l = new String();
  String y = new String();
  l = onlyLetters(word);
  y = noCapitals(l);
  bruv = reverse(y);
  if(bruv.equals(y)){
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    int last = str.length() - 1;
    for(int i = last; i >= 0; i--){
    sNew = sNew + str.substring(i, i+1);
  }
    return sNew;
}


