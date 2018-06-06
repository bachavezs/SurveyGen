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

public partial class Questions : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Add(object sender, EventArgs e)
    {
        int numOfTxt = Convert.ToInt32(ddlTextBoxes.SelectedItem.Value);
        var table = new Table();

        for (int i = 0; i < numOfTxt; i++)
        {
            var row = new TableRow();
            var cell = new TableCell();

            Label label = new Label();
            label.ID = "Label" + (i + 1);
            label.Text = "Question #" + (i + 1) + ":";

            cell.Controls.Add(label);
            row.Cells.Add(cell);
            table.Rows.Add(row);

            TextBox textbox = new TextBox();
            textbox.ID = "Textbox" + i;
            textbox.Width = new Unit(180);

            cell.Controls.Add(textbox);
            row.Cells.Add(cell);
            table.Rows.Add(row);
        }
        container.ID = "dynamictext";
        container.Controls.AddAt(0, table);
        container.Visible = true;
    }

    protected void Submit(object sender, EventArgs e)
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

        string Username = string.Empty;
        if (Convert.ToString(Session["Username"]) != null)
            Username = Convert.ToString(Session["Username"]);



        //Submit to database
        ConnectionStringSettings settings =
           ConfigurationManager.ConnectionStrings["Group Project"];

        string connectionString = settings.ConnectionString;




        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            SqlCommand command1 = new SqlCommand();
            command1.Connection = connection;
            command1.CommandText = "dbo.GetMaxSurvey";
            command1.CommandType = CommandType.StoredProcedure;

            connection.Open();
            SqlDataReader reader1 = command1.ExecuteReader();

            reader1.Read();
            //String SurveyID = Session["surveyID"].ToString();
            int SurveyID = 0;
            SurveyID = Convert.ToInt32(reader1[""]);
            Label1.Text = "Submission Succesful!";

            foreach (var item in textboxValues)
            {


                //Create the command and set its properties.
                SqlCommand command = new SqlCommand();
                command.Connection = connection;
                command.CommandText = "dbo.AddQuestion";
                command.CommandType = CommandType.StoredProcedure;

                SqlParameter
                parameter = new SqlParameter();
                parameter.ParameterName = "@questiontxt";
                parameter.SqlDbType = SqlDbType.VarChar;
                parameter.Direction = ParameterDirection.Input;
                parameter.Value = item;
                command.Parameters.Add(parameter);

                parameter = new SqlParameter();
                parameter.ParameterName = "@surveyID";
                parameter.SqlDbType = SqlDbType.Int;
                parameter.Direction = ParameterDirection.Input;
                parameter.Value = SurveyID;
                command.Parameters.Add(parameter);





                SqlDataReader reader = command.ExecuteReader();
            }


        }

    }
}
