<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="result.aspx.cs" Inherits="result" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="textdemo1">
        a<table style="height: 100%; width: 100%" border="1">
            <tr style="height: 100%">
                <td style="width: 50%;">
                    <table style="height: 100%; width: 100%" border="0" cellpadding="0">
                        <tr style="height: 50%">
                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                Enter Your Enrollment NUmber:
                            </td>
                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                <asp:TextBox ID="TxtId" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height: 50%">
                            <td style="width: 50%; text-align: right; padding-right:10px">
                                <asp:Button ID="BtnSearch" runat="server" Text="Search" class="btnstyle" 
                                    onclick="BtnSearch_Click"/>
                            </td>
                            <td style="width: 50%; text-align: left;padding-left:10px;">
                                <asp:Button ID="BtnReset" runat="server" Text="Reset"  class="btnstyle"/>
                            </td>
                        </tr>
                    </table>
                </td>
                <td style="width: 50%;">
                    <table style="height: 100%; width: 100%" border="0" cellpadding="0">
                        <tr style="height: 20%">
                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                Your Enrollment NUmber is:
                            </td>
                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                <asp:Label ID="Lblid" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 20%">
                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                Your Name is:
                            </td>
                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                <asp:Label ID="LblName" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 20%">
                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                Your MobileNumber is:
                            </td>
                            <td style="width: 50%; text-align: center; vertical-align: middle">
                                <asp:Label ID="LblMobile" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    <div>
        <asp:DataGrid ID="DgResult" runat="server" BackColor="White" 
            BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            Font-Bold="False" Font-Italic="False" Font-Overline="False" 
            Font-Strikeout="False" Font-Underline="False" GridLines="Horizontal" 
            HorizontalAlign="Center" AutoGenerateColumns="False">
            <AlternatingItemStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:TemplateColumn HeaderText="Student Id">
                    <EditItemTemplate>
                        <asp:TextBox runat="server" 
                            Text='<%# DataBinder.Eval(Container, "DataItem.Id") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label runat="server" 
                            Text='<%# DataBinder.Eval(Container, "DataItem.Id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="Marks">
                    <EditItemTemplate>
                        <asp:TextBox runat="server" 
                            Text='<%# DataBinder.Eval(Container, "DataItem.Marks") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label runat="server" 
                            Text='<%# DataBinder.Eval(Container, "DataItem.Marks") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" 
                ForeColor="#F7F7F7" HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" 
                Mode="NumericPages" />
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        </asp:DataGrid>
    </div>
    <div style="text-align:center;">
        <asp:Label ID="lblpass" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
