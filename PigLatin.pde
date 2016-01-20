import java.util.*;

public void setup() {
  String lines[] = loadStrings("words.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0; i < lines.length; i++) {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
}
public int findFirstVowel(String sWord)
  //precondition: ssWord is a valid String of length greater than 0.
  //postcondition: returns the position of the first vowel in ssWord.  If there are no vowels, returns -1
{
  for (int i=0; i<sWord.length(); i++)
  {
    char v=sWord.charAt(i);
    if (v=='a' || v=='e' || v=='i' || v=='o'||v=='u')
    {
      return i;
    }
    if (sWord.substring(0, 2).equals("qu"))
    {
      return -2;
    }
  }
  return -1;
}
public String pigLatin(String sWord)
  //precondition: ssWord is a valid String of length greater than 0
  //postcondition: returns the pig latin equivalent of ssWord
{
  if (findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  }
  if (findFirstVowel(sWord)== -2)
  {
    String kiuyew=sWord.substring(0, 2);
    String other=sWord.substring(2, sWord.length());
    return other + kiuyew + "ay";
  } 
  if (findFirstVowel(sWord)==0)
  {
    return sWord + "way";
  }
  if (findFirstVowel(sWord) !=0)
  {
    String con=sWord.substring(0, findFirstVowel(sWord));
    String otro=sWord.substring(findFirstVowel(sWord), sWord.length());
    return otro + con + "ay";
  } else 
  {
    return "ERROR!";
  }
}