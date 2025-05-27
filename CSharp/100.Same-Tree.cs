using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;

class Program
{

    static void Main()
    {


        TreeNode tree1 = new TreeNode(1, new TreeNode(2));
        TreeNode tree2 = new TreeNode(1, null,new TreeNode(2));

        Console.WriteLine(IsSameTree(tree1, tree2));


        Console.ReadKey();
    }


    public class TreeNode
    {
        public int val;
        public TreeNode left;
        public TreeNode right;
        public TreeNode(int val = 0, TreeNode left = null, TreeNode right = null)
        {
            this.val = val;
            this.left = left;
            this.right = right;
        }
    }

    public static bool IsSameTree(TreeNode p, TreeNode q)
    {
        if (p == null && q == null)
        {
            return true;
        }
        if (p == null || q == null)
        {
            return false;
        }
        if (p.val != q.val)
        {
            return false;
        }
        return IsSameTree(p.left, q.left) && IsSameTree(p.right, q.right);
    } 
}


