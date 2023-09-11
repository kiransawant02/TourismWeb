using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace TourismWeb.USERMASTER
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(); // Update the connection string
        SqlCommand cmd;
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        int ID1 = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            // Your existing code
        }

        protected void btn_Booking_submit_Click(object sender, EventArgs e)
        {
            try
            {
                con.ConnectionString = "Data Source=SAWANT;Initial Catalog=TourismDb;Integrated Security=True"; 
                con.Open();

                string str = "INSERT INTO BookingTbl (Place, Duration, Memberplan, Fullname) VALUES (@Place, @Duration, @Memberplan, @Fullname)";
                cmd = new SqlCommand(str, con);
                cmd.Parameters.AddWithValue("@Place", DropDownList_select_space.SelectedValue);
                cmd.Parameters.AddWithValue("@Duration", DropDownList_Duration.SelectedValue);
                cmd.Parameters.AddWithValue("@Memberplan", RadioButtonList_member.SelectedValue);
                cmd.Parameters.AddWithValue("@Fullname", txt_Fullname.Text);
                cmd.ExecuteNonQuery();

                //Response.Write("<script>alert('Booking Successfully')</script>");
                Response.Redirect("../USERMASTER/MyBookings.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Fill All Correct Details')</script>");
                Response.Write(ex.ToString());
            }
            finally
            {
                con.Close();
            }
        }

        protected void LinkButton_signout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("../USERMASTER/Login.aspx");
        }
    }
}
