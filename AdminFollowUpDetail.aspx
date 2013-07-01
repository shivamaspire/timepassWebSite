<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="AdminFollowUpDetail.aspx.cs" Inherits="AdminFollowUpDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <!DOCTYPE html>
        <html>
        <head>
            <link href='http://fonts.googleapis.com/css?family=Droid+Sans' rel='stylesheet' type='text/css'>
            <meta charset="utf-8">
            </title>
            <link href="style.css" media="screen" rel="stylesheet" type="text/css" />
            <link href="iconic.css" media="screen" rel="stylesheet" type="text/css" />
            <script src="JScript.js"></script>
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
                    }, 2000); // 4 seconds
                });
            </script>
        </head>
        <body>
            <div class="wrap">
                <nav>
		<ul class="menu">
			<li><a href="Default.aspx"><span class="iconic home"></span>  Home</a></li>
			<li><a href="studentinformation.aspx"><span class="iconic plus-alt"></span>Student Corner</a>
				<ul>
					<li><a href="studentinformation.aspx">StudentDetails</a></li>
					
				</ul>
			</li>
			<li><a href="AdminInfo.aspx"><span class="iconic magnifying-glass"></span> Admin</a>
				<ul>
					<li><a href="#">Attendance Details</a></li>
					<li><a href="AdminFollowup.aspx">Fees Details</a></li>
					<li><a href="AdminFollowUpDetail.aspx">Follow up </a></li>
					
				</ul>
			</li>
			<li><a href="contactUs.aspx"><span class="iconic mail"></span> Contact</a>
				<ul>
					<li><a href="contactUs.aspx">Contact Us</a></li>
					<li><a href="#">Directions</a></li>
				</ul>
			</li>
              <li><a href="Default.aspx"><span class="iconic mail"></span>Log-Out</a>
			</li>
		
		</ul>
		<div class="clearfix"></div>
	</nav>
            </div>
        </body>
        </html>
    </div>
    <div class="welcome">
        <asp:Label ID="Lbltxt" runat="server" Text=""></asp:Label>
    </div>
    <div id="down">
        <asp:DataGrid ID="DgAdmin" runat="server" AllowPaging="True" CellPadding="10" ForeColor="#333333"
            AutoGenerateColumns="False" BorderColor="Black" BorderWidth="10px" CellSpacing="15"
            OnCancelCommand="DgAdmin_CancelCommand" OnEditCommand="DgAdmin_EditCommand" OnUpdateCommand="DgAdmin_UpdateCommand">
            <AlternatingItemStyle BackColor="White" />
            <Columns>
                <asp:TemplateColumn HeaderText="Id">
                    <EditItemTemplate>
                        <asp:TextBox runat="server" ID="Txtid" Text='<%# DataBinder.Eval(Container, "DataItem.Id") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lblid" Text='<%# DataBinder.Eval(Container, "DataItem.Id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="FirstName">
                    <EditItemTemplate>
                        <asp:TextBox runat="server" ID="TxtFirstName" Text='<%# DataBinder.Eval(Container, "DataItem.FirstName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label runat="server" ID="LblFirstName" Text='<%# DataBinder.Eval(Container, "DataItem.FirstName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="LastName">
                    <EditItemTemplate>
                        <asp:TextBox runat="server" ID="TxtLastName" Text='<%# DataBinder.Eval(Container, "DataItem.Lastname") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label runat="server" ID="LblLastName" Text='<%# DataBinder.Eval(Container, "DataItem.Lastname") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="MobileNumber">
                    <EditItemTemplate>
                        <asp:TextBox runat="server" ID="TxtMobile" Text='<%# DataBinder.Eval(Container, "DataItem.MobileNumber") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label runat="server" ID="LblMobile" Text='<%# DataBinder.Eval(Container, "DataItem.MobileNumber") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="EmailId">
                    <EditItemTemplate>
                        <asp:TextBox runat="server" ID="TxtEmail" Text='<%# DataBinder.Eval(Container, "DataItem.EmailId") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label runat="server" ID="LblEmail" Text='<%# DataBinder.Eval(Container, "DataItem.EmailId") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="Birthdate">
                    <EditItemTemplate>
                        <asp:TextBox runat="server" ID="TxtBirth" Text='<%# DataBinder.Eval(Container, "DataItem.Birthdate") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label runat="server" ID="LblBIrth" Text='<%# DataBinder.Eval(Container, "DataItem.Birthdate") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="Address">
                    <EditItemTemplate>
                        <asp:TextBox runat="server" ID="TxtAddress" Text='<%# DataBinder.Eval(Container, "DataItem.Address") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label runat="server" ID="LblAddress" Text='<%# DataBinder.Eval(Container, "DataItem.Address") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="Subject">
                    <EditItemTemplate>
                        <asp:TextBox runat="server" ID="TxtSub" Text='<%# DataBinder.Eval(Container, "DataItem.Subject") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label runat="server" ID="LblSub" Text='<%# DataBinder.Eval(Container, "DataItem.Subject") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="FollowUpDetail">
                    <EditItemTemplate>
                        <asp:TextBox runat="server" ID="TxtFollow" Text='<%# DataBinder.Eval(Container, "DataItem.FollowUp") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label runat="server" ID="LblFollow" Text='<%# DataBinder.Eval(Container, "DataItem.FollowUp") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:EditCommandColumn CancelText="Cancel" EditText="Edit" UpdateText="Update"></asp:EditCommandColumn>
            </Columns>
            <EditItemStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="False" ForeColor="White" Font-Italic="False"
                Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False"
                HorizontalAlign="Center" />
            <ItemStyle BackColor="#E3EAEB" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        </asp:DataGrid>
    </div>
</asp:Content>
