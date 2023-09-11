using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.IO;
using System.Configuration;
using System.Data.SqlClient;

namespace TourismWeb.USERMASTER
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection();
        SqlCommand cmd;
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        string str;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void LinkButton_login_cpass_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("Login.aspx");
            }
            catch
            {

            }
        }

        protected void btn_Change_pass1_Click(object sender, EventArgs e)
        {
            // Retrieve the connection string from web.config
            string connectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

            // Set the connection string for the SqlConnection object
            conn.ConnectionString = connectionString;

            try
            {
                string str1 = "select UserMobile,UserEmail from UserTbl where UserEmail='" + txt_changepass_email.Text + "' and UserMobile='" + txt_changepass_mobile.Text + "'";
                da = new SqlDataAdapter(str1, conn);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    str = "update UserTbl set UserPassword='" + txt_changepass_newpass.Text + "' where UserMobile=" + txt_changepass_mobile.Text + " and UserPassword='" + txt_chnagepass_oldpass.Text + "'";
                    cmd = new SqlCommand(str, conn);
                    conn.Open();
                    cmd.ExecuteNonQuery();

                    Response.Write("<script>alert('Password Changed Successfully.')</script>");
                }
                Response.Write("<script>alert('Invalid Credentials.')</script>");
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
            finally
            {
                conn.Close();
            }
        }

    }
}