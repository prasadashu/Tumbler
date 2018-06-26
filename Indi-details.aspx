<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Indi-details.aspx.cs" Inherits="Indi_details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profile</title>

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
            width:100%;
            font-size: 30px;
            color: #ffffff;
        }

       h1 {
            padding-left: 40pt;
            height: 50px;
            margin: 0;
        }

        .auto-style2 {
            width: 158px;
        }

    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div id="login_header">
                <h1>the tumbler</h1>

        <div style="margin-right:30pt; text-align:right">
                <asp:Button ID="btnHome" runat="server" Text="Back" Height="20pt" Width="40pt" BorderStyle="None" style="background-color:transparent; color:#ffffff" Font-Bold="true" Font-Size="11pt" OnClick="btnHome_Click"/></div>

            </div>

        <div id="form">

            <div id="container">

                <br />

                <div style="margin-left:230pt; font-size:23pt">Student Details</div>

                <table>

                    <tr><td class="auto-style1"><br/></td></tr>

                    <tr>

                        <td class="auto-style1">Student ID: </td>
                        <td class="auto-style2">
                            <asp:Label ID="lblStudID" runat="server" Text="Label"></asp:Label></td>

                    </tr>

                    <tr><td class="auto-style1"><br/></td></tr>

                    <tr>

                        <td class="auto-style1">Student Name: </td>
                        <td class="auto-style2">
                            <asp:Label ID="lblStudName" runat="server" Text="Label"></asp:Label></td>

                    </tr>

                    <tr><td class="auto-style1"><br/></td></tr>

                    <tr>

                        <td class="auto-style1">Guardian Name: </td>
                        <td class="auto-style2">
                            <asp:Label ID="lblGuardName" runat="server" Text="Label"></asp:Label></td>

                    </tr>

                    <tr><td class="auto-style1"><br/></td></tr>

                    <tr>
                        <td class="auto-style1">Date of birth: </td>
                        <td class="auto-style2">
                            <asp:Label ID="lblDtofBrth" runat="server" Text="Label"></asp:Label></td>
                    </tr>

                    <tr><td class="auto-style1"><br/></td></tr>

                    <tr>
                        <td class="auto-style1">Date of joining: </td>
                        <td class="auto-style2">
                            <asp:Label ID="lblDtofJon" runat="server" Text="Label"></asp:Label></td>
                    </tr>

                    <tr><td class="auto-style1"><br/></td></tr>

                    <tr>
                        <td class="auto-style1">E-mail</td>
                        <td class="auto-style2">
                            <asp:Label ID="lblMail" runat="server" Text="Label"></asp:Label></td>
                    </tr>

                    <tr><td class="auto-style1"><br/></td></tr>

                    <tr>
                        <td class="auto-style1">Course</td>
                        <td class="auto-style2">
                            <asp:Label ID="lblCourse" runat="server" Text="Label"></asp:Label></td>
                    </tr>

                    <tr><td class="auto-style1"><br/></td></tr>

                    <tr>
                        <td class="auto-style1">Category</td>
                        <td class="auto-style2">
                            <asp:Label ID="lblCategory" runat="server" Text="Label"></asp:Label></td>
                    </tr>

                    <tr><td class="auto-style1"><br/></td></tr>

                    <tr>
                        <td class="auto-style1">Nationality</td>
                        <td class="auto-style2">
                            <asp:Label ID="lblNationality" runat="server" Text="Label"></asp:Label></td>
                    </tr>

                    <tr><td class="auto-style1"><br/></td></tr>

                    <tr>
                        <td class="auto-style1">Religion</td>
                        <td class="auto-style2">
                            <asp:Label ID="lblReligion" runat="server" Text="Label"></asp:Label></td>
                    </tr>

                    <tr><td class="auto-style1"><br/></td></tr>

                    <tr><td></td>
                        <td class="auto-style2"></td>
                        <td class="auto-style1">
                        <asp:Button ID="btnPrint" runat="server" Text="Print" Width="90pt" OnClientClick="print();" style="margin-left: 0px"/></td></tr>
                </table>

            </div>

        </div>
        <asp:Label ID="lblAdmin" runat="server" Text="Label" Visible="false"></asp:Label>
    
    
    </form>
</body>
</html>
