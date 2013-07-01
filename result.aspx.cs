using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class result : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\user\\Documents\\Visual Studio 2010\\WebSites\\timepassWebSite\\App_Data\\DatabaseLogin.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnSearch_Click(object sender, EventArgs e)
    {
       
            bindDetails();
            
    }
    public void bindDetails()
    {

        SqlDataAdapter cmd = new SqlDataAdapter("Select * from LoginDetails where Id='" + TxtId.Text.ToString() + "' ", con);
        DataSet ds = new DataSet();
        con.Open();
        cmd.Fill(ds, "ss");
        con.Close();
        Lblid.Text = ds.Tables[0].Rows[0][0].ToString();
        LblName.Text = ds.Tables[0].Rows[0][1].ToString() + " " + ds.Tables[0].Rows[0][2].ToString();
        LblMobile.Text = ds.Tables[0].Rows[0][5].ToString();
        DgResult.DataSource = ds.Tables[0];
        DgResult.DataBind();
       
    }

    public void bindmrks()
    {
        SqlDataAdapter cmd1 = new SqlDataAdapter("Select id,subject,Marks from LoginDetails where Id='" + TxtId.Text.ToString() + "' ", con);
        DataSet ds1 = new DataSet();
        con.Open();
        cmd1.Fill(ds1, "ss");
        con.Close();
        String marks = ds1.Tables[0].Rows[0][2].ToString();
        int d;
        if (marks == "")
        {
            lblpass.Text = "sorry. result is not declared";
            lblpass.ForeColor = System.Drawing.Color.RosyBrown;
            lblpass.Font.Size = 30;


        }
        else
        {
            d = Convert.ToInt32(marks);
            if (d > 80)
            {
                lblpass.Text = "hurreee you are passed!!!";
                lblpass.ForeColor = System.Drawing.Color.Green;
                lblpass.Font.Size = 30;
            }
            else
            {
                lblpass.Text = "sorry try again";
                lblpass.ForeColor = System.Drawing.Color.Red;
                lblpass.Font.Size = 30;
            }

            DgResult.DataSource = ds1.Tables[0];

            DgResult.DataBind();
        }
    }

}