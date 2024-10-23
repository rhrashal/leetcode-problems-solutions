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

            string s = "babad";
            string result = solution.LongestPalindrome(s);
            Console.WriteLine("The longest palindrome is: " + result);

            string s2 = "cbbd";
            string result2 = solution.LongestPalindrome(s2);
            Console.WriteLine("The longest palindrome is: " + result2);




            Console.ReadKey();
        }



        public string LongestPalindrome(string s)
        {
            int ll = 0, rr = 0;

            for (int i = 0; i < s.Length; i++)
            {
                foreach (int j in new int[] { i, i + 1 })
                {
                    int l = i, r = j;
                    while (l >= 0 && r < s.Length && s[l] == s[r])
                    {
                        if ((r - l + 1) > (rr - ll + 1))
                        {
                            ll = l;
                            rr = r;
                        }
                        l--;
                        r++;
                    }
                }
            }

            return s.Substring(ll, rr - ll + 1);
        }

    }
}
