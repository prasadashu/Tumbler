<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student-registeration.aspx.cs" Inherits="Student_registeration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Registration</title>

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
                

                <div style="margin-left:230pt; font-size:23pt">Student Registration Form</div>

                <table>

                    <tr><td class="auto-style1"><br/></td></tr>

                     <tr>
                        <td class="auto-style1"></td>
                        <td></td>
                    </tr>

                    <tr><td>
                        <asp:TextBox ID="txtStudID" runat="server" Width="240px" Height="25px" ReadOnly="True" Visible="false"></asp:TextBox></td>

                    </tr>

                    <tr><td></td>
                       <td><asp:TextBox ID="txtPassword" runat="server" Visible="False"></asp:TextBox></td></tr>

                   <tr><td class="auto-style1"><br/></td></tr>

                    <tr>
                        <td class="auto-style1">Name: </td>
                        <td><asp:TextBox ID="txtName" runat="server" Width="240px" Height="25px"></asp:TextBox></td>
                    </tr>

                    <tr><td class="auto-style1"><br/></td></tr>

                    <tr>
                        <td class="auto-style1">Guardian's Name: </td>
                        <td>
                            <asp:TextBox ID="txtGuard_Name" runat="server" Width="240px" Height="25px"></asp:TextBox></td>
                    </tr>

                     

                    <tr>
                        <td class="auto-style2">Date of Birth: </td>
                        <td class="auto-style3">
                            <asp:TextBox ID="txtDOB" runat="server" Width="240px" Height="25px"></asp:TextBox></td>
                        <td class="auto-style3">
                            <asp:Button ID="btnDOB" runat="server" Text="Calender" OnClick="btnDOB_Click" />
                            <asp:Calendar ID="calDOB" runat="server" Width="200px" Height="180px" Visible="False" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" OnSelectionChanged="calDOB_SelectionChanged">
                                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                <NextPrevStyle VerticalAlign="Bottom" />
                                <OtherMonthDayStyle ForeColor="#808080" />
                                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                <SelectorStyle BackColor="#CCCCCC" />
                                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <WeekendDayStyle BackColor="#FFFFCC" />
                            </asp:Calendar>
                        </td>
                    </tr>

                     <tr><td class="auto-style1"><br/></td></tr>

                    <tr>
                        <td class="auto-style1">Gender</td>
                        <td>
                            <asp:DropDownList ID="ddlGender" runat="server" Width="240px" Height="25px"></asp:DropDownList></td>
                    </tr>

                     <tr><td class="auto-style1"><br/></td></tr>

                    <tr>
                        <td class="auto-style1">Category: </td>
                        <td>
                            <asp:DropDownList ID="ddlCategory" runat="server" Width="240px" Height="25px"></asp:DropDownList></td>
                    </tr>

                     <tr><td class="auto-style1"><br/></td></tr>

                    <tr>
                        <td class="auto-style1">Religion: </td>
                        <td>
                            <asp:TextBox ID="txtReligion" runat="server" Width="240px" Height="25px"></asp:TextBox></td>
                    </tr>

                     <tr><td class="auto-style1"><br/></td></tr>

                    <tr>
                        <td class="auto-style1">Nationality: </td>
                        <td>
                            <asp:TextBox ID="txtNationality" runat="server" Width="240px" Height="25px"></asp:TextBox></td>
                    </tr>

                     <tr><td class="auto-style1"><br/></td></tr>

                    <tr>
                        <td class="auto-style1">Marital Status: </td>
                        <td>
                            <asp:TextBox ID="txtMarital_Stat" runat="server" Width="240px" Height="25px"></asp:TextBox></td>
                    </tr>

                     <tr><td class="auto-style1"><br/></td></tr>

                    <tr>
                        <td class="auto-style1">Contact no. </td>
                        <td>
                            <asp:TextBox ID="txtConatct_No" runat="server" Width="240px" Height="25px" ValidationGroup="submit"></asp:TextBox></td>
                        <td>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="*Please enter valid mobile number" Font-Size="10pt" ForeColor="Red" ControlToValidate="txtConatct_No" ValidationExpression="\d{10}" ValidationGroup="submit"></asp:RegularExpressionValidator></td>
                    </tr>

                     <tr><td class="auto-style1"><br/></td></tr>

                    <tr>
                        <td class="auto-style1">E-mail: </td>
                        <td>
                            <asp:TextBox ID="txtEmailID" runat="server" Width="240px" Height="25px" ValidationGroup="submit"></asp:TextBox></td>
                        <td>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*Please enter valid e-mail ID" Font-Size="10pt" ControlToValidate="txtEmailID" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="submit"></asp:RegularExpressionValidator></td>
                    </tr>

                     <tr><td class="auto-style1"><br/></td></tr>

                    <tr>
                        <td class="auto-style1">Address: </td>
                        <td>
                            <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Width="240px" Height="45px"></asp:TextBox></td>
                    </tr>

                     <tr><td class="auto-style1"><br/></td></tr>

                    <tr>
                        <td class="auto-style1">Highest Qualification: </td>
                        <td>
                            <asp:TextBox ID="Hgh_Qual" runat="server" Width="240px" Height="25px"></asp:TextBox></td>
                    </tr>

                     <tr><td class="auto-style1"><br/></td></tr>

                    <tr>
                        <td class="auto-style1">Course: </td>
                        <td>
                            <asp:RadioButtonList ID="rdCourse" runat="server" RepeatDirection="Horizontal"></asp:RadioButtonList></td>
                    </tr>

                     <tr><td class="auto-style1"><br/></td></tr>


                    <tr>
                        <td class="auto-style4">Date of Joining: </td>
                        <td class="auto-style5">
                            <asp:TextBox ID="txtDOJ" runat="server" Width="240px" Height="25px"></asp:TextBox></td>
                        <td class="auto-style5">
                            <asp:Button ID="btnDOJ" runat="server" Text="Calender" OnClick="btnDOJ_Click" />
                            <asp:Calendar ID="calDOJ" runat="server" Width="200px" Height="180px" Visible="False" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" OnSelectionChanged="calDOJ_SelectionChanged">
                                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                <NextPrevStyle VerticalAlign="Bottom" />
                                <OtherMonthDayStyle ForeColor="#808080" />
                                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                <SelectorStyle BackColor="#CCCCCC" />
                                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <WeekendDayStyle BackColor="#FFFFCC" />
                            </asp:Calendar>
                        </td>
                    </tr>

                    <tr><td class="auto-style1">Upload Image: </td>
                        <td>
                            <asp:FileUpload ID="FileUpload1" runat="server" Height="25px" Width="240px" /></td>

                    </tr>

                    <tr><td class="auto-style1"><br/></td></tr>
                                      
                                     
                                      
                    <tr><td></td>
                        <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" Height="40px" OnClick="btnSubmit_Click" Width="125px" ValidationGroup="submit" />
                        </td>
                        <td>
                        <asp:Button ID="btnReset" runat="server" Text="Reset" Height="37px" style="margin-top: 0px" Width="125px" OnClick="btnReset_Click" />
                        </td>
                    </tr>

                    <tr><td class="auto-style1"><br/></td></tr>

                </table>
            </div>
        </div>    
    </div>

        <asp:Label ID="lblAdminID" runat="server" Text="Label" Visible="false"></asp:Label>

    </form>
</body>
</html>
