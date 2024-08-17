<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="roomresv.aspx.cs" Inherits="RoomReservation.roomresv" %>

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
        #book
        {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #1672e9;
            color: white;
            padding: 15px 32px;
            text-align: center;
            font-size: 16px;
            margin: 2px 2px;
            cursor: pointer; 
            position:absolute;
            top: 317px;
            left: 854px;
            text-decoration:none;

        }
        #LinkButton4{
             border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #1672e9;
            color: white;
            padding: 15px 32px;
            text-align: center;
            font-size: 16px;
            margin: 2px 2px;
            cursor: pointer; 
            position:absolute;
            top: 404px;
            left: 787px;
            text-decoration:none;

        }
        .reservation
        {
            font-weight: bold;
            font-size: large;
            margin-left: 5%;
            margin-bottom: 10px;
            display: inline-block;
        }
        #container{
            background: rgb(164, 164, 164, 0.31);
            max-width: 500px;
            margin: 0 auto;
            padding: 3em;
            border-radius: 10px;
            box-sizing: border-box;
            margin-top:10%;
        }
        #GridView1 {
            position: absolute;
            top: 818px;
            left: 555px;
            right: 574px;
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

        <div id="container">
            <h1>Book Your Room</h1>
                <table class="reservation">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="ID: "></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                           <asp:TextBox ID="UserID" runat="server"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="ID is required*" ControlToValidate="UserID" ForeColor="Red" ValidationGroup="Book"></asp:RequiredFieldValidator>
                       </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Room: "></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DropDownList ID="DropDoSwnList1" runat="server">
                                <asp:ListItem Enabled="true" Text="Select room" Value="-1"></asp:ListItem>
                                <asp:ListItem Text= "101" Value="1"></asp:ListItem>
                                <asp:ListItem Text= "102" Value="2"></asp:ListItem>
                                <asp:ListItem Text= "103" Value="3"></asp:ListItem>
                                <asp:ListItem Text= "104" Value="4"></asp:ListItem>
                                <asp:ListItem Text= "105" Value="5"></asp:ListItem>
                                <asp:ListItem Text= "106" Value="6"></asp:ListItem>
                                <asp:ListItem Text= "107" Value="7"></asp:ListItem>
                                <asp:ListItem Text= "108" Value="8"></asp:ListItem>
                                <asp:ListItem Text= "109" Value="9"></asp:ListItem>
                                <asp:ListItem Text= "110" Value="10"></asp:ListItem>
                                <asp:ListItem Text= "201" Value="11"></asp:ListItem>
                                <asp:ListItem Text= "202" Value="12"></asp:ListItem>
                                <asp:ListItem Text= "203" Value="13"></asp:ListItem>
                                <asp:ListItem Text= "204" Value="14"></asp:ListItem>
                                <asp:ListItem Text= "205" Value="15"></asp:ListItem>
                                <asp:ListItem Text= "206" Value="16"></asp:ListItem>
                                <asp:ListItem Text= "207" Value="17"></asp:ListItem>
                                <asp:ListItem Text= "208" Value="18"></asp:ListItem>
                                <asp:ListItem Text= "209" Value="19"></asp:ListItem>
                                <asp:ListItem Text= "210" Value="20"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                         <td>
                             <asp:Label ID="Label3" runat="server" Text="Select date: "></asp:Label>
                         </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="17px" ImageUrl="~/images/CALimage.png" onclick="ImageButton1_Click" Width="21px" />
                            <asp:Calendar ID="Calendar1" runat="server"
                            onselectionchanged="Calendar1_SelectionChanged" Visible="False">
                            </asp:Calendar>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:LinkButton ID="book" runat="server" Text="Book Now" class="btn" OnClick="LinkButton4_Click" ValidationGroup="Book" Font-Bold="True" Font-Size="Large"></asp:LinkButton>
                        </td>
                        <td>
</td>
                    </tr>
                </table>

            <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" Font-Size="Large" OnClick="LinkButton4_Click1">Cancel Reservation</asp:LinkButton>

            </div>

        <div class="grid1">
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
