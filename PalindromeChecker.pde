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
  word = word.toLowerCase();
  String result = "";
  for(int i=0; i<word.length();i++)
    if(!word.substring(i,i+1).equals(" "))
      if(Character.isLetter(word.charAt(i)))
        result = result + word.substring(i,i+1);
  if(result.equals(reverse(result)))
    return true;
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i=str.length()-1; i > 0; i--)
    sNew = sNew + str.substring(i,i+1);
  sNew = sNew +str.substring(0,1);
  System.out.println(sNew);
    return sNew;
}


