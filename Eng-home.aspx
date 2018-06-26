<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Eng-home.aspx.cs" Inherits="Eng_home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>

    <style type="text/css">

        h1 {
            padding-left: 40pt;
            height: 50px;
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

        #footer {
            text-align: right;
            font-size: 10pt;
            color: #000000;
            margin-right:10pt;
            background-color:transparent;
            margin-top:70pt;
            clear:both;
        }

        #page_body {            
            height: 340pt;
            margin: 0;
        }

        #login-form{
            background-color:#2374cc;
            width:100%;
            height: 300pt;
            border-radius:5pt;
            box-shadow: 5px 5px 1px #353131;
        }

        #change-password{
            background-color:#49e51c;
            width:100%;
            height: 300pt;
            border-radius:5pt;
            box-shadow: 5px 5px 1px #353131;
        }

        #tutorial-download{
            background-color:#808080;
            width:100%;
            height: 300pt;
            border-radius:5pt;
            box-shadow: 5px 5px 1px #353131;
        }

        #container{
            margin-left:50pt;
            margin-right:50pt;
            margin-top:10pt;
        }

    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div id="login_header">
                <h1>the tumbler</h1>

        <div style="margin-right:30pt; text-align:right">
                <asp:Button ID="btnLogout" runat="server" Text="Logout" Height="20pt" Width="50pt" BorderStyle="None" style="background-color:transparent; color:#ffffff" Font-Bold="true" Font-Size="11pt" OnClick="btnLogout_Click"/></div>

            </div>

            <div id="page_body">
                                
              <div id="container">                                  
                <table>

                    <tr>
                        
                        <td style="font-family:'Lucida Sans Unicode'; font-size:12pt;">

                            <div style="background-color:#ffffff; opacity:0.87; border-radius:5pt">

                                <div style="margin-left:30pt">

                                <br />
                            
                            Student ID: <asp:Label ID="lblStudID" runat="server" Text="Label"></asp:Label>

                                <br />
                                <br />

                              </div>
                            </div>

                        <br />
                        
                        </td>
                      
                    </tr>

                    <tr>
                        <td style="width:280pt;"><div id="login-form"><img src="img/form1.jpg" style="width: 135px; margin-left:90pt; margin-top:30pt"/>
                            <br />
                            <p style="margin-left:70pt; font-size:25pt; font-family:'Lucida Sans Unicode'; color:#ffffff">View profile</p>
                                <br />
                            <div style="margin-left:16pt"><asp:Button ID="btnLoginForm" runat="server" Text="Click here" BackColor="#ffffff" Width="250pt" Height="30pt" OnClick="btnLoginForm_Click"/></div>
                                                 </div></td>

                        <td style="width:40pt"></td>

                        <td style="width:280pt"><div id="change-password"><img src="img/password1.jpg" style="width: 135px; margin-left:90pt; margin-top:30pt"/>
                            <br />
                            <p style="margin-left:32pt; font-size:25pt; font-family:'Lucida Sans Unicode'; color:#ffffff">Change password</p>
                            <br />
                            <div style="margin-left:16pt"><asp:Button ID="btnPasswordChng" runat="server" Text="Click here" BackColor="#ffffff" Width="250pt" Height="30pt" OnClick="btnPasswordChng_Click"/></div>
                                                </div></td>

                        <td style="width:40pt"></td>

                        <td style="width:280pt"><div id="tutorial-download"><img src="img/tutorial.png" style="width: 135px; margin-left:90pt; margin-top:30pt"/>
                            <br />
                            <p style="margin-left:25pt; font-size:25pt; font-family:'Lucida Sans Unicode'; color:#ffffff">Tutorials download</p>
                            <br />
                            <div style="margin-left:16pt"><asp:Button ID="btnTutorialDnld" runat="server" Text="Click here" BackColor="#ffffff" Width="250pt" Height="30pt" OnClick="btnTutorialDnld_Click"/></div>
                                                </div></td>
                    </tr>
                 </table>
               </div>             
            </div>
    </form>
    <footer id="footer">
        Copyright &copy 2017-2018
    </footer>
</body>
</html>
