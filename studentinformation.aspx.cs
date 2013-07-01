using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class studentinformation : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\user\\Documents\\Visual Studio 2010\\WebSites\\timepassWebSite\\App_Data\\DatabaseLogin.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnSave_Click(object sender, EventArgs e)
    {
        SqlDataAdapter cmd = new SqlDataAdapter("select password from LoginDetails where id='"+TxtName.Text+"'", con);
        DataSet sd = new DataSet();
        con.Open();
        cmd.Fill(sd, "11");
        con.Close();
        if (sd.Tables[0].Rows.Count > 0)
        {
            string password = sd.Tables[0].Rows[0][0].ToString();
            if (TxtPass.Text == password)
            {
                Session["ID"] = TxtName.Text;
                Response.Redirect("~/SubjectDetails.aspx");
            }
            else
            {
                TxtPass.BackColor = System.Drawing.Color.Red;
                TxtPass.Focus();
            }
        }

    }
}