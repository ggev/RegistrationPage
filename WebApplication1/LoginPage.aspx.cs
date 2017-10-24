using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Login_Click(object sender, EventArgs e)
        {
            SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["UsersConnectionString"].ConnectionString);
            sqlConnection.Open();

            string sqlQuery = "select count(*) from Users where Email='" + TBEmail.Text + "'";
            SqlCommand sqlCommand = new SqlCommand(sqlQuery, sqlConnection);

            int temp = (int)sqlCommand.ExecuteScalar();
            sqlConnection.Close();

            if (temp == 1)
            {
                sqlConnection.Open();
                string checkPasswordQuery = "select Password from Users where Email='" + TBEmail.Text + "'";
                sqlCommand = new SqlCommand(checkPasswordQuery, sqlConnection);

                string password = sqlCommand.ExecuteScalar().ToString().Replace(" ","");
                if (password == TBPass.Text)
                {
                    Response.Write("You're login");
                }
                sqlConnection.Close();
            }
        }
    }
}