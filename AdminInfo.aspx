<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="AdminInfo.aspx.cs" Inherits="AdminInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="textdemo1">
        <table border="0" cellpadding="0" cellspacing="0" style="height: 100%; width: 100%">
            <tr style="height: 5%">
                <td style="width: 50%; text-align: right;">
                    <h1>
                        <span>A</span>dmin</h1>
                </td>
                <td style="width: 50%; text-align: left; padding-left: 10px">
                    <h1>
                        <span>L</span>ogin</h1>
                </td>
            </tr>
            <tr style="height: 15%">
                <td style="width: 50%" class="textstyle">
                  &nbsp;
                </td>
                 <td style="width: 50%" class="textstyle">
                  &nbsp;
                </td>
            
            </tr>
            
            <tr style="height: 15%">
                <td style="width: 50%" class="textstyle">
                    Enter Name:
                </td>
                <td style="width: 50%; text-align: left; padding-left: 10px">
                    <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr style="height: 15%">
                <td style="width: 50%" class="textstyle">
                  &nbsp;
                </td>
                 <td style="width: 50%" class="textstyle">
                  &nbsp;
                </td>
            
            </tr>
            
            <tr style="height: 15%">
                <td style="width: 50%"class="textstyle">
                    Enter Password:
                </td>
                <td style="width: 50%; text-align: left; padding-left: 10px">
                    <asp:TextBox ID="TxtPass" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr style="height: 15%">
                <td style="width: 50%" class="textstyle">
                  &nbsp;
                </td>
                 <td style="width: 50%" class="textstyle">
                  &nbsp;
                </td>
            
            </tr>
            
            <tr style="height: 10%">
                <td style="width: 50%;"class="textstyle">
                    <asp:Button ID="BtnSave" runat="server" Text="Save" class="btnstyle" 
                        onclick="BtnSave_Click" />
                </td>
                <td style="width: 50%; text-align: left; padding-left: 10px;">
                    <asp:Button ID="BtnClse" runat="server" Text="Close" class="btnstyle" />
                </td>
            </tr>
            </table>
    </div>
</asp:Content>
