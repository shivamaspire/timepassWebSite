using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class AdminInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnSave_Click(object sender, EventArgs e)
    {
        if (TxtName.Text == "admin" && TxtPass.Text == "bond007")
        {
            Session["name"] = TxtName.Text;
            Response.Redirect("~/AdminFollowUpDetail.aspx");

        }
        else
        {
            TxtName.Text = "";
            TxtPass.Text = "";
            TxtName.Focus();
        }

    }
}