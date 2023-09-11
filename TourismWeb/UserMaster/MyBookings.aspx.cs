using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;
using System.Drawing;

namespace TourismWeb.UserMaster
{
    public partial class MyBookings : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindBookingData();
            }
        }

        private void BindBookingData()
        {
            string userId = GetLoggedInUserId();

            if (string.IsNullOrEmpty(userId))
            {
                // Handle the case when the user is not logged in
                return;
            }

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    con.Open();
                    string query = "SELECT * FROM BookingTbl WHERE BookingID = @UserID";
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@UserID", userId);
                        using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            da.Fill(dt);
                            BookingGv.DataSource = dt;
                            BookingGv.DataBind();
                        }
                    }
                }
                catch (Exception ex)
                {
                    // Handle exceptions here (e.g., logging, displaying an error message)
                }
            }
        }

        private string GetLoggedInUserId()
        {
            if (Session["UserID"] != null)
            {
                return Session["UserID"].ToString();
            }
            return null; // User is not logged in
        }
    }
}
