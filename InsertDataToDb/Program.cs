﻿using System;
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
            string sqlConn = "Data Source=serverpu816.database.windows.net;Initial Catalog=test;User ID=pu816;Password=Qwerty1*";
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
