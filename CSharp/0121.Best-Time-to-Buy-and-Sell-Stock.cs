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

            int[] ee = { 9, 8, 7, 9 };
            Console.WriteLine(new Program().MaxProfit(ee));



            Console.ReadKey();
        }
        public int MaxProfit(int[] prices)
        {
            // get first elements of array
            int minVal = prices[0];
            // set minimum max value 0
            int maxVal = 0;

            for (int i = 0; i < prices.Length; i++)
            {
                //find minimum value from current value and previous minimum value
                minVal = Math.Min(minVal, prices[i]);
                //find profit from current value and minimum value
                int profit = prices[i]-minVal;
                // update max profit 
                maxVal= Math.Max(maxVal, profit);
            }
            return maxVal;
        }

    }


}
