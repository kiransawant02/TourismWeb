using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace TourismWeb.USERMASTER
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd;
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if user is logged in (session contains user information)
                if (Session["UserID"] != null && Session["Username"] != null)
                {
                    // User is logged in; you can access user information from the session
                    string userId = Session["UserID"].ToString();
                    string username = Session["Username"].ToString();

                    // Continue with user-specific actions
                }
                else
                {
                    // User is not logged in; you can handle this case (e.g., redirect to login page)
                }
            }
        }


        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("Registration.aspx");
            }
            catch
            {

            }
        }

        protected void LinkButton_changepass_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("Changepass.aspx");
            }
            catch
            {

            }
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            try
            {
                con.ConnectionString = "Data Source=SAWANT;Initial Catalog=TourismDb;Integrated Security=True"; // Update the connection string with your SQL Server details
                con.Open();
                if (DropDownList_login.SelectedValue.ToString() == "User")
                {
                    string str = "SELECT * FROM UserTbl WHERE (UserEmail=@username OR UserName=@username )AND UserPassword=@password"; // Use parameterized queries to prevent SQL injection
                    da = new SqlDataAdapter(str, con);
                    da.SelectCommand.Parameters.AddWithValue("@username", txt_username.Text);
                    da.SelectCommand.Parameters.AddWithValue("@password", txt_password.Text);

                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {
                        // Store user information in session
                        Session["UserID"] = dt.Rows[0]["UserID"].ToString(); // Replace "UserId" with the actual column name in your UserTbl table
                        Session["Username"] = dt.Rows[0]["UserName"].ToString(); // Replace "UserName" with the actual column name

                        // Redirect to the main booking page
                        Response.Redirect("MainBooking.aspx");
                    }

                    else
                    {
                        // Handle invalid user login
                    }
                }
                else if (DropDownList_login.SelectedValue.ToString() == "Admin")
                {
                    string str1 = "SELECT * FROM AdminTbl WHERE (username=@username OR email=@username)AND pass=@password"; 
                    da = new SqlDataAdapter(str1, con);
                    da.SelectCommand.Parameters.AddWithValue("@username", txt_username.Text);
                    da.SelectCommand.Parameters.AddWithValue("@password", txt_password.Text);

                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {

                        Response.Redirect("../AdminMaster/Home.aspx");
                    }

                    else
                    {
                        // Handle invalid admin login
                    }
                }
                else
                {
                    Response.Write("<script>alert('Check Username Or Password')</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
            finally
            {
                con.Close();
            }
        }
    }
}
