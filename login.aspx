<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content">
    <div class="login">
				<div class="main-agileits">
                      <table align="center" style="width: 60%; border: 1px solid #000000; background-color: #FFFFFF">
                         <tr>
                         <td colspan="2"><h3>Login To Toy Store</h3> </td>    
                         </tr>
                         <tr>
                          <td><i class="fa fa-user" aria-hidden="true"></i></td>
                         <td><asp:TextBox ID="usename" runat="server" placeholder="username/company name"></asp:TextBox></td>
                         </tr> 
                         <tr>
                         <td><i class="fa fa-user" aria-hidden="true"></i></td>
                         <td><asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="213px" >
                                   <asp:ListItem>SELECT TYPE</asp:ListItem>
                                   <asp:ListItem Value="admin">ADMIN</asp:ListItem>
                                   <asp:ListItem Value="user">CUSTOMER</asp:ListItem>
                                   <asp:ListItem Value="dealer">DEALER</asp:ListItem>
                                </asp:DropDownList>
                         </td></tr>
                         <tr>
                         <td><i class="fa fa-lock" aria-hidden="true"></i></td>
                         <td><asp:TextBox ID="password" runat="server" TextMode="Password" placeholder="password">Password</asp:TextBox></td>
                         </tr>
                         <tr>
                           <td colspan="2" align="center" style="height: 26px"><asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" /></td>
                         </tr>
                         <tr>
                             <td>&nbsp;</td>
                             <td><div class="forg">
						<li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/dealer_reg.aspx">Register as a Dealer</asp:HyperLink></li>
						<li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/user_reg.aspx">Register as a User</asp:HyperLink></li>
					</div></td>
                         </tr>
                     </table>

                         
					</div>
					
				</div>
			</div>
			</div>
</asp:Content>

