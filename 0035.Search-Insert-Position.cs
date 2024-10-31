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
            int[] mydata = { 1, 2, 3, 5, 6, 8 };


            int dd = new Program().SearchInsert(mydata, 9);

            Console.WriteLine(dd);
            

            Console.ReadKey();
        }

        public int SearchInsert(int[] nums, int target)
        {
            int i = 0;
            for ( i = 0;i<nums.Length; i++)
            {
                if (nums[i] == target)
                {
                    return i;
                }
                else 
                {
                    if (nums[i] > target)
                    {
                        return i;
                    }                        
                }
               
            }
            return i;
        }



    }


}
