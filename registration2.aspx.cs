using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class form2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\user\\Documents\\Visual Studio 2010\\WebSites\\timepassWebSite\\App_Data\\DatabaseLogin.mdf;Integrated Security=True;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnSave_Click(object sender, EventArgs e)
    {
        string str;
        if (Male.Checked)
        {
            str = "Male";
        }
        else
        {
            str = "FeMale";
        }

        try
        {
            SqlCommand cmd = new SqlCommand("insert into LoginDetails(id,firstname,lastname,password,cpassword,mobilenumber,emailid,gender,birthdate,address) values('" + TxtId.Text + "','" + TxtFName.Text + "','" + TxtLName.Text + "','" + TxtPass.Text + "','" + TxtCpass.Text + "','" + TxtNumber.Text + "','" + TxtEmailId.Text + "','" + str + "','" + CalBirthday.SelectedDate.ToString() + "','" + TxtAddress.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/SubjectDetails.aspx?ID=" + TxtId.Text);

        }
        catch (Exception gr)
        {
        }
    }

}
