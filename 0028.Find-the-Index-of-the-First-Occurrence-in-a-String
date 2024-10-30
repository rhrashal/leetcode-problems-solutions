using System;
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


            int dd = new Program().StrStr("leetcode", "leeto");

            Console.WriteLine(dd);
            

            Console.ReadKey();
        }




        public int StrStr(string haystack, string needle)
        {
            for (int i = 0; i < haystack.Length; i++) 
            {
                if (i<=(haystack.Length-needle.Length))
                {
                    string ck = haystack.Substring(i, needle.Length);
                    if (ck == needle)
                    {
                        return i;
                    }
                }
                
            }
            return -1;
        }
    }


}
