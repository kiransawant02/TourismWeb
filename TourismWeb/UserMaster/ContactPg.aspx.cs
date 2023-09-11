using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TourismWeb.USERMASTER
{
    public partial class ContactPg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();

                    string insertQuery = "INSERT INTO ContactTbl (cname, cemail, cphone, cmsg) " +
                                         "VALUES (@FullName, @Email, @PhoneNumber, @Message)";

                    using (SqlCommand cmd = new SqlCommand(insertQuery, connection))
                    {
                        cmd.Parameters.AddWithValue("@FullName", FullNameTextBox.Text);
                        cmd.Parameters.AddWithValue("@Email", EmailTextBox.Text);
                        cmd.Parameters.AddWithValue("@PhoneNumber", PhoneNumberTextBox.Text);
                        cmd.Parameters.AddWithValue("@Message", MessageTextBox.Text);
                        cmd.ExecuteNonQuery();

                        Response.Write("<script>alert('Thank you for your feedback!');</script>");
                    }
                }
                catch (Exception)
                {
                    Response.Write("<script>alert('An error occurred while submitting your feedback. Please try again later.');</script>");
                }
            }

        }
    }
}