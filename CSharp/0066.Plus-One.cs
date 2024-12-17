using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml.Linq;

namespace ConsoleApp1
{
    internal class Program
    {
        static void Main(string[] args)
        {

            int[] dd = {7, 2, 8, 5, 0, 9, 1, 2, 9, 5, 3, 6, 6, 7, 3, 2, 8, 4, 3, 7, 9, 5, 7, 7, 4, 7, 4, 9, 4, 7, 0, 1, 1, 1, 7, 4, 0, 0, 6};
            int[] ee = { 9, 9, 9, 9 };

            Program program = new Program();

            foreach (var item in program.PlusOne(dd))
            {
                Console.WriteLine(item.ToString());
            }
            
           

            Console.ReadKey();
        }
        public int[] PlusOne(int[] digits)
        {
            for (int i = digits.Length - 1; i >= 0; i--)
            {
                digits[i] += 1;
                if (digits[i] != 10) return digits;
                digits[i] = 0;
            }
            int[] newArray = new int[digits.Length + 1];

            newArray[0] = 1;
            return newArray;
        }

        public int[] PlusOne1(int[] digits)
        {
            string s = "";
            foreach (int i in digits)
            {
                s = s.ToString() + i.ToString();
            }
            if (s.Length == 0)
            {
                return new int[0];
            }
            long aa = Convert.ToInt64(s) + 1;
            int[] myarry = new int[aa.ToString().Length];
            for (int i = 0; i < aa.ToString().Length; i++)
            {
                myarry[i] = Convert.ToInt32(aa.ToString()[i].ToString());
            }
            return myarry;
        }

    }


}
