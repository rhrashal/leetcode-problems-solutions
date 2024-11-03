using System;
using System.Linq;
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

            Program solution = new Program();

            // Calling the AddTwoNumbers method
            int result = solution.LengthOfLongestSubstring("Banglaseshdfgdddd");
           

            Console.WriteLine(result);




            Console.ReadKey();
        }



        public int LengthOfLongestSubstring(string s)
        {
            int maxLength = 0;

            for (var i = 0; i < s.Length; i++)
            {
                for (var j = maxLength; j <= s.Length - i; j++)
                {
                    if (maxLength < j)
                    {
                        string subStr = s.Substring(i, j);
                        if (subStr.Length == subStr.Distinct().Count())
                        {
                            maxLength = j;
                        }
                        else
                        {
                            break;
                        }
                    }
                }
            }

            return maxLength;
        }

    }
}
