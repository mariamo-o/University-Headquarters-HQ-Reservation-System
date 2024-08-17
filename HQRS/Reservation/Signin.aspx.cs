using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RoomReservation
{
    public partial class Signin : System.Web.UI.Page
    {
        HQRoomsEntities db = new HQRoomsEntities();

        public object MessageBox { get; private set; }
        public object MessageBoxButtons { get; private set; }
        public object MessageBoxIcon { get; private set; }

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
            Response.Redirect("Signup.aspx");
        }
        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                var MyUser = db.SystemUsers.Where(u => u.FirstName == TextBox1.Text && u.password == txtPassword.Text);
                if(MyUser.Count() > 0)
                {
                    Response.Redirect("roomresv.aspx");
                }
                else
                {
                    Console.WriteLine("Invalid details, Do you regirter before?");
                }
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}