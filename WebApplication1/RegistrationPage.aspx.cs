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
    public partial class RegistrationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["UsersConnectionString"].ConnectionString);
                sqlConnection.Open();

                string sqlQuery = "select count(*) from Users where Email=" + "'" + TBEmail.Text + "'";
                SqlCommand sqlCommand = new SqlCommand(sqlQuery, sqlConnection);

                int temp = (int)sqlCommand.ExecuteScalar();
                if (temp == 1)
                {
                    LabelErrorMassage.Visible = true;
                }
                sqlConnection.Close();
            }
        }

        protected void Button_Submit_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["UsersConnectionString"].ConnectionString);
                sqlConnection.Open();

                string sqlQuery = "insert into users (Name, Surname, Email, Birthday, Password) values(@Name, @Surname, @Email, @Birthday, @Password)";

                SqlCommand sqlCommand = new SqlCommand(sqlQuery, sqlConnection);
                sqlCommand.Parameters.AddWithValue("@Name", TBName.Text);
                sqlCommand.Parameters.AddWithValue("@Surname", TBSurname.Text);
                sqlCommand.Parameters.AddWithValue("@Email", TBEmail.Text);
                sqlCommand.Parameters.AddWithValue("@Birthday", TBBirthday.Text);
                sqlCommand.Parameters.AddWithValue("@Password", TBPass.Text);

                sqlCommand.ExecuteNonQuery();

                sqlConnection.Close();

                Response.Redirect("~/Manager.aspx");
            }
            catch (Exception ex)
            {
               
            }
        }
    }
}