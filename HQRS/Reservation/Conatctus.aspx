<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Conatctus.aspx.cs" Inherits="RoomReservation.Conatctus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style>
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
            #Image2{
                  position: absolute;
            top: 379px;
            left: 729px;
            width: 39px;
        }
                 #Image3{
                  position: absolute;
            top: 462px;
            left: 727px;
            height: 30px;
            width: 32px;
        }
                      #Image4{
                  position: absolute;
            top: 297px;
            left: 729px;
            height: 34px;
            width: 37px;
        }
        #Label1{
            position: absolute;
            top: 381px;
            left: 797px;
            font-size:large;
            font-weight:bold;
        }  
           #Label2{
            position: absolute;
            top: 301px;
            left: 797px;
            font-size:large;
            font-weight:bold;
        } 
            #Label3{
            position: absolute;
            top: 463px;
            left: 797px;
            font-size:large;
            font-weight:bold;
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
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
           <p>
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Home</asp:LinkButton>
            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" >Contact US</asp:LinkButton>
            <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Sign in</asp:LinkButton>
            &nbsp;</p>
        <p>
        <asp:Image ID="Image1" runat="server" Height="716px" ImageUrl="~/images/5124556.jpg" Width="618px" />
            <asp:Image ID="Image4" runat="server" ImageUrl="~/images/facebook.png" />
            <asp:Image ID="Image2" runat="server" Height="31px" ImageUrl="~/images/call.png" />
            <asp:Image ID="Image3" runat="server" ImageUrl="~/images/letter.png" />
            <asp:Label ID="Label1" runat="server" Text="16448"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="@ejust.official"></asp:Label>
            <asp:Label ID="Label3" runat="server" Text="pr@ejust.edu.eg"></asp:Label>
            </p>
    </form>
</body>
</html>
