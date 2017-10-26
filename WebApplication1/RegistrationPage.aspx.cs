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
            SetVisibleFalse();
            registration_form.Visible = true;
            ChangeContent();
            CheckEmailExist();
        }


        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            UserRegistration();
        }

        protected void ButtonSignIn_Click(object sender, EventArgs e)
        {
            Login();
        }

        protected void Login()
        {
            SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["UsersConnectionString"].ConnectionString);
            sqlConnection.Open();

            string sqlQuery = "select count(*) from Users where Email='" + TextBoxEmailLog.Text + "'";
            SqlCommand sqlCommand = new SqlCommand(sqlQuery, sqlConnection);

            int temp = (int)sqlCommand.ExecuteScalar();
            sqlConnection.Close();

            if (temp == 1)
            {
                sqlConnection.Open();
                string checkPasswordQuery = "select Password from Users where Email='" + TextBoxEmailLog.Text + "'";
                sqlCommand = new SqlCommand(checkPasswordQuery, sqlConnection);

                string password = sqlCommand.ExecuteScalar().ToString().Replace(" ", "");
                if (password == TextBoxPassLog.Text)
                {
                    string checkUserName = "select Name from Users where Email='" + TextBoxEmailLog.Text + "'";
                    sqlCommand = new SqlCommand(checkUserName, sqlConnection);

                    string name = sqlCommand.ExecuteScalar().ToString();
                    labelLoginMessage.Text = $"Hi {name}. You're login!";
                    SetVisibleFalse();
                    login_complete.Visible = true;
                }
                sqlConnection.Close();
            }
        }

        private void UserRegistration()
        {
            try
            {
                SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["UsersConnectionString"].ConnectionString);
                sqlConnection.Open();

                string sqlQuery = "insert into users (Name, Surname, Email, Password) values(@Name, @Surname, @Email, @Password)";

                SqlCommand sqlCommand = new SqlCommand(sqlQuery, sqlConnection);
                sqlCommand.Parameters.AddWithValue("@Name", TextBoxName.Text);
                sqlCommand.Parameters.AddWithValue("@Surname", TextBoxSurname.Text);
                sqlCommand.Parameters.AddWithValue("@Email", TextBoxEmail.Text);
                sqlCommand.Parameters.AddWithValue("@Password", TextBoxPassword.Text);

                sqlCommand.ExecuteNonQuery();

                sqlConnection.Close();

                registration_form.Visible = false;
                success_registration.Visible = true;
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void ChangeContent()
        {
            switch (Request.QueryString["id"])
            {
                case "login":
                    {
                        registration_form.Visible = false;
                        login_form.Visible = true;
                    }
                    break;
                case "manager":
                    {
                        Response.Redirect("Manager.aspx");
                    }
                    break;
            }
        }

        private void SetVisibleFalse()
        {
            login_form.Visible = false;
            login_complete.Visible = false;
            success_registration.Visible = false;
            registration_form.Visible = false;
        }

        private void CheckEmailExist()
        {
            if (Page.IsPostBack)
            {
                SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["UsersConnectionString"].ConnectionString);
                sqlConnection.Open();

                string sqlQuery = "select count(*) from Users where Email=" + "'" + TextBoxEmail.Text + "'";
                SqlCommand sqlCommand = new SqlCommand(sqlQuery, sqlConnection);

                int temp = (int)sqlCommand.ExecuteScalar();
                if (temp == 1)
                {
                    LabelEmailExist.Visible = true;
                }
                sqlConnection.Close();
            }
        }
    }
}