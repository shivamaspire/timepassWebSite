using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class SubJectDetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\user\\Documents\\Visual Studio 2010\\WebSites\\timepassWebSite\\App_Data\\DatabaseLogin.mdf;Integrated Security=True;User Instance=True");
    string k;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            PanelUpdate.Visible = false;
            bindTable();
           k = Session["ID"].ToString();
           
          SqlDataAdapter cmd = new SqlDataAdapter("select * from LoginDetails where id='" + k + "' ", con);
            DataSet ds = new DataSet();
            con.Open();
            cmd.Fill(ds, "name");
            con.Close();
            Lbltxt.Text = "Welcome  " + ds.Tables[0].Rows[0][1].ToString() +"  "+ ds.Tables[0].Rows[0][2].ToString();
        }
    }
    public void bindTable()
    {
        try
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from SubjectDetails s join DateDetails d on s.SubjectId=d.SubjectId join CourseDetails c on s.SubjectId=c.SubjectId", con);
            DataSet sd = new DataSet();
            con.Open();
            da.Fill(sd, "fill");
            con.Close();
            GridView1.DataSource = sd.Tables[0];
            GridView1.DataBind();
        }
        catch (Exception gr)
        {
        }
    }
        
    protected void Btnselect_Click(object sender, EventArgs e)
    {
        PanelUpdate.Visible = true;

        BindSubject();
            bindDate();
      
    }
    public void BindSubject()
    {
        SqlDataAdapter cmd = new SqlDataAdapter("select * from CourseDetails", con);
        DataSet ds = new DataSet();

        con.Open();
        cmd.Fill(ds, "a");
        con.Close();
        DrpSubject.DataSource = ds.Tables[0];
        DrpSubject.DataTextField = "SubjectName";
        DrpSubject.DataValueField = "SubjectId";
        DrpSubject.DataBind();
    }
    public void bindDate()
    {
        SqlDataAdapter cmd = new SqlDataAdapter("select * from DateDetails where SubjectId='"+DrpSubject.SelectedValue.ToString()+"'", con);
        DataSet ds = new DataSet();

        con.Open();
        cmd.Fill(ds, "a");
        con.Close();
        DrpDate.DataSource = ds.Tables[0];
        DrpDate.DataTextField = "Date";
        DrpDate.DataValueField = "DateId";
        DrpDate.DataBind();

    }


    protected void DrpSubject_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlDataAdapter cmd = new SqlDataAdapter("select * from DateDetails where SubjectId='" + DrpSubject.SelectedValue.ToString() + "'", con);
        DataSet ds = new DataSet();
        con.Open();
        cmd.Fill(ds, "a");
        con.Close();
        DrpDate.DataSource = ds.Tables[0];
        DrpDate.DataTextField = "Date";
        DrpDate.DataValueField = "DateId";
        DrpDate.DataBind();
    }
    protected void BtnUpdate_Click(object sender, EventArgs e)
    {
        SqlDataAdapter cmd = new SqlDataAdapter("select * from SubjectDetails where SubjectName='"+DrpSubject.SelectedItem.ToString()+"'", con);
        DataSet sd = new DataSet();
        con.Open();
        cmd.Fill(sd, "a");
        con.Close();
        String fees=sd.Tables[0].Rows[0][3].ToString();
        String date = sd.Tables[0].Rows[0][1].ToString();
        string k1 = Request.QueryString["ID"].ToString();

        SqlCommand cm = new SqlCommand("update LoginDetails set Subject='"+DrpSubject.SelectedItem.ToString()+"',Fees='"+fees.ToString()+"',StartDate='"+date.ToString()+"'where id='"+k1.ToString()+"'", con);
        con.Open();
        cm.ExecuteNonQuery();
        con.Close();
        

    }
    
}