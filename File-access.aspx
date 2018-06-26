<%@ Page Language="C#" AutoEventWireup="true" CodeFile="File-access.aspx.cs" Inherits="File_access" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tutorials</title>

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
           width: 170px;
           height: 226px;
       }
       .auto-style3 {
           height: 226px;
       }
       .auto-style4 {
           width: 170px;
           height: 174px;
       }
       .auto-style5 {
           height: 174px;
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
                

                <div style="margin-left:230pt; font-size:23pt; margin-bottom:30pt">Tutorials Available</div>

                <br />
                <br />

                <div style="margin-left:150pt; margin-bottom:60pt">
                    <asp:GridView ID="grdFiles" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" OnSelectedIndexChanged="grdFiles_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:BoundField DataField="TutorialID" HeaderText="TutorialID" />
                            <asp:BoundField DataField="TutorialTitle" HeaderText="TutorialTitle" />
                            <asp:BoundField DataField="Description" HeaderText="Description" />
                            <asp:BoundField DataField="Subject" HeaderText="Subject" />
                            <asp:CommandField SelectText="Download" ShowSelectButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="Gray" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                </div>

            </div>
        </div>    
    </div>

        <asp:Label ID="lblCategory" runat="server" Text="Label" Visible="false"></asp:Label>
        <asp:Label ID="lblStudID" runat="server" Text="Label" Visible="false"></asp:Label>

    </form>
</body>
</html>
