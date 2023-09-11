using System;
using System.Data;
using System.Data.SqlClient; 
using System.Configuration;
using System.Web.UI.WebControls;

namespace TourismWeb.ADMINMASTER
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindBookingData();
            }
        }

        private void BindBookingData()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString; 
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    con.Open();
                    string query = "SELECT * FROM BookingTbl";
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        BookingGv.DataSource = dt;
                        BookingGv.DataBind();
                    }
                }
                catch (Exception ex)
                {
                    // Handle exceptions here (e.g., logging, displaying an error message)
                }
            }
        }

        protected void BookingGv_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            BookingGv.PageIndex = e.NewPageIndex;
            BindBookingData();
        }
    }
}
