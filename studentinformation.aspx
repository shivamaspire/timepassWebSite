<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="studentinformation.aspx.cs" Inherits="studentinformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $('.fadein img:gt(0)').hide();

            setInterval(function () {
                $('.fadein :first-child').fadeOut()
                             .next('img')
                             .fadeIn()
                             .end()
                             .appendTo('.fadein');
            }, 4000); // 4 seconds
        });
              

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <table border="0" cellpadding="0" cellspacing="0" style="height: 100%; width: 100%">
            <tr style="height: 100%">
                <td style="width: 50%; text-align: center; vertical-align: top;">
                    <table border="0" cellpadding="0" cellspacing="0" style="height: 100%; width: 100%">
                        <tr style="height: 50%">
                            <td style="width: 100%;">
                                <div class="fadein">
                                    <div>
                                        <img src="photos/1.png" /> <img src="photos/2.png" />
                                        <img src="photos/3.png" />
                                       
                                        </div>
                                </div>
                            </td>
                        </tr>
                    </table>
                </td>
                <td style="width: 50%; text-align: center; vertical-align: top;" id="textdemo">
                    <table border="0" cellpadding="0" cellspacing="0" style="height: 100%; width: 100%">
                        <tr style="height: 5%">
                            <td style="width: 50%; text-align: right;">
                                <h1>
                                    <span>S</span>tudent</h1>
                            </td>
                            <td style="width: 50%; text-align: left; padding-left: 10px">
                                <h1>
                                    <span>L</span>ogin</h1>
                            </td>
                        </tr>
                        <tr style="height: 5%">
                            <td style="width: 50%">
                                Enter Name:
                            </td>
                            <td style="width: 50%; text-align: left; padding-left: 10px">
                                <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height: 5%">
                            <td style="width: 50%">
                                Enter Password:
                            </td>
                            <td style="width: 50%; text-align: left; padding-left: 10px">
                                <asp:TextBox ID="TxtPass" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height: 10%">
                            <td style="width: 50%; padding-right: 10px">
                                <asp:Button ID="BtnSave" runat="server" Text="Save" class="btnstyle" OnClick="BtnSave_Click" />
                            </td>
                            <td style="width: 50%; text-align: left; padding-left: 10px;">
                                <asp:Button ID="BtnClse" runat="server" Text="Close" class="btnstyle" />
                            </td>
                        </tr>
                        <tr style="height: 10%">
                            <td style="width: 50%; margin-left: 100px">
                                <asp:HyperLink ID="hlregi" runat="server" NavigateUrl="~/registration2.aspx">Need New Account??</asp:HyperLink>
                            </td>
                            <td style="width: 50%;">
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
