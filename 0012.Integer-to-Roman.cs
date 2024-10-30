using System;
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

            Program solution = new Program();

         

            string result2 = solution.IntToRoman(120);
            Console.WriteLine("The longest palindrome is: " + result2);




            Console.ReadKey();
        }



        public string IntToRoman(int num)
        {
            StringBuilder res = new StringBuilder();
            String[] roman = { "M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I" };
            int[] values = { 1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1 };

            int i = 0;
            while (num > 0)
            {
                while (num >= values[i])
                {
                    num -= values[i];
                    res.Append(roman[i]);
                }
                i++;
            }
            return res.ToString();
        }

    }
}
