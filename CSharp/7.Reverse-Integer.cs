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

            int ee = -120;
            Console.WriteLine(new Program().Reverse2(ee));



            Console.ReadKey();
        }
        public int Reverse(int x)
        {

            try
            {
                string dd = x.ToString();
                string rr="";
                for (int i = dd.Length-1; i >= 0; i--) 
                {
                    Console.WriteLine(dd[i]);
                    if (dd[i].ToString() == "-")
                    {
                        rr = dd[i].ToString()+ rr;
                    }
                    else 
                    {
                        rr+=dd[i].ToString();
                    }

                }
                x = Convert.ToInt32(rr);
            }
            catch (Exception ex)
            {
                return 0;
            }
            return x;
        }
        public int Reverse2(int x)
        {
            var result = 0;

            while (x != 0)
            {
                var remainder = x % 10;
                var temp = result * 10 + remainder;

                // in case of overflow, the current value will not be equal to the previous one
                if ((temp - remainder) / 10 != result)
                {
                    return 0;
                }

                result = temp;
                x /= 10;
            }

            return result;
        }
    }

}
