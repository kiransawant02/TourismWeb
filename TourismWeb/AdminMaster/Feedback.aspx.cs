using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient; 
using System.Web.UI.WebControls;

namespace TourismWeb.ADMINMASTER
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindFeedback();
            }
        }

        private void BindFeedback()
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    con.Open();
                    string query = "SELECT * FROM ContactTbl";
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        FeedbackGV.DataSource = dt;
                        FeedbackGV.DataBind();
                    }
                }
                catch (Exception ex)
                {
                    // Handle exceptions here (e.g., logging, displaying an error message)
                }
            }
        }

        protected void FeedbackGV_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            FeedbackGV.PageIndex = e.NewPageIndex;
            BindFeedback();
        }
    }
}
