<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Password-change.aspx.cs" Inherits="Password_change" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Change Password</title>

    <style type="text/css">

       #form{

           width:80%;
           height:auto;
           background-color:#ffffff;
           color:#000000;
           margin-left:100pt;
           margin-right:100pt;
           margin-top:40pt;
           opacity:0.87;
           border-radius:5pt;

       }

       #container{

           width:100%;
           margin-left:50pt;
           margin-right:50pt;
           font-family:'Lucida Sans Unicode';
           font-size:12pt;
           
       }

       body{

           background-image:url("img/background.jpg");
           background-size:cover;
           background-attachment:fixed;
           background-repeat:no-repeat;
           margin:0;

       }

       .auto-style1 {
           width: 170px;
       }

       #login_header {
            background-color: #140707;
            font-size: 30px;
            color: #ffffff;
            width:100%;
        }

       h1 {
            padding-left: 40pt;
            height: 50px;
            margin: 0;
        }

    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div id="login_header">
                <h1>the tumbler</h1>

            <div style="margin-right:30pt; text-align:right">
                <asp:Button ID="btnHome" runat="server" Text="Home" Height="20pt" Width="40pt" BorderStyle="None" style="background-color:transparent; color:#ffffff" Font-Bold="true" Font-Size="11pt" OnClick="btnHome_Click"/></div>

            </div>
    <div>
        
        <div id="form">

            <div id="container">

                <br />
                <br />

                <div style="margin-left:250pt; font-size:25pt">Change Password</div>

                <br />
                <br />

                <table>

                    <tr><td class="auto-style1"><br/></td></tr>

                    <tr>
                        <td>Old Password: </td>
                        <td>
                            <asp:TextBox ID="txtOldPassword" runat="server" Width="240px" Height="25px" TextMode="Password"></asp:TextBox></td>
                    </tr>

                    <tr><td class="auto-style1"><br/></td></tr>

                    <tr>
                        <td>New Password: </td>
                        <td>
                            <asp:TextBox ID="txtNewPassword" runat="server" Width="240px" Height="25px" TextMode="Password"></asp:TextBox></td>
                    </tr>

                    <tr><td class="auto-style1"><br/></td></tr>

                    <tr>
                        <td>Confirm Password: </td>
                        <td>
                            <asp:TextBox ID="txtConfirmPassword" runat="server" Width="240px" Height="25px" TextMode="Password"></asp:TextBox></td>
                    </tr>

                     <tr><td class="auto-style1"><br/></td></tr>

                    <tr><td class="auto-style1"></td>
                        <td><asp:Button ID="btnSubmit" runat="server" Text="Submit" Height="32px" Width="120px" OnClick="btnSubmit_Click" />
                             
                            <asp:Button ID="btnReset" runat="server" Text="Reset" Height="32px" Width="120px" OnClick="btnReset_Click"  />
                        </td>
                    </tr>

                </table>

            </div>

        </div>

        <asp:Label ID="lblUsername" runat="server" Text="Label" Visible="false"></asp:Label>
        <asp:Label ID="lblPassword" runat="server" Text="Label" Visible="false"></asp:Label>

    </div>
    </form>
</body>
</html>
