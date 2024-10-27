
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
            int[] words = { -1};
            int k = 4;

       
            Program solution = new Program();

            solution.Rotate(words, k);

            foreach (int word in words)
            {
                Console.WriteLine(word);
            }




            Console.ReadKey();
        }


        public void Rotate(int[] nums, int k)
        {
            if (k>nums.Length)
            {
                k = k- nums.Length;
            }

            int[] my = new int[nums.Length];
            Array.Copy(nums, my, nums.Length);

            for (int i = 0; i < my.Length; i++)
            {
                if ((my.Length-k)>i)
                {
                    nums[i + k] = my[i];
                }
                else
                {
                    nums[i - (my.Length - k)] = my[i];
                }
                
            }                   
        }


    }
}
