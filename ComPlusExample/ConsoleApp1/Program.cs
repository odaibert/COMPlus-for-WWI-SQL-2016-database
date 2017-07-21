using COMPlusServicesExample;
using System;
using System.Data;

namespace ClientExample
{
    class Program
    {
        static void Main(string[] args)
        {
            OrderDB orderdb = new OrderDB();
            DataSet ds = orderdb.GetOrderDetails(4);
            Console.WriteLine(ds.Tables[0].Rows[0][0].ToString());

            OrderDB.Orders orders = new OrderDB.Orders();
            orders.UpdateOrderDetailQuantity(5, "155", 99);
            Console.WriteLine("Updated!");
            Console.ReadLine(); 

        }
    }
}
