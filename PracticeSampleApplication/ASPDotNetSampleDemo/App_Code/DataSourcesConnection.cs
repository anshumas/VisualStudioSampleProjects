using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace ASPDotNetSampleDemo
{

    public static class DataSourcesConnection
    {
        private static readonly string sqlConnectionString = string.Empty;
        static DataSourcesConnection()
        {
            sqlConnectionString = System.Configuration.ConfigurationManager.AppSettings["sqlConnection"];
            if (string.IsNullOrEmpty(sqlConnectionString) || !CheckConnection(sqlConnectionString))
            {
                throw new Exception("Required Valid Connection String");
            }

        }
        private static bool CheckConnection(string sqlConnectionString)
        {
            SqlConnection con = new SqlConnection(sqlConnectionString);
            try
            {
                con.Open();
                con.Close();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
            finally
            {
                con.Close();
                con.Dispose();
            }


            throw new NotImplementedException();
        }

        private static SqlConnection OpenConnection()
        {
            SqlConnection con = new SqlConnection(sqlConnectionString);
            try
            {
                
                con.Open();
                
                return con;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        private static void CloseConnection(SqlConnection con)
        {
            
            try
            {
                con.Close();
                con.Dispose();

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static DataTable Login(string username, string password)
        {
            SqlConnection conn = new SqlConnection();
            try
            {
                DataTable dtResult = new DataTable();
                conn = OpenConnection();
                SqlCommand cmd = new SqlCommand("select ID from login where username='" + username + "' and password='" + password + "'", conn);
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(dtResult);
                return dtResult;
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                CloseConnection(conn);
            }


        }
    }
}