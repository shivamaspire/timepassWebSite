<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="SubJectDetails.aspx.cs" Inherits="SubJectDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <meta charset="utf-8">
    <link href="style.css" media="screen" rel="stylesheet" type="text/css" />
    <link href="iconic.css" media="screen" rel="stylesheet" type="text/css" />
    <script src="JScript.js"></script>
    <script src="http://jqueryjs.googlecode.com/files/jquery-1.2.6.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            loadpopup();

            $('HlSubName').click(function () {
                loadpopup();
            });


            function loadpopup() {
                $('#popbox').fadein('slow');
            };

        });

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="popbox">
        hey
    </div>
    <div class="welcome">
        <asp:Label ID="Lbltxt" runat="server" Text=""></asp:Label>
    </div>
    <div>
        <div class="wrap">
            <nav>
		<ul class="menu">
			<li><a href="Default.aspx"><span class="iconic home"></span>  Home</a></li>
			<li><a href="studentinformation.aspx"><span class="iconic plus-alt"></span>Student Corner</a>
				<ul>
					<li><a href="result.aspx">Result</a></li>
					<li><a href="#">FeesDetails</a></li>
				</ul>
			</li>
			
			<li><a href="contactUs.aspx"><span class="iconic mail"></span> Contact</a>
				<ul>
					<li><a href="contactUs.aspx">Contact Us</a></li>
					<li><a href="#">Directions</a></li>
				</ul>
			</li>
            <li><a href="AdminInfo.aspx"><span class="iconic mail"></span> Admin</a>
			</li>
             <li><a href="Default.aspx"><span class="iconic mail"></span>Log-Out</a>
			</li>
		
		</ul>
		<div class="clearfix"></div>
	</nav>
        </div>
    </div>
    <div>
        <p class="selection">
            Subject Selection...</p>
    </div>
    <div id="down">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="263px"
            Width="1270px" CellPadding="8" ForeColor="#333333" AllowPaging="True" BorderStyle="Solid"
            CellSpacing="4" HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField HeaderText="SubjectName">
                    <ItemTemplate>
                        <asp:HyperLink ID="HlSubName" runat="server" NavigateUrl="#" Text='<%# Eval("SubjectName") %>'></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="StartDate" SortExpression="StartDate">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("StartDate") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Date") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Fees" SortExpression="Fees">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Fees") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Fees") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CourseName" SortExpression="CourseName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("CourseName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("CourseDetail") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </div>
    <hr height="10px" />
    <hr />
    <div style="text-align: center; vertical-align: bottom;">
        <asp:Button ID="Btnselect" runat="server" Text="Select your Subject" OnClick="Btnselect_Click"
            class="btnstyle" Width="164px" />
    </div>
    <div style="height:20px"> &nbsp;</div>
    <div class="textdemo1">
        <asp:Panel ID="PanelUpdate" runat="server">
            <table style="height: 100%; width: 100%;">
               
                <tr style="height: 10%">
                    <td style="width: 50%" class="textstyle">
                        Select Your Subject Name:
                    </td>
                    <td style="width: 50%">
                        <asp:DropDownList ID="DrpSubject" runat="server" OnSelectedIndexChanged="DrpSubject_SelectedIndexChanged"
                            AutoPostBack="True">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr style="height: 30%">
                    <td style="width: 50%" class="textstyle">
                        &nbsp;
                    </td>
                    <td style="width: 50%">
                        &nbsp;
                    </td>
                </tr>
                <tr style="height: 10%">
                    <td style="width: 50%" class="textstyle">
                        Select Your Subject Date:
                    </td>
                    <td style="width: 50%">
                        <asp:DropDownList ID="DrpDate" runat="server" AutoPostBack="True">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr style="height: 30%">
                    <td style="width: 50%" class="textstyle">
                        &nbsp;
                    </td>
                    <td style="width: 50%">
                        &nbsp;
                    </td>
                </tr>
                <tr style="height: 20%">
                    <td style="width: 50%" class="textstyle">
                        <asp:Button ID="BtnUpdate" runat="server" Text="Ok" class="btnstyle" 
                            OnClick="BtnUpdate_Click" />
                    </td>
                    <td style="width: 50%">
                        <asp:Button ID="BtnReset" runat="server" Text="Cancel" class="btnstyle" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </div>
</asp:Content>
