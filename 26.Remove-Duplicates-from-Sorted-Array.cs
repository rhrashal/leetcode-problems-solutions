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

            int[] ints = {  1, 2, 2, 3, 4 };

            int dd = new Program().RemoveDuplicates(ints);

            Console.WriteLine(dd);
            for (int i = 0; i < ints.Length; i++)
            {
                Console.WriteLine(ints[i]);
            }

            Console.ReadKey();
        }


        public int RemoveDuplicates(int[] nums)
        {
           int j = 0;
            for (int i = 1;i<nums.Length; i++)
            {
                if (nums[j] != nums[i])
                {
                    j++;
                    nums[j] = nums[i];
                }
            }
            return j+1;
        }




        public int RemoveDuplicates1(int[] nums)
        {
            if (nums.Length == 0) return 0;

            int uniqueCount = 1;

            for (int i = 1; i < nums.Length; i++)
            {
                if (nums[i] != nums[i - 1])
                {
                    nums[uniqueCount++] = nums[i];
                }
            }

            return uniqueCount;

        }
    }


}
