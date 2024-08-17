using System;
using System.Collections.Generic;
using System.Drawing.Printing;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace RoomReservation
{
    public partial class roomresv : System.Web.UI.Page
    {
        HQRoomsEntities db = new HQRoomsEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = db.rooms.ToList();
            GridView1.DataBind();
           
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

            int ID = Convert.ToInt32(UserID.Text);
            if(db.SystemUsers.Find(ID) != null)
            {
                int roomNum = 0;
                if (DropDoSwnList1.SelectedItem != null)
                {
                    roomNum = Convert.ToInt32(DropDoSwnList1.SelectedItem.Text);
                }
                var BookedRoom = db.rooms.Find(roomNum);
                BookedRoom.roomStatus = "Booked";
                if (Page.IsValid)
                {
                    ReservationInfo info = new ReservationInfo
                    {
                        reservedBy = Convert.ToInt32(UserID.Text),
                        reservationNumber = Convert.ToInt32(DropDoSwnList1.SelectedItem.Text),
                        reservationDate = Convert.ToDateTime(TextBox1.Text)
                    };
                    db.ReservationInfoes.Add(info);
                }
                db.SaveChanges();
            }
            else
            {
                MessageBox.Show("NO such id registered before..");
            }
            
        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Calendar1.Visible = true;
        }
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButton4_Click1(object sender, EventArgs e)
        {
            int ID = Convert.ToInt32(UserID.Text);
            if (db.SystemUsers.Find(ID) != null)
            {
                int roomNum = 0;
                if (DropDoSwnList1.SelectedItem != null)
                {
                    roomNum = Convert.ToInt32(DropDoSwnList1.SelectedItem.Text);
                }
                var BookedRoom = db.rooms.Find(roomNum);
                BookedRoom.roomStatus = "available";  
                db.SaveChanges();
            }
            else
            {
                MessageBox.Show("NO such id registered before..");
            }

        }
    }
}