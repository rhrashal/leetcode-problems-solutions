using System;

namespace ConsoleApp1
{
    internal class Program
    {

        static void Main(string[] args)
        {

            int[] arr = new int[] { 1, 2, 3,4 };

            var res = ProductExceptSelf(arr);

            for (int i = 0; i < res.Length; i++)
            {
                Console.WriteLine(res[i]);
            }
            
            Console.ReadKey();
        }
        public static int[] ProductExceptSelf(int[] nums)
        {
            int[] result = new int[nums.Length];

            int leftProduct = 1;
            for (int i = 0; i < nums.Length; i++)
            {
                result[i] = leftProduct;
                leftProduct = leftProduct * nums[i];
            }


            int rightProduct = 1;
            for (int i = nums.Length - 1; i >= 0; i--)
            {
                result[i] = result[i] * rightProduct;
                rightProduct = rightProduct * nums[i];
            }

            return result;
        }

        
    }
}
