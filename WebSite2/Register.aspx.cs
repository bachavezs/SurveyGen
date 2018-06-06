using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        ConnectionStringSettings settings =
            ConfigurationManager.ConnectionStrings["Group Project"];

        string connectionString = settings.ConnectionString;


        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            // RegisterUser Stored Procedure
            SqlCommand command = new SqlCommand();
            command.Connection = connection;
            command.CommandText = "dbo.RegisterUser";
            command.CommandType = CommandType.StoredProcedure;

            SqlParameter parameter = new SqlParameter();
            parameter.ParameterName = "@firstName";
            parameter.SqlDbType = SqlDbType.VarChar;
            parameter.Direction = ParameterDirection.Input;
            parameter.Value = txtFirstName.Text.Trim();
            // Add the parameter
            command.Parameters.Add(parameter);

            parameter = new SqlParameter();
            parameter.ParameterName = "@lastName";
            parameter.SqlDbType = SqlDbType.VarChar;
            parameter.Direction = ParameterDirection.Input;
            parameter.Value = txtLastName.Text.Trim();
            // Add the parameter
            command.Parameters.Add(parameter);

            parameter = new SqlParameter();
            parameter.ParameterName = "@email";
            parameter.SqlDbType = SqlDbType.VarChar;
            parameter.Direction = ParameterDirection.Input;
            parameter.Value = txtEmail.Text.Trim();
            // Add the parameter
            command.Parameters.Add(parameter);

            parameter = new SqlParameter();
            parameter.ParameterName = "@password";
            parameter.SqlDbType = SqlDbType.VarChar;
            parameter.Direction = ParameterDirection.Input;
            parameter.Value = txtPassword.Text.Trim();
            // Add the parameter
            command.Parameters.Add(parameter);

            parameter = new SqlParameter();
            parameter.ParameterName = "@username";
            parameter.SqlDbType = SqlDbType.VarChar;
            parameter.Direction = ParameterDirection.Input;
            parameter.Value = txtUsername.Text.Trim();
            // Add the parameter
            command.Parameters.Add(parameter);

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            string username = string.Empty;

            reader.Close();
        }

    }
}