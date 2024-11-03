using System;

namespace ConsoleApp1
{
    internal class Program
    {

        static void Main(string[] args)
        {

            Program prg = new Program();


            int[] nums1 = { 1, 3 };
            int[] nums2 = { 2 };

            double median = prg.FindMedianSortedArrays(nums1, nums2);
            Console.WriteLine("The median is: " + median);

            // Another example
            int[] nums1_2 = { 1, 2 };
            int[] nums2_2 = { 3, 4 };

            double median2 = prg.FindMedianSortedArrays(nums1_2, nums2_2);
            Console.WriteLine("The median is: " + median2);


            Console.ReadKey();
        }



        public double FindMedianSortedArrays(int[] nums1, int[] nums2)
        {
            int size = nums1.Length + nums2.Length;

            if (size == 0) return 0.0;
            if (size == 1) return nums1.Length > 0 ? nums1[0] : nums2[0];

            double median = (size + 1) / 2.0;
            int medianMin = (int)Math.Floor(median);
            int medianMax = (int)Math.Ceiling(median);
            int[] result = new int[medianMax];

            int i = 0, j = 0;

            for (int k = 0; k < medianMax; k++)
            {
                if (i < nums1.Length && (j >= nums2.Length || nums1[i] < nums2[j]))
                {
                    result[k] = nums1[i++];
                }
                else
                {
                    result[k] = nums2[j++];
                }
            }

            return (result[medianMin - 1] + result[medianMax - 1]) / 2.0;
        }

    }
}
