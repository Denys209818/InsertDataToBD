using System;
using System.Data.SqlClient;
using System.IO;
using System.Reflection;
using System.Text;

namespace InsertDataToDb
{
    class Program
    {
        static void Main()
        {
            Console.OutputEncoding = Encoding.Unicode;
            Console.InputEncoding = Encoding.Unicode;
            string sqlConn = "Data Source=denyskravchuk.database.windows.net;Initial Catalog=Academy;Persist Security Info=True;User ID=denys;Password=$denus2005$";
            SqlConnection sql = new SqlConnection(sqlConn);
            try
            {
                sql.Open();
                if (File.Exists(Assembly.GetExecutingAssembly().Location + @"\..\..\..\..\SQL\InsertToDb.sql"))
                {
                    string query = File.ReadAllText(Assembly.GetExecutingAssembly().Location + @"\..\..\..\..\SQL\InsertToDb.sql");
                    SqlCommand command = new SqlCommand(query);
                    try
                    {
                        command.Connection = sql;
                        command.ExecuteNonQuery();
                        Console.WriteLine("БД заповнено!");
                    }
                    catch 
                    {
                        Console.WriteLine("Error! (Не можна деілька разів заповнювати дані двічі!)");
                    }
                    finally
                    {
                        sql.Close();
                    }
                }
                sql.Close();
            } 
            catch
            {
                Console.WriteLine("Error connect to DB!");
            }
        }
    }
}
