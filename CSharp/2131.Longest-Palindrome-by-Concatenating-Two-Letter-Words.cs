using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;

class Program
{
    
    static void Main()
    {
       
        //string[] wordList1 = { "lc", "cl", "gg" };
        string[] wordList2 = { "ab", "ty", "yt", "lc", "cl", "ab" };
        //string[] wordList3 = { "cc", "ll", "xx" };
        //string[] wordList4 = { "ll", "xx", "ll", "xx", "zz", "zz" };

        //Console.WriteLine(LongestPalindrome(wordList1)); 
        Console.WriteLine(LongestPalindrome(wordList2)); 
        //Console.WriteLine(LongestPalindrome(wordList3)); 
        //Console.WriteLine(LongestPalindrome(wordList4)); 

        Console.ReadKey();
    }

    public static int LongestPalindrome(string[] words)
    {
        var dictionary = new Dictionary<string, int>();
        int pairCount = 0;
        int sameLetterSingle = 0;

        foreach (var word in words)
        {
            string revText = new string(word.Reverse().ToArray());

            if (dictionary.ContainsKey(revText) && dictionary[revText] > 0)
            {
                pairCount += 4; 
                dictionary[revText]--;
            }
            else
            {
                if (!dictionary.ContainsKey(word))
                    dictionary[word] = 0;
                dictionary[word]++;
            }
        }
       
        foreach (var kv in dictionary)
        {
            var a = kv.Key[0];
            var b = kv.Key[1];
            if (kv.Key[0] == kv.Key[1] && kv.Value > 0)
            {
                sameLetterSingle = 2;
                break;
            }
        }

        return pairCount + sameLetterSingle;
    }
}