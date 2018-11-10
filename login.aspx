<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="login">
				<div class="main-agileits">
					<div class="form-w3agile">
						<h3>Login To Toy Store</h3>
                            <div class="key">
								<i class="fa fa-user" aria-hidden="true">
                               <asp:DropDownList ID="DropDownList1" runat="server" Height="42px" Width="252px">
                                   <asp:ListItem>SELECT TYPE</asp:ListItem>
                                   <asp:ListItem Value="admin">ADMIN</asp:ListItem>
                                   <asp:ListItem Value="user">CUSTOMER</asp:ListItem>
                                   <asp:ListItem Value="dealer">DEALER</asp:ListItem>
                                </asp:DropDownList></i>
								<div class="clearfix"></div>
							</div>
							<div class="key">
								<i class="fa fa-user" aria-hidden="true"></i>
                                <asp:TextBox ID="usename" runat="server">Username</asp:TextBox>								
								<div class="clearfix"></div>
							</div>
							<div class="key">
								<i class="fa fa-lock" aria-hidden="true"></i>
                                <asp:TextBox ID="password" runat="server" TextMode="Password">Password</asp:TextBox>
								<div class="clearfix"></div
                                >
							</div>
                           <asp:Button ID="Button1" runat="server" Text="Login" />
						</form>
					</div>
					<div class="forg">
						<li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/dealer_reg.aspx">Register as a Dealer</asp:HyperLink></li>
						<li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/user_reg.aspx">Register as a User</asp:HyperLink></li>
					<div
					</div>
				</div>
			</div>
			</div>
</asp:Content>

