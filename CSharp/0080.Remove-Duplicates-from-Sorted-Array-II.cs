using System;

class Program
{
    public static int RemoveDuplicates(int[] nums)
    {
        if (nums.Length == 0) return 0;
        int first = nums[0];
        int count = 0,p=0;
        for (int i = 0; i < nums.Length; i++)
        {
            if (i == 0 || nums[i] != nums[i - 1] )
            {
                nums[p] = nums[i];
                first = nums[i];
                count++; 
                p++;
            }
            else if (first == nums[i])
            {
                nums[p] = nums[i];
                first = nums[i] - 1;
                count++; 
                p++;
            }
             
        }
   
        return count;
    }


    static void Main()
    {
        int[] nums = {  -1, -1, -1, -1};

        Console.WriteLine(RemoveDuplicates(nums));

        for (int i = 0; i < nums.Length; i++) 
        {
            Console.WriteLine(nums[i]);
            
        }

        Console.ReadKey();
    }
}
