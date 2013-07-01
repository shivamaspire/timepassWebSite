using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class AdminFollowup : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\user\\Documents\\Visual Studio 2010\\WebSites\\timepassWebSite\\App_Data\\DatabaseLogin.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            binddata();
            //string s = Request.QueryString["name"].ToString();
           // Lbltxt.Text = "Welcome  " + s;
        }
    }
    public void binddata()
    {
        try
        {
            SqlDataAdapter sad = new SqlDataAdapter("select * from LoginDetails where FollowUp='"+true+"'", con);
            DataSet sa = new DataSet();
            con.Open();
            sad.Fill(sa, "qq");
            con.Close();
            DgAdmin.DataSource = sa.Tables[0];
            DgAdmin.DataBind();

        }
        catch (Exception ge)
        {
        }
    }
    protected void DgAdmin_CancelCommand(object source, DataGridCommandEventArgs e)
    {
        DgAdmin.EditItemIndex = -1;
        binddata();
    }
    protected void DgAdmin_DeleteCommand(object source, DataGridCommandEventArgs e)
    {
        string del = (((Label)e.Item.FindControl("lblid")).Text);
        SqlCommand cmd = new SqlCommand("delete from LOgindetails where Id='"+del.ToString()+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
       // DgAdmin.EditItemIndex = -1;
        binddata();
    }
    protected void DgAdmin_EditCommand(object source, DataGridCommandEventArgs e)
    {
        DgAdmin.EditItemIndex = e.Item.ItemIndex;
        binddata();
    }
    protected void DgAdmin_UpdateCommand(object source, DataGridCommandEventArgs e)
    {
        string s = (((TextBox)e.Item.FindControl("Txtid")).Text);
        string s1 = (((TextBox)e.Item.FindControl("TxtFirstName")).Text);
        string s2 = (((TextBox)e.Item.FindControl("TxtLastName")).Text);
        string s3 = (((TextBox)e.Item.FindControl("TxtMobile")).Text);
        string s4 = (((TextBox)e.Item.FindControl("TxtEmail")).Text);
        string s5 = (((TextBox)e.Item.FindControl("TxtBirth")).Text);
        string s6 = (((TextBox)e.Item.FindControl("TxtAddress")).Text);
        string s7 = (((TextBox)e.Item.FindControl("TxtFees")).Text);
        string s8 = (((TextBox)e.Item.FindControl("TxtPay")).Text);
        string s9 = (((TextBox)e.Item.FindControl("TxtMarks")).Text);

        SqlCommand cmd = new SqlCommand("update LoginDetails set FirstName='"+s1.ToString()+"',LastName='"+s2.ToString()+"',Mobilenumber='"+s3.ToString()+"',Emailid='"+s4.ToString()+"',BirthDate='"+s5.ToString()+"',Address='"+s6.ToString()+"',Fees='"+s7.ToString()+"',Payment='"+s8.ToString()+"',Marks='"+s9.ToString()+"'where id='"+s.ToString()+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        DgAdmin.EditItemIndex = -1;
        binddata();

    }
}
