using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace _12_Banche_StoredProcedure_
{
    public partial class Form1 : Form
    {
        private static readonly string CONNECTION_STRING = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\gsalt\Desktop\info-playground\12-Banche[StoredProcedure]\dbBanche.mdf;Integrated Security=True;Connect Timeout=30";
        public Form1()
        {
            InitializeComponent();
        }

        private void btnSP1_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CONNECTION_STRING))
            {
                con.Open();
                string sql = "[Procedure]";

                using (SqlCommand cmd = new SqlCommand(sql, con))
                {
                    SqlParameter data = new SqlParameter();
                    //data.ParameterName = "numero";

                    //data.Value = numero;
                    data.Direction = ParameterDirection.Input;
                    data.DbType = DbType.Int32;
                    cmd.Parameters.Add(data);

                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        string s = "";

                        for (int i = 0; i < reader.FieldCount; i++)
                        {
                            s += reader.GetValue(i) + " ";
                        }
                    }
                }
            }
        }

        private void btnSP2_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CONNECTION_STRING))
            {
                con.Open();
                string sql = "[Visulizza]";

                using (SqlCommand cmd = new SqlCommand(sql, con))
                {
                    SqlParameter data = new SqlParameter();
                    //data.ParameterName = "comune";

                    //data.Value = v;
                    data.Direction = ParameterDirection.Input;
                    data.DbType = DbType.String;
                    cmd.Parameters.Add(data);

                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlDataReader reader = cmd.ExecuteReader();
                    string s = "";
                    while (reader.Read())
                    {


                        for (int i = 0; i < reader.FieldCount; i++)
                        {
                            s += reader.GetValue(i) + " ";
                        }
                    }
                    Console.WriteLine(s);
                }
            }
        }
    }
}
