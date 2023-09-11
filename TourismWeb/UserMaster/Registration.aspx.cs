using System;
using System.Data;
using System.Data.SqlClient; // Use System.Data.SqlClient for SQL Server
using System.Web.UI;

namespace TourismWeb.USERMASTER
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd;
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        string str;
        int id1 = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=SAWANT;Initial Catalog=TourismDb;Integrated Security=True"; // Update the connection string with your SQL Server details
            con.Open();

            str = "SELECT MAX(UserID) AS UserID FROM UserTbl";

            da = new SqlDataAdapter(str, con);
            da.Fill(ds);

            id1 = 1;

            if (ds.Tables[0].Rows.Count > 0 && !string.IsNullOrEmpty(ds.Tables[0].Rows[0]["UserID"].ToString()))
            {
                id1 = Convert.ToInt32(ds.Tables[0].Rows[0]["UserID"]) + 1;
            }

            lbl_u_id.Text = id1.ToString();
        }

        protected void LinkButton_login_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("Login.aspx");
            }
            catch (Exception ex)
            {
                // Handle the exception if necessary
            }
        }

        protected void btn_submit_user_Click(object sender, EventArgs e)
        {
            try
            {
                str = "INSERT INTO UserTbl (UserID, UserName, UserMobile, UserEmail, UserPassword) VALUES (@UserID, @UserName, @UserMobile, @UserEmail, @UserPassword)";
                cmd = new SqlCommand(str, con);
                cmd.Parameters.AddWithValue("@UserID", id1);
                cmd.Parameters.AddWithValue("@UserName", txt_user_name.Text);
                cmd.Parameters.AddWithValue("@UserMobile", txt_user_mobile.Text);
                cmd.Parameters.AddWithValue("@UserEmail", txt_user_email.Text);
                cmd.Parameters.AddWithValue("@UserPassword", txt_pass.Text);
                cmd.ExecuteNonQuery();

                // Clear input fields after successful registration
                txt_user_name.Text = "";
                txt_user_mobile.Text = "";
                txt_user_email.Text = "";
                txt_user_email.Text = "";
                txt_pass.Text = "";

                Response.Write("<script>alert('Registration Successfully')</script>");
                Response.Redirect("../UserMaster/Login.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("An error occurred while registering the user.");
                Response.Write(ex.ToString());
            }
            finally
            {
                con.Close();
            }
        }
    }
}
