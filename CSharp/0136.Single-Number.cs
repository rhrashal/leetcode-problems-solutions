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

            int[] ee = { 9, 9, 7, 9 };
            Console.WriteLine(new Program().SingleNumber(ee));



            Console.ReadKey();
        }
        public int SingleNumber(int[] nums)
        {
            for (int i = 0; i < nums.Length; i++)
            {
                var newInt= nums.Where(e => e == nums[i]);
                if (newInt.Count()>1)
                {
                    continue;
                }
                return nums[i];
            }
            return 0;
        }

    }


}
