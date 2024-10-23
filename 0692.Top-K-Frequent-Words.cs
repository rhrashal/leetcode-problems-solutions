using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml.Linq;

namespace ConsoleApp1
{
    public class ListNode
    {
        public int val;
        public ListNode next;
        public ListNode(int val = 0, ListNode next = null)
        {
            this.val = val;
            this.next = next;
        }
    }

    internal class Program
    {

        static void Main(string[] args)
        {

            // Example input: list of words
            string[] words = {  "love", "leetcode", "coding", "i", "love", "coding" };
            int k = 2;

            // Creating an instance of the class that contains the TopKFrequent method
            Program solution = new Program();

            // Calling the TopKFrequent method
            IList<string> topKWords = solution.TopKFrequent(words, k);

            // Printing the result
            Console.WriteLine("Top " + k + " frequent words:");
            foreach (string word in topKWords)
            {
                Console.WriteLine(word);
            }




            Console.ReadKey();
        }



        public IList<string> TopKFrequent(string[] words, int k)
        {
            return words.GroupBy(word => word).OrderByDescending(freq => freq.Count()).ThenBy(freq => freq.Key).Take(k).Select(freq => freq.Key).ToList();
        }

    }
}

