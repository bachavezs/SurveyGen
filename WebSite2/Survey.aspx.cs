using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public static class Global
{
    public static Int32 Counter = 100003;
}

public partial class Surveys : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }


    

    protected void Submit(object sender, EventArgs e)
    {
     
        string Username = string.Empty;
        if (Convert.ToString(Session["Username"]) != null)
            Username = Convert.ToString(Session["Username"]);

      

        //Submit to database
        ConnectionStringSettings settings =
           ConfigurationManager.ConnectionStrings["Group Project"];

        string connectionString = settings.ConnectionString;

        {


            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Create the command and set its properties.
                SqlCommand command = new SqlCommand();
                command.Connection = connection;
                command.CommandText = "dbo.AddSurvey";
                command.CommandType = CommandType.StoredProcedure;

                SqlParameter parameter = new SqlParameter();
                parameter = new SqlParameter();
                parameter.ParameterName = "@surveyname";
                parameter.SqlDbType = SqlDbType.VarChar;
                parameter.Direction = ParameterDirection.Input;
                parameter.Value = txtSurveyName.Text.Trim();
                command.Parameters.Add(parameter);

                parameter = new SqlParameter();
                parameter.ParameterName = "@surveydescription";
                parameter.SqlDbType = SqlDbType.VarChar;
                parameter.Direction = ParameterDirection.Input;
                parameter.Value = txtSurveyDescription.Text.Trim();
                command.Parameters.Add(parameter);



                connection.Open();




                SqlDataReader reader = command.ExecuteReader();

                Response.Redirect("Questions.aspx");
            }


        }

    }
}