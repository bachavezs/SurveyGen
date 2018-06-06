using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        ConnectionStringSettings settings =
           ConfigurationManager.ConnectionStrings["Group Project"];

        string connectionString = settings.ConnectionString;


        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            // Create the command and set its properties.
            SqlCommand command = new SqlCommand();
            command.Connection = connection;
            command.CommandText = "dbo.LoginUser";
            command.CommandType = CommandType.StoredProcedure;

            SqlParameter parameter = new SqlParameter();
            parameter = new SqlParameter();
            parameter.ParameterName = "@UserName";
            parameter.SqlDbType = SqlDbType.VarChar;
            parameter.Direction = ParameterDirection.Input;
            parameter.Value = txtUsername.Text.Trim();
            // Add the parameter to the Parameters collection. 
            command.Parameters.Add(parameter);

            parameter = new SqlParameter();
            parameter.ParameterName = "@Password";
            parameter.SqlDbType = SqlDbType.VarChar;
            parameter.Direction = ParameterDirection.Input;
            parameter.Value = txtPassword.Text.Trim();
            // Add the parameter to the Parameters collection. 
            command.Parameters.Add(parameter);

            connection.Open();

            SqlDataReader reader = command.ExecuteReader();
            string firstName = string.Empty;
            string lastName = string.Empty;
            string email = string.Empty;


            if (reader.HasRows)
            {
                if (reader.Read())
                {

                    //memberId = Convert.ToInt32(reader["memberId"]);
                    firstName = Convert.ToString(reader["firstName"]);
                    lastName = Convert.ToString(reader["lastName"]);
                    email = Convert.ToString(reader["email"]);

                    lblResult.Text = "Login Successful" + "<br/>";
                    lblResult.Text += "Email: " + email + "<br/>";
                    lblResult.Text += "FirstName: " + firstName + "<br/>";
                    lblResult.Text += "LastName: " + lastName + "<br/>";


                    Session["email"] = email;
                    Session["firstName"] = firstName;
                    Session["lastName"] = lastName;



                }
            }
            else
            {
                lblResult.Text = "Incorrect Login";
            }
            reader.Close();
        }
    }
}
