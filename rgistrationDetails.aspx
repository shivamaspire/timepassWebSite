<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="rgistrationDetails.aspx.cs" Inherits="rgistrationDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">
        $(function () {
            $('.fadein img:gt(0)').hide();

            setInterval(function () {
                $('.fadein :first-child').fadeOut()
                             .next('img')
                             .fadeIn()
                             .end()
                             .appendTo('.fadein');
            }, 2000); // 4 seconds
        });
    </script>
    <style type="text/css">
        .style1
        {
            width: 139%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<div class="register">
<span>S</span>tudent<span> R</span>egistration</div>
    <div id="one">
        <table style="height: 100%; width: 100%;" border="0"  cellpadding="1" cellspacing="1" class="border" >
            <tr style="height: 100%">
             <td style="width:15%">
                &nbsp;
                </td>
                <td style="width: 15%; text-align: center;">
                    <table border="0" cellpadding="1" cellspacing="1" style="height: 100%; width: 100%">
                        <tr style="height: 20%">

                            <td class="style1">
                                <p style="font-family: Algerian">
                                    please</p>
                            </td>
                        </tr>
                        <tr style="height: 20%">
                            <td class="style1">
                                <p style="font-family: Algerian">
                                    Register</p>
                            </td>
                        </tr>
                        <tr style="height: 20%">
                            <td class="style1">
                                <p style="font-family: Algerian">
                                    here</p>
                            </td>
                        </tr>
                        <tr style="height: 40%">
                            <td class="style1">
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </td>
                <td style="width: 50%">
                    <table border="0" cellpadding="1" cellspacing="1" style="height: 100%; width: 100%">
                        <tr style="height: 10%">
                            <td style="width: 100%;">
                                <table border="0" cellpadding="0" style="height: 100%; width: 100%">
                                    <tr style="height: 100%">
                                        <td style="width: 50%;" class="three">
                                            Reference Id:
                                        </td>
                                        <td style="width: 50%;" class="two">
                                            <asp:TextBox ID="TxtId" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rvId" runat="server" ControlToValidate="TxtId" 
                                                ErrorMessage="*"></asp:RequiredFieldValidator>
                                            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                                ControlToValidate="TxtId" ErrorMessage="Enter Value between 0 to 10" 
                                                MaximumValue="10" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                                            <br />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height: 10%">
                            <td style="width: 100%;">
                                &nbsp;
                            </td>
                        </tr>
                        <tr style="height: 10%">
                            <td style="width: 100%;">
                                <table border="0" cellpadding="0" style="height: 100%; width: 100%">
                                    <tr style="height: 100%">
                                        <td style="width: 50%;" class="three">
                                            Enter First-Name:
                                        </td>
                                        <td style="width: 50%;" class="two">
                                            <asp:TextBox ID="TxtFName" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                ControlToValidate="TxtFName" ErrorMessage="Please Enter Your Name"></asp:RequiredFieldValidator>
                                            <br />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height: 10%">
                            <td style="width: 100%;">
                                &nbsp;
                            </td>
                        </tr>
                        <tr style="height: 10%">
                            <td style="width: 100%;">
                                <table border="0" cellpadding="0" style="height: 100%; width: 100%">
                                    <tr style="height: 100%">
                                        <td style="width: 50%;" class="three">
                                            Enter Last-Name:
                                        </td>
                                        <td style="width: 50%;" class="two">
                                            <asp:TextBox ID="TxtLName" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height: 10%">
                            <td style="width: 100%;">
                                &nbsp;
                            </td>
                        </tr>
                        <tr style="height: 10%">
                            <td style="width: 100%;">
                                <table border="0" cellpadding="0" style="height: 100%; width: 100%">
                                    <tr style="height: 100%">
                                        <td style="width: 50%;" class="three">
                                            Enter Password:
                                        </td>
                                        <td style="width: 50%;" class="two">
                                            <asp:TextBox ID="TxtPass" runat="server" TextMode="Password"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height: 10%">
                            <td style="width: 100%;">
                                &nbsp;
                            </td>
                        </tr>
                        <tr style="height: 10%">
                            <td style="width: 100%;">
                                <table border="0" cellpadding="0" style="height: 100%; width: 100%">
                                    <tr style="height: 100%">
                                        <td style="width: 50%;" class="three">
                                            Enter Con-Password:
                                        </td>
                                        <td style="width: 50%;" class="two">
                                            <asp:TextBox ID="TxtCpass" runat="server" TextMode="Password"></asp:TextBox>
                                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                                ControlToCompare="TxtPass" ControlToValidate="TxtCpass" 
                                                ErrorMessage="Password Does Not Match"></asp:CompareValidator>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height: 10%">
                            <td style="width: 100%;">
                                &nbsp;
                            </td>
                        </tr>
                        <tr style="height: 10%">
                            <td style="width: 100%;">
                                <table border="0" cellpadding="0" style="height: 100%; width: 100%">
                                    <tr style="height: 100%">
                                        <td style="width: 50%;" class="three">
                                            Enter Mobile-Number:
                                        </td>
                                        <td style="width: 50%;" class="two">
                                            <asp:TextBox ID="TxtNumber" runat="server"></asp:TextBox>
                                            <br />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height: 10%">
                            <td style="width: 100%;">
                                &nbsp;
                            </td>
                        </tr>
                        <tr style="height: 5%">
                            <td style="width: 100%;">
                                <table border="0" cellpadding="0" style="height: 100%; width: 100%">
                                    <tr style="height: 100%">
                                        <td style="width: 50%;" class="three">
                                            <asp:RadioButton ID="Male" runat="server" GroupName="gender" />Male
                                        </td>
                                        <td style="width: 50%;" class="two">
                                            <asp:RadioButton ID="Female" runat="server" GroupName="gender" />Female
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height: 10%">
                            <td style="width: 100%;">
                                &nbsp;
                            </td>
                        </tr>
                        <tr style="height: 10%">
                            <td style="width: 100%;">
                                <table border="0" cellpadding="0" style="height: 100%; width: 100%">
                                    <tr style="height: 100%">
                                        <td style="width: 50%;" class="three">
                                            Enter Your Address:
                                        </td>
                                        <td style="width: 50%;" class="two">
                                            <asp:TextBox ID="TxtAddress" runat="server" Columns="10" Rows="3" 
                                                TextMode="MultiLine"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height: 10%">
                            <td style="width: 100%;">
                                &nbsp;
                            </td>
                        </tr>
                        <tr style="height: 5%">
                            <td style="width: 100%;">
                                <table border="0" cellpadding="0" style="height: 100%; width: 100%">
                                    <tr style="height: 100%">
                                        <td style="width: 50%;" class="three">
                                            Enter Your BirthDay:
                                        </td>
                                        <td style="width: 50%; text-align: left; vertical-align: middle; position: relative;"
                                            class="two">
                                            <asp:Calendar ID="CalBirthday" runat="server" BackColor="White" BorderColor="White"
                                                BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px"
                                                NextPrevFormat="FullMonth" Width="350px">
                                                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                                                <OtherMonthDayStyle ForeColor="#999999" />
                                                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True"
                                                    Font-Size="12pt" ForeColor="#333399" />
                                                <TodayDayStyle BackColor="#CCCCCC" />
                                            </asp:Calendar>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height: 10%">
                            <td style="width: 100%;">
                                &nbsp;
                            </td>
                        </tr>
                        <tr style="height: 10%">
                            <td style="width: 100%;">
                                <table border="0" cellpadding="0" style="height: 100%; width: 100%">
                                    <tr style="height: 100%">
                                        <td style="width: 50%;" class="three">
                                            Enter your EmailID:
                                        </td>
                                        <td style="width: 50%;" class="two">
                                            <asp:TextBox ID="TxtEmailId" runat="server"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                ControlToValidate="TxtEmailId" ErrorMessage="Enter Valid Email" 
                                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height: 10%">
                            <td style="width: 100%;">
                                &nbsp;
                            </td>
                        </tr>
                        <tr style="height: 5%">
                            <td style="width: 100%;">
                                <table border="0" cellpadding="0" style="height: 100%; width: 100%">
                                    <tr style="height: 100%">
                                        <td style="width: 50%;" class="three">
                                            <asp:Button ID="BtnSave" runat="server" Text="Save" class="valid" 
                                                OnClick="BtnSave_Click"  />
                                        </td>
                                        <td style="width: 50%;" class="two">
                                            <asp:Button ID="BtnCancel" runat="server" Text="Cancel" class="cancel" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
                <td style="width:15%">
                &nbsp;
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
