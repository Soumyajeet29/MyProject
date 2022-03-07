using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace UserRegistration
{
    public partial class Regitration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UserRegistrationDBConnectionString"].ConnectionString);
                conn.Open();
                string checkuser = "select count(*) from UserData where UserName='" + TextBoxuserid.Text + "'";
                SqlCommand com = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
               
                if (temp == 1)
                {
                    Response.Write("User already exists");
                }
                conn.Close();
            }
        
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UserRegistrationDBConnectionString"].ConnectionString);
                conn.Open();
                string checkuser = "select count(*) from UserData where UserName='" + TextBoxuserid.Text + "'";
                SqlCommand com1 = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(com1.ExecuteScalar().ToString());

                if (temp != 1)
                {

                    string insertQuery = "insert into UserData (FirstName,LastName,Contact,Email,Gender,Address,UserName,Password) values (@Fname ,@Lname ,@cont ,@email ,@gender ,@address ,@Uname ,@pass )";
                    SqlCommand com = new SqlCommand(insertQuery, conn);
                    com.Parameters.AddWithValue("@Fname", TextBoxFirstname.Text);
                    com.Parameters.AddWithValue("@Lname", TextBoxLastname.Text);
                    com.Parameters.AddWithValue("@cont", TextBoxcontact.Text);
                    com.Parameters.AddWithValue("@email", TextBoxEmail.Text);
                    com.Parameters.AddWithValue("@gender", DropDownListgender.SelectedItem.ToString());
                    com.Parameters.AddWithValue("@address", TextBoxaddress.Text);
                    com.Parameters.AddWithValue("@Uname", TextBoxuserid.Text);
                    com.Parameters.AddWithValue("@pass", TextBoxpass.Text);

                    com.ExecuteNonQuery();
                    Response.Write("Registration is successful");
                }
                conn.Close();
            }
            catch(Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }

        }
    }
}