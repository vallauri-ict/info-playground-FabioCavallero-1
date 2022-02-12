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
            string sql = "cercaFiliali";
            using (SqlConnection con = new SqlConnection(CONNECTION_STRING))
            {
                con.Open();

                using (SqlCommand cmd = new SqlCommand(sql, con))
                {
                    SqlParameter nomeBanca = new SqlParameter();
                    nomeBanca.Value = txtBanca.Text;
                    nomeBanca.ParameterName = "nomeBanca";
                    nomeBanca.Direction = ParameterDirection.Input;
                    nomeBanca.DbType = DbType.String;
                    nomeBanca.Size = 50;
                    cmd.Parameters.Add(nomeBanca);

                    SqlParameter comune = new SqlParameter();
                    comune.Value = txtComune.Text;
                    comune.ParameterName = "comune";
                    comune.Direction = ParameterDirection.Input;
                    comune.DbType = DbType.String;
                    comune.Size = 50;
                    cmd.Parameters.Add(comune);

                    cmd.CommandType = CommandType.StoredProcedure;

                    int ris = cmd.ExecuteNonQuery();
                    MessageBox.Show("Risultato cercaFiliali: " + ris);
                }
            }
        }

        private void btnSP2_Click(object sender, EventArgs e)
        {
            string sql = "comuneFiliali";
            using (SqlConnection con = new SqlConnection(CONNECTION_STRING))
            {
                con.Open();

                using (SqlCommand cmd = new SqlCommand(sql, con))
                {
                    SqlParameter nomeBanca = new SqlParameter();
                    nomeBanca.Value = txtBanca.Text;
                    nomeBanca.ParameterName = "nomeBanca";
                    nomeBanca.Direction = ParameterDirection.Input;
                    nomeBanca.DbType = DbType.String;
                    nomeBanca.Size = 50;
                    cmd.Parameters.Add(nomeBanca);

                    SqlParameter totale = new SqlParameter();
                    totale.ParameterName = "totale";
                    totale.Direction = ParameterDirection.Output;
                    totale.DbType = DbType.Int32;
                    cmd.Parameters.Add(totale);

                    SqlParameter comune = new SqlParameter();
                    comune.Value = txtComune.Text;
                    comune.ParameterName = "comune";
                    comune.Direction = ParameterDirection.Input;
                    comune.DbType = DbType.String;
                    comune.Size = 50;
                    cmd.Parameters.Add(comune);

                    cmd.CommandType = CommandType.StoredProcedure;
                    int ris = cmd.ExecuteNonQuery();

                    /*while (ris.Read())
                    {
                        string s = "";
                        for (int i = 0; i < ris.FieldCount; i++)
                        {
                            s += ris.GetValue(i) + " - ";
                        }
                        MessageBox.Show(s.ToString(),"Risultato Stored");
                    }*/
                    MessageBox.Show("Totale filiali: " + cmd.Parameters["totale"].Value);
                }
            }
        }
    }
}
