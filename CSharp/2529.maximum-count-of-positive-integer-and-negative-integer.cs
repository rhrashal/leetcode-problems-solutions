using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Runtime.CompilerServices;

class Program
{

 
    public static void Main()
    {
        
        int res = MaximumCount(new int[] { -9,-5,-4,-3,-1,0,0, 1, 2, 3 });
        Console.WriteLine(res);

        Console.ReadKey();
    }

    public static int MaximumCount(int[] nums)
    {
        int arraylength = nums.Length; // 7

        int negativecount = 0;
        int positivecount = 0;

        for (int i = 0; i < nums.Length; i++)
        {
            arraylength--;
            if (nums[i] < 0)
            {
                negativecount++;
            }
            if(nums[arraylength] > 0)
            {
                positivecount++;
            }
        }
        return negativecount > positivecount ? negativecount : positivecount;
    }

}


