<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student-details.aspx.cs" Inherits="Student_details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Details</title>
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
                <asp:Button ID="btnHome" runat="server" Text="Home" Height="20pt" Width="40pt" BorderStyle="None" style="background-color:transparent; color:#ffffff" Font-Bold="true" Font-Size="11pt" OnClick="btnHome_Click"/></div>

            
                
         </div>


        <div>
        <div id="form">

            <div id="container">

                <br />
                

                <div style="margin-left:230pt; font-size:23pt; margin-bottom:30pt">Student Details</div>

                <br />
                <br />

                <div style="margin-left:150pt">
                    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                </div>

                <br />

                <div style="margin-left:290pt">
                    <asp:Button ID="btnPrint" runat="server" Text="Print" OnClientClick="print();" />
                </div>

            </div>
        </div>    
    </div>

        <asp:Label ID="lblAdmin" runat="server" Text="admin" Visible="false"></asp:Label>

    </form>
</body>
</html>
