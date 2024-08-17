using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Diagnostics.Contracts;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RoomReservation
{
    public partial class Signup : System.Web.UI.Page
    {
        HQRoomsEntities db = new HQRoomsEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Conatctus.aspx");
        }
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Signin.aspx");
        }
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }
        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                SystemUser user = new SystemUser
                {
                    ID = Convert.ToInt32(UserID.Text),
                    FirstName = UserName.Text,
                    userType = "",
                    email = Useremail.Text,
                    password = Userpass.Text,
                    faculty = "",
                    phone= "",
                    LastName= UserName.Text

                };
                    db.SystemUsers.Add(user);
                    db.SaveChanges();
                    Response.Redirect("home.aspx");
            }
            
        }
        
    }
}