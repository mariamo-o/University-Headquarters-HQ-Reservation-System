<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="RoomReservation.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
        .btn
        {
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            font-size: 16px;
            margin: 2px 2px;
            cursor: pointer;            
        }
        #cancel
        {
            background-color: red;
            text-decoration: none;
        }
        .signup
        {
            font-weight: bold;
            font-size: large;
            margin-left: 5%;
            margin-bottom: 10px;
            display: inline-block;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" >Home</asp:LinkButton>
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Contact US</asp:LinkButton>
                <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Sign in</asp:LinkButton>
                &nbsp;
            </p>
        </div>
        <table class="signup">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Name: "></asp:Label>
                </td>
               <td>
                   <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username is required*" ControlToValidate="UserName" ForeColor="Red" ValidationGroup="signup_btn"></asp:RequiredFieldValidator>
               </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Password: "></asp:Label>
                </td>
                <td>
                     <asp:TextBox ID="Userpass" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is required*" ControlToValidate="Userpass" ForeColor="Red" ValidationGroup="signup_btn"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Renter your password: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="PassConfirm" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password doesn't match*" ControlToValidate="PassConfirm" ForeColor="Red" ValidationGroup="signup_btn" ControlToCompare="Userpass"></asp:CompareValidator></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Email: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Useremail" runat="server" TextMode="Email"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter valid Email*" ControlToValidate="Useremail" ForeColor="Red" ValidationGroup="signup_btn" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="ID: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="UserID" runat="server"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="ID is required*" ControlToValidate="UserID" ForeColor="Red" ValidationGroup="signup_btn"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Signup_btn" runat="server" Text="Register" class="btn" ValidationGroup="signup_btn"/>
                </td>
                <td>
                    <asp:LinkButton ID="cancel" runat="server" Text="Cancel" class="btn" OnClick="LinkButton4_Click"></asp:LinkButton></td>
            </tr>
        </table>
    </form>
</body>
</html>
