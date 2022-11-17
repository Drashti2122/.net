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
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        //SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=assi2;User ID=sa;Password=sa123");
    }

    protected void btn_submit_Click(object sender, EventArgs e)
    {
        cn = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=As2-Q1;User ID=sa;Password=sa123");

        cn.Open();
        string name = txtname.Text;
        string pass = txtpass.Text;

        

        string qry = "select * from register where name ='" + name + "'and password='" + pass + "'";
        cmd = new SqlCommand(qry, cn);
        dr= cmd.ExecuteReader();
        if(dr.HasRows)
        {
            dr.Read();
            string id = dr[0].ToString();
            Session["name"] = id;
            Response.Redirect("home.aspx");
        }
        else
        {
            Response.Write("<script>alert('Invalid UserName And Password!!')</script>");
        }
        cn.Close();

    }

    
}