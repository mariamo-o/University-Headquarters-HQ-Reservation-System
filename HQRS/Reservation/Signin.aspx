<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="RoomReservation.Signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <style>
        #container{
            position:absolute;
            
            
            border-style:solid;
            border-collapse:collapse;
            border-color:white;
            border-radius:7px;
            box-shadow: rgba(0, 0, 0, 0.25) 0px 14px 28px, rgba(0, 0, 0, 0.22) 0px 10px 10px;
        }
        #Label1{
            position:absolute;
            font-weight:bold;
            font-size:x-large;
            margin-left:5%;
            top: 11px;
            left: -5px;
        }
        #TextBox1{
             position:absolute;
            top: 103px;
            left: 57px;
            width: 243px;
            height: 28px;
            opacity:60%;
        }
        #txtPassword{
            position:absolute;
            top: 188px;
            left: 57px;
            width: 243px;
            height: 31px;
            opacity:60%;
        }
        #Label2{
            position:absolute;
            font-weight:bold;
            font-size:x-large;
            top: 13px;
            left: 16px;
            width: 243px;
        }
        #registeration{
            position:absolute;
            top: 388px;
            left: 57px;
            width: 243px;
        }
        #container2{
            position:absolute;
            top: -13px;
            left: -2px;
            width: 243px;
            border-collapse:collapse;
            box-sizing: border-box;
            width: 100%;
            border-top: 5px solid white;
            padding: 50px;
            margin-top:90%;
            border-radius:3px;
            box-shadow: 10px 0px 10px 0px #888888;
            border-left-style: solid;
            border-left-color: white;
            border-right-style: solid;
            border-right-color: white;
            border-bottom-style: solid;
            border-bottom-color: white;
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
        #LinkButton4{
            background-color:#1672e9;
            border-radius:2px;
            margin-left:15%;
            position:absolute;
            text-decoration:none;
            color:black;
            font-weight:bold;
            font-size:xx-large;
            top: 583px;
            left: 786px;
            padding:5px 30px 5px 30px;
        }
        #Image3{
            position:absolute;
            top: 229px;
            left: 1265px;
            height: 34px;
            width: 31px;
        }
        #LinkButton5{   
            position:absolute;
            font-weight:bold;
            font-size:x-large;
            top: 240px;
            left: 229px;
            width: 91px;
            height: 31px;
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
            <p>
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"   >Home</asp:LinkButton>
            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" >Contact US</asp:LinkButton>
            <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Sign in</asp:LinkButton>
            &nbsp;</p>
        </div>
    <div style="height: 427px; width: 352px; top: 216px; left: 955px;" id="container">

        <asp:Label ID="Label1" runat="server" Text="Sign in "></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" placeholder="User Name" BackColor="#CCCCCC" AutoCompleteType="Email"  ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username is required*" ControlToValidate="TextBox1" ForeColor="Red" ValidationGroup="LinkButton5"></asp:RequiredFieldValidator>
        
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password" BackColor="#CCCCCC"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is required*" ControlToValidate="txtPassword" ForeColor="Red" ValidationGroup="LinkButton5"></asp:RequiredFieldValidator>
        
        <div id="container2">
            <asp:Label ID="Label2" runat="server" Text="First time ?"></asp:Label>
            <asp:Image ID="Image2" runat="server" />
            <div id="registeration">

            </div>
        </div>
          <asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#1672E9" OnClick="LinkButton5_Click" Font-Bold="True" Font-Italic="True" ValidationGroup="LinkButton5">Sign in</asp:LinkButton>
        </div>
        <asp:Image ID="Image1" runat="server" Height="660px" ImageUrl="~/images/Untitled-2.png" Width="873px" />
        <asp:Image ID="Image3" runat="server" ImageUrl="~/images/question.png" />
        <p id="box">
               <asp:LinkButton ID="LinkButton4" runat="server" ForeColor="White" OnClick="LinkButton4_Click">Register Now</asp:LinkButton>

            </p>
    </form>
    </body>
</html>
