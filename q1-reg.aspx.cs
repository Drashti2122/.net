using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
       // cn = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=As2-Q1;User ID=sa;Password=sa123");
    }

    protected void btn_submit_Click(object sender, EventArgs e)
    {
        cn = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=As2-Q1;User ID=sa;Password=sa123");

        cn.Open();
        string name = txtname.Text;
        string email = txtemail.Text;
        string pass = txtpass.Text;
        int age = Convert.ToInt32(txtage.Text);
        long contact = Convert.ToInt64(txtcontact.Text);

        string qry = "insert into register values('"+name +"','"+email+"','"+pass+"','"+age+"','"+contact+"',null)";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Recorde Inserted!!!')</script>");
        Response.Redirect("login.aspx");
        cn.Close();
    }
}