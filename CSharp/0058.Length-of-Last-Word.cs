using System;
using static System.Math;
using static System.Console;
using ConsoleApp1;
using System.Xml.Linq;

class program
{
    public static int LengthOfLastWord2(string s)
    {
        return s.Trim().Split(' ').Last().Length;
    }


    public static int LengthOfLastWord(string s)
    {
        string[] words = s.Split(' ').Where(e => e.Length > 0).ToArray();
        return words[words.Length - 1].Length;
    }
    static void Main()
    {
        string input = "   fly me   to   the moon  ";
        Console.WriteLine(LengthOfLastWord(input));        
    }
}






