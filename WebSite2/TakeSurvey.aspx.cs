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

public partial class TakeSurvey : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public int IDSTORAGE
    {
        get; set;
    }



    protected void btnSelect_Click(object sender, EventArgs e)
    {
        List<string> list = new string[] { }.ToList();
        int counter = 0;
        ConnectionStringSettings settings =
          ConfigurationManager.ConnectionStrings["Group Project"];

        string connectionString = settings.ConnectionString;


        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            // Create the command and set its properties.
            SqlCommand command = new SqlCommand();
            command.Connection = connection;
            command.CommandText = "dbo.GetSurveyIDbyName";
            command.CommandType = CommandType.StoredProcedure;

            SqlParameter parameter = new SqlParameter();
            parameter = new SqlParameter();
            parameter.ParameterName = "@SurveyName";
            parameter.SqlDbType = SqlDbType.VarChar;
            parameter.Direction = ParameterDirection.Input;
            parameter.Value = DropDownList1.Text.Trim();
            // Add the parameter to the Parameters collection. 
            command.Parameters.Add(parameter);

            connection.Open();

            SqlDataReader reader = command.ExecuteReader();
            reader.Read();
            string SurveyID = string.Empty;
            SurveyID = Convert.ToString(reader["surveyID"]);
            IDSTORAGE = Convert.ToInt32(SurveyID);


            SqlCommand command1 = new SqlCommand();
            command1.Connection = connection;
            command1.CommandText = "dbo.GetQuestionsbySurveyID";
            command1.CommandType = CommandType.StoredProcedure;


            SqlParameter parameter1 = new SqlParameter();
            parameter1 = new SqlParameter();
            parameter1.ParameterName = "@SurveyID";
            parameter1.SqlDbType = SqlDbType.Int;
            parameter1.Direction = ParameterDirection.Input;
            parameter1.Value = Convert.ToInt32(SurveyID);
            command1.Parameters.Add(parameter1);

            SqlDataReader reader1 = command1.ExecuteReader();
            reader1.Read();
            var myString = reader1.GetString(0);
            list.Add(myString);
            foreach (var item in reader1)
            {

                int counternew = 0;
                var loopstring = reader1.GetString(counternew);
                list.Add(loopstring);
                counternew += 1;
            }




            //test
            //Label1.Text = list[0].ToString();
            //Label2.Text = list[1].ToString();
            //test

            //important!!!
            {
                int numOfTxt = list.Count();
                var table = new Table();
                int dongle = 0;
                for (int i = 0; i < numOfTxt; i++)
                {

                    var row = new TableRow();
                    var cell = new TableCell();

                    Label label = new Label();
                    label.ID = "Label" + (i);
                    label.Text = list[dongle].ToString();

                    cell.Controls.Add(label);
                    row.Cells.Add(cell);
                    table.Rows.Add(row);

                    TextBox textbox = new TextBox();
                    textbox.ID = "Textbox" + i;
                    textbox.Width = new Unit(180);

                    cell.Controls.Add(textbox);
                    row.Cells.Add(cell);
                    table.Rows.Add(row);
                    dongle += 1;
                }
                container.ID = "dynamictext";
                container.Controls.AddAt(0, table);
                container.Visible = true;
            }

            {

                var textboxValues = new List<string>();
                ViewState["DynamicControls"] = textboxValues;
                if (Request.Form.HasKeys())
                {
                    Request.Form.AllKeys.Where(i => i.Contains("Textbox")).ToList().ForEach(i =>
                    {
                        textboxValues.Add(Request.Form[i]);
                    });
                }
                // IMPORTANT !!


            }

        }
    }

    protected void Submit(object sender, EventArgs e)
    {
        var list2 = new List<Int32>();
        var textboxValues = new List<string>();
        ViewState["DynamicControls"] = textboxValues;
        if (Request.Form.HasKeys())
        {
            Request.Form.AllKeys.Where(i => i.Contains("Textbox")).ToList().ForEach(i =>
            {
                textboxValues.Add(Request.Form[i]);
            });
        }




        //Submit to database
        ConnectionStringSettings settings =
           ConfigurationManager.ConnectionStrings["Group Project"];

        string connectionString = settings.ConnectionString;




        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            SqlCommand command1 = new SqlCommand();
            command1.Connection = connection;
            command1.CommandText = "dbo.GetQuestionIDSbysurveyID";
            command1.CommandType = CommandType.StoredProcedure;

            SqlParameter
                parameter1 = new SqlParameter();
            parameter1.ParameterName = "@SurveyID";
            parameter1.SqlDbType = SqlDbType.Int;
            parameter1.Direction = ParameterDirection.Input;
            parameter1.Value = IDSTORAGE;
            command1.Parameters.Add(parameter1);

            connection.Open();
            SqlDataReader reader1 = command1.ExecuteReader();
            foreach (var item in reader1)
            {

                int counternew = 0;
                Int32 loopint = reader1.GetInt32(counternew);
                list2.Add(loopint);
                counternew += 1;
            }



            foreach (var item in textboxValues)
            {
                int counternew = 0;

                //Create the command and set its properties.
                SqlCommand command = new SqlCommand();
                command.Connection = connection;
                command.CommandText = "dbo.AddAnswer";
                command.CommandType = CommandType.StoredProcedure;

                SqlParameter
                //parameter = new SqlParameter();
                //parameter.ParameterName = "@questionID";
                //parameter.SqlDbType = SqlDbType.Int;
                //parameter.Direction = ParameterDirection.Input;
                //parameter.Value = IDSTORAGE;
                //command.Parameters.Add(parameter);

                parameter = new SqlParameter();
                parameter.ParameterName = "@AnswerInput";
                parameter.SqlDbType = SqlDbType.VarChar;
                parameter.Direction = ParameterDirection.Input;
                parameter.Value = item;
                command.Parameters.Add(parameter);


                counternew = counternew + 1;


                SqlDataReader reader = command.ExecuteReader();
            }
        }
    }
}







