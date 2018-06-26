<%@ Page Language="C#" AutoEventWireup="true" CodeFile="File-upload.aspx.cs" Inherits="File_upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tutorial Upload</title>

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

        </style>

</head>
<body>
    <form id="form1" runat="server">

        <div id="login_header">
                <h1>the tumbler</h1>

        <div style="margin-right:30pt; text-align:right">
                <asp:Button ID="btnHome" runat="server" Text="Home" Height="20pt" Width="50pt" BorderStyle="None" style="background-color:transparent; color:#ffffff" Font-Bold="true" Font-Size="11pt" OnClick="btnHome_Click"/></div>

           </div>

           <div id="form">

                      <div id="container"> 
                          
                          <br />
                

                <div style="margin-left:230pt; font-size:23pt">Tutorial Upload</div>
                                                           
                        <table>

                            <tr><td class="auto-style1"><br/></td></tr>
                           
                            <tr>
                                <td class="auto-style1">Tutorial ID: </td>
                                <td>
                                    <asp:TextBox ID="txtTutorialID" runat="server" Width="240px" Height="25px" ReadOnly="True"></asp:TextBox></td>
                            </tr>

                            <tr><td class="auto-style1">&nbsp;</td></tr>
                            
                            <tr>
                                <td class="auto-style1">Tutorial Tiltle: </td>
                                <td>
                                    <asp:TextBox ID="txtTutorialTitle" runat="server" Width="240px" Height="25px"></asp:TextBox></td>
                            </tr>

                            <tr><td class="auto-style1"><br/></td></tr>
                            
                            <tr>
                                <td class="auto-style1">Description: </td>
                                <td>
                                    <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Width="240px" Height="45px"></asp:TextBox></td>
                            </tr>
                            
                            <tr><td class="auto-style1"><br/></td></tr>
                            
                            <tr>
                                <td class="auto-style1">Subject: </td>
                                <td>
                                    <asp:DropDownList ID="ddlSubject" runat="server"></asp:DropDownList></td>
                            </tr>

                            <tr><td class="auto-style1"><br/></td></tr>
                            
                            <tr>
                                <td class="auto-style1">Category: </td>
                                <td>
                                    <asp:CheckBoxList ID="chkCategory" runat="server" RepeatDirection="Horizontal"></asp:CheckBoxList></td>
                            </tr>

                            <tr><td class="auto-style1"><br/></td></tr>
                            
                            <tr>
                                <td class="auto-style1">Upload file: </td>
                                <td>
                                    <asp:FileUpload ID="FileUpload1" runat="server"/></td>
                            </tr>
                            
                            <tr><td class="auto-style1"><br/></td></tr>

                                                        
                            <tr>
                                <td></td>
                                <td>
                                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" Height="40px" Width="120px" OnClick="btnSubmit_Click" />
                                 </td>
                                <td>
                                    <asp:Button ID="btnReset" runat="server" Text="Reset" Height="40px" Width="120px" OnClick="btnReset_Click"/>
                                </td>
                            </tr>
                            
                                 <tr><td class="auto-style1"><br/></td></tr>    
                           
                         </table>
                        </div>
                       </div>

        <asp:Label ID="lblAdmin" runat="server" Text="Label" Visible="false"></asp:Label>
        
        <br />
        <br />
            
    </form>
</body>
</html>
