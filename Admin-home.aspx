<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin-home.aspx.cs" Inherits="Admin_home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Home</title>

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
            margin-top:30pt;
            clear:both;
        }

        #page_body {            
            height: 340pt;
            margin: 0;
        }

        #container{
            margin-left:90pt;
            margin-right:90pt;
            margin-top:50pt;
            background-color:#ffffff;
            height:100%;
            opacity:0.87;
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
                         <td><div style="margin:auto; margin-left:230pt; margin-right:230pt; width:400pt"><asp:Button ID="btnStudReg" runat="server" Text="Student Registration" Width="400pt" Height="40pt" style="margin-bottom:10pt; margin-top:10pt; background-color:#2374cc; color:#ffffff; font-size:17pt; font-family:'Lucida Sans Unicode'" OnClick="btnStudReg_Click" /></div></td>
                    </tr>
                    <tr>
                        <td><div style="margin:auto; margin-left:230pt; margin-right:230pt; width:400pt"><asp:Button ID="btnTutorialUpld" runat="server" Text="Tutorial Upload" Width="400pt" Height="40pt" style="margin-bottom:10pt; margin-top:10pt; background-color:#2374cc; color:#ffffff; font-size:17pt; font-family:'Lucida Sans Unicode'" OnClick="btnTutorialUpld_Click" /></div></td>
                    </tr>
                    <tr>
                        <td><div style="margin:auto; margin-left:230pt; margin-right:230pt; width:400pt"><asp:Button ID="btnPasswordChng" runat="server" Text="Password Change" Width="400pt" Height="40pt" style="margin-top:10pt; margin-bottom:10pt; background-color:#2374cc; color:#ffffff; font-size:17pt; font-family:'Lucida Sans Unicode'" OnClick="btnPasswordChng_Click" /></div></td>
                    </tr>
                    <tr>
                        <td><div style="margin:auto; margin-left:230pt; margin-right:230pt; width:400pt"><asp:Button ID="btnStudDet" runat="server" Text="Student Details" Width="400pt" Height="40pt" style="margin-top:10pt; margin-bottom:10pt; background-color:#2374cc; color:#ffffff; font-size:17pt; font-family:'Lucida Sans Unicode'" OnClick="btnStudDet_Click"/></div></td>
                    </tr>
                    <tr>
                        <td><div style="margin:auto; margin-left:230pt; margin-right:230pt; width:400pt"><asp:Button ID="btnTutDet" runat="server" Text="Tutorial Details" Width="400pt" Height="40pt" style="margin-top:10pt; margin-bottom:10pt; background-color:#2374cc; color:#ffffff; font-size:17pt; font-family:'Lucida Sans Unicode'" OnClick="btnTutDet_Click"/></div></td>
                    </tr>
                 </table>
                </div>
               </div>    
        
        <asp:Label ID="lblAdminID" runat="server" Text="label" Visible="false"></asp:Label>
                 
    </form>
    <footer id="footer">
        Copyright &copy 2017-2018
    </footer>
</body>
</html>
