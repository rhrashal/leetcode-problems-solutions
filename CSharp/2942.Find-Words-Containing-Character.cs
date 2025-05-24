using System;
using System.Collections.Generic;
using System.Linq;

class Program
{
    public static IList<int> FindWordsContaining(string[] words, char x)
    {
        List<int> result = new List<int>();
        for (int i = 0; i < words.Length; i++)
        {
            if (words[i].Contains(x))
            {
                result.Add(i);
            }
        }
        return result;
    }


    static void Main()
    {
        string[] wordList = { "apple", "banana", "grape", "kiwi" };
        char searchChar = 'a';

        IList<int> indices = FindWordsContaining(wordList, searchChar);

        foreach (int index in indices)
        {
            Console.WriteLine($"Character '{searchChar}' found in word '{wordList[index]}' at index {index}");
        }


        Console.ReadKey();
    }
}
