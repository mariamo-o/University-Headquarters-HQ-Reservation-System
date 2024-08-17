<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="RoomReservation.home" %>
@inject SignInManager<ApplicationUser> SignInManager

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <style type="text/css">
        #Image1{
            width:100%;
            height:contain;
        }
        #LinkButton1{
            margin-left:20%;
           
            text-decoration:none;
            color:black;
            font-weight:bold;
            font-size:xx-large;

        }
        #LinkButton2{
            margin-left:15%;
            text-decoration:none;
            color:black;
            font-weight:bold;
            font-size:xx-large;

        }
        #LinkButton3{
            margin-left:15%;
            text-decoration:none;
            color:black;
            font-weight:bold;
            font-size:xx-large;

        }
        #TextBox1{
            position: absolute;
            top: 381px;
            left: 650px;
            height: 166px;
            width: 266px;
            background-color:gainsboro;
            opacity:80%;
        }
        #LinkButton1:hover {
          background:#dfe0e5;
          overflow:hidden;
          border-bottom:2px solid #00f;
          padding:8px;
  
        }
        #LinkButton2:hover {
          background:#dfe0e5;
          overflow:hidden;
          border-bottom:2px solid #00f;
          padding:8px;
  
        }
        #LinkButton3:hover {
          background:#dfe0e5;
          overflow:hidden;
          border-bottom:2px solid #00f;
          padding:8px;
  
        }
        #Label1{
            position:absolute;
            top: 177px;
            left: 545px;
            height: 72px;
            width: 553px;
        }
        #Label2{
            position:absolute;
            top: 254px;
            left: 385px;
            height: 72px;
            width: 1007px;
        }
        #Image2{
            position:absolute;
            top: -5px;
            left: 7px;
            height: 74px;
            width: 76px;
        }
       #Label3{
            position:absolute;
            top: 19px;
            left: 81px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
      <asp:Label ID="Label3" runat="server" Text="HQRRS " Font-Bold="True" Font-Size="X-Large" ForeColor="Black"></asp:Label>

        </div>
       
           
           
      
        <p>
           <asp:Image ID="Image2" runat="server" ImageUrl="~/images/Untitled-2.jpg" />

            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"  >Home</asp:LinkButton>
            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Contact US</asp:LinkButton>
            <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Sign in</asp:LinkButton>

            &nbsp;</p>
        <p>
            <div>
                
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/55.jpg" />
                <asp:Label ID="Label1" runat="server" Text="HQ Room Reservation System " Font-Bold="True" Font-Names="Franklin Gothic Medium" Font-Size="XX-Large" ForeColor="#666699"></asp:Label>
                  <asp:Label ID="Label2" runat="server" Text="We will help you find the sitable room for your purpose  " Font-Bold="True" Font-Names="Franklin Gothic Medium" Font-Size="XX-Large" ForeColor="#666699"></asp:Label>

                </div>

        </p>
    </form>
    </body>
</html>
