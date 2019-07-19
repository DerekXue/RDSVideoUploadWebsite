using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        int userId = 0;
        string constr = ConfigurationManager.ConnectionStrings["ConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("Validate_User1"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Username", Login1.UserName);
                cmd.Parameters.AddWithValue("@Password", Login1.Password);
                cmd.Connection = con;
                con.Open();
                userId = Convert.ToInt32(cmd.ExecuteScalar());
                con.Close();
            }
            switch (userId)
            {
                case -1:
                    Login1.FailureText = "Username and/or password is incorrect.";
                    break;
                case -2:
                    Login1.FailureText = "Account not exists.";
                    break;
                default:
                    Session["New"] = Login1.UserName;
                    System.Web.Security.FormsAuthentication.RedirectFromLoginPage(Login1.UserName, Login1.RememberMeSet); 
                    // look the explain of .RedirectFromLoginPage function , it direct to the default URL which is the Defualt.aspx and since this is a 
                    // dynamic data site project , so the Defaultl.aspx is the dymanic data site.
                    
                    break;
            }
        }
    }
}