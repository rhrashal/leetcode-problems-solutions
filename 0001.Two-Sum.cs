using System;
using System.Collections.Generic;

namespace ConsoleApp1
{
    internal class Program
    {

        static void Main(string[] args)
        {

            int[] arr = new int[] { 2, 7, 11, 15 };
            int target=17;
            var res = TwoSum(arr, target);



            for (int i = 0; i < res.Length; i++)
            {
                Console.WriteLine(res[i]);
            }
            
            Console.ReadKey();
        }



        public static int[] TwoSum(int[] nums, int target)
        {
            int arrayLength = nums.Length;
            Dictionary<int, int> resultDictionary = new Dictionary<int, int>();
 
            if (nums == null || arrayLength < 2)
            {
                return Array.Empty<int>();
            }

            for (int i = 0; i < arrayLength; i++)
            {
                int firstNumber = nums[i];
                int secondNumber = target - firstNumber;                         
                if (resultDictionary.TryGetValue(secondNumber, out int index))   
                {
                    return new[]   { index, i };   /// index = first number index which return TryGetValue method and i runing index of for loop
                }
                resultDictionary[firstNumber] = i;
            }
            return Array.Empty<int>(); ;
        }


    }
}
