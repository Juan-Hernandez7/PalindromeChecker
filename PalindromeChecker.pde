public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
   String rek = word.toLowerCase();
  String nek= new String();
 for(int i =0; i< word.length();i++)
  {
    if(Character.isLetter(word.charAt(i))==true)
    {
      nek= nek + rek.charAt(i);
    
    }
  }

 
  if(nek.equals(reverse(word)))
  {
    return true;
  }
  //your code here
  return false;
}
public String reverse(String str)
{    String tek = str.toLowerCase();
  String kek= new String();
 for(int i =0; i< str.length();i++)
  {
    if(Character.isLetter(str.charAt(i))==true)
    {
      kek= kek + tek.charAt(i);
    
    }
  }

    String sNew = new String();
  int meek= kek.length()-1;
  for(int i= meek; i>=0; i--)
  {
   sNew= sNew + kek.charAt(i);
   
  }

    //your code here
    return sNew;
}



