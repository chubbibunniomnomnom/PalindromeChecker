public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(reverse(lines[i]))==true)
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
    for (int i = length; i>0; i--){
      if (Character.isLetter(str.charAt(i-1)) == true){
        sNew = sNew + str.substring(i-1, i);
      } else{
        sNew = sNew+ "";
      }
    }
    sNew.replaceAll("\\s","");
    return sNew.toLowerCase();
  }


