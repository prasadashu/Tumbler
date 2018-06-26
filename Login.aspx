<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>


    <style type="text/css">
        .auto-style1 {
            width: 109px;
        }

        .description{
            font-family:Verdana;
            font-size:10pt;
            color:#ffffff;
            margin-top:30pt;
        }

        h1 {
            padding-left: 40pt;
            height: 85px;
            margin: 0;
        }

        body{
            margin: 0;
            height: 479px;
            background-image:url("img/background.jpg");
            background-repeat:no-repeat;
            background-attachment:fixed;
            background-size:cover;
        }

        #login_header {
            background-color: #140707;
            font-size: 30px;
            color: #ffffff;
            margin: 0;
        }

        #login_body {
            color: #000000;
            margin-top: 50pt;
            font-family: Verdana;
            box-shadow: 5px 5px 1px #353131;
        }

        #footer {
            text-align: right;
            font-size: 10pt;
            color: #000000;
            margin-right:10pt;
            background-color:transparent;
            margin-top:30pt;
            clear:both;
        }

        #page_body {
            
            height: 340pt;
            margin: 0;
        }

        #container{
            background-color:#2374cc;
            height:100%;
            width:70%;
            margin-top:50pt;
            margin-right:auto;
            margin-left:auto;
            border-radius:10pt;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">

            <div id="login_header">
                <h1>the tumbler</h1>
               

            </div>

            <div id="page_body">

                <div id="container">

                    <div style="float:left; width:300pt; height:100%; background-color:#808080; background-image:url(img/book1.jpg); background-repeat:no-repeat; background-size:cover">
                        
                        <p style="font-size:30pt; margin-left:20pt; margin-top:20pt; color:#ffffff; font-family:Verdana">Welcome!</p>
                        
                        <ul style="color:#ffffff">
                               <li><p class="description">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p></li>

                               <li><p class="description">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p></li>

                               <li><p class="description">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p></li>
                        </ul>
                    </div>

                    <div id="login_body" style="width: 250pt; height:230pt; background-color:#ffffff; margin-bottom:30pt; border-radius:5pt; float:right; margin-right:85pt">
                        <table style="height: 219px; width: 60px; background-color: #ffffff; margin-left:10pt; margin-right:10pt; margin-top:20pt">

                            <tr>
                                <td colspan="2" style="text-align: center; font-size: 18pt; background-color: #ffffff; height:90pt"><img src="img/user1.jpg" style="height: 100px"  />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">Username: 
                                </td>
                                <td>
                                    <asp:TextBox ID="txtUserID" runat="server" TextMode="SingleLine" Width="200px" Height="20px" BackColor="#ffffff"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">Password: 
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPassword" runat="server" Text="Password" TextMode="Password" Width="200px" Height="20px" BackColor="#ffffff"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <br />
                                    <asp:Button ID="Button1" runat="server" Text="Login" Font-Bold="true" Width="297px"  Height="40px" BackColor="#0094ff" BorderStyle="Outset" BorderColor="#ffffff" ForeColor="#ffffff" OnClick="Button1_Click"/>    
                                </td>
                            </tr>

                        </table>
                    </div>
             </div>
        </div>
    </form>
    <footer id="footer">
                Copyright &copy 2017-2018
            </footer>
</body>
</html>
