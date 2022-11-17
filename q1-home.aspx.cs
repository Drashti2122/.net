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
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=As2-Q1;User ID=sa;Password=sa123");
        SqlCommand cmd;
        cn.Open();
        string name = Session["name"].ToString();
    
        string qry = "select * from register where id=" + name;
        cmd = new SqlCommand(qry, cn);
        SqlDataReader dr = cmd.ExecuteReader();
        if(dr.HasRows)
        {
            dr.Read();
            lblname.Text = dr["name"].ToString();
            lblemail.Text = dr["email"].ToString();
            lblage.Text = dr["age"].ToString();
            lblmob.Text = dr["contact"].ToString();
            if(dr["photo"].ToString()=="")
            {
                FileUpload1.Visible = true;
                FileUpload1.Enabled = true;
                btnadd.Visible = true;
                Image1.Visible = false;
            }
            else
            {
                btnadd.Visible = false;
                FileUpload1.Visible = false;
                FileUpload1.Enabled = false;
                Image1.Visible = true;
                Image1.ImageUrl = "doc/" + dr["photo"].ToString();
               // Response.Redirect("home.aspx");
            }
        }
        cn.Close();
    }

    protected void btnadd_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=As2-Q1;User ID=sa;Password=sa123");
        SqlCommand cmd;
        cn.Open();
        int name = Convert.ToInt32(Session["name"]);
        try
        {
            if (FileUpload1.HasFile)
            {
                string ext = System.IO.Path.GetExtension(FileUpload1.FileName);
                if (ext == ".jpeg" || ext == ".jpg" || ext == ".png")
                {
                    string path = Server.MapPath("doc\\");
                    string fname = path + FileUpload1.FileName;
                    FileUpload1.SaveAs(fname);

                    string qry = "update register set photo='" + FileUpload1.FileName + "' where id=" + name+ "";
                    cmd = new SqlCommand(qry, cn);
                    cmd.ExecuteNonQuery();
                    
                    Response.Redirect("home.aspx");
                }
                else
                {
                    Response.Write("please select valid file ");
                }
            }
            else
            {
                Response.Write("file not uploaded");
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        cn.Close();
    }

   

   

    protected void Button1_Click1(object sender, EventArgs e)
    {
        
    }

    protected void txtchange_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=As2-Q1;User ID=sa;Password=sa123");
        cn.Open();
        string name = lblname.Text;
        string pass = txtcpass.Text;
        string qry = "update register set password='" + pass + "' where name='" + name + "'";
        SqlCommand cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Recorde Updated!!!');</script>");
        Response.Redirect("login.aspx");
        cn.Close();
    }
}