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
public boolean palindrome(String word)
{
  int len = word.length();
  for (int i = 0; i<len/2; i++){
    if (word.substring(i, i+1).equals(word.substring(len-i-1, len-1))){
      return true;
    }
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    int length = str.length();
    if (length == 0){
      return "";
    }
    for (int i = 0; i<length; i++){
      sNew = sNew + str.substring(length-i-1, length -i);
    }
    sNew.toLowerCase();
    sNew.replaceAll("\\s","");
    return sNew;
}


