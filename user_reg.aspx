<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="user_reg.aspx.cs" Inherits="usser_reh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
    <div class="login" >
				<div class="main-agileits" style="width:50%; background-image: url('images/i1.jpg');">
					<div class="form-w3agile">
						<h3>
                            <div class="text-left">
                                User Registration</div></h3>
                            <table class="nav-justified" border="0" >
                                <tbody class="text-left">
                            <tr><div class="key">
                                <td style="width:100px">&nbsp;</td>
								<td style="width: 258px">&nbsp;</td>
                                <td class="text-left">
                                    <asp:Image ID="Image1" runat="server" Height="80px" Width="80px" />
                                </td>
                                <div class="clearfix"></div>
							</div>
                                
                            </tr>
                            <tr>
                                <td class="text-left" ><i class="fa fa-user" aria-hidden="true"></i></td>
                                <td class="text-left" style="width: 258px;height:80px;"><asp:TextBox ID="fname" runat="server" Height="25px" Width="233px" placeholder="first name"></asp:TextBox></td>
                                <td class="text-left"><asp:TextBox ID="lname" runat="server" Height="25px" Width="233px" placeholder="last name"></asp:TextBox><br></td>
                            </tr><br>
                            <tr>
                                <td class="text-left"><i class="fa fa-envelope" aria-hidden="true"></i></td>
                                <td class="text-left" style="width: 258px;height:80px;"><asp:TextBox ID="email" runat="server" Height="25px" Width="233px" placeholder="email address"></asp:TextBox></td>
                                <td class="text-left"><asp:TextBox ID="email2" runat="server" Height="25px" Width="233px" placeholder=" confirm email address"></asp:TextBox></td>
                            </tr>
                            
                            <tr>
                                <td class="text-left"><i class="fa fa-phone" aria-hidden="true"></i></td>
                                <td class="text-left" style="width: 258px;height:80px;"><asp:TextBox ID="phne" runat="server" Height="25px" Width="233px" placeholder="contact number"></asp:TextBox></td>
                                <td class="text-left">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="text-left"><i class="fa fa-users" aria-hidden="true"></i></td>
                                <td class="text-left" style="width: 258px;height:80px;"><asp:TextBox ID="uname" runat="server" Height="25px" Width="233px" placeholder="user name"></asp:TextBox></td>
                                <td class="text-left">&nbsp;<br></td>
                            </tr>
                            <tr>
                                <td class="text-left"><i class="fa fa-lock" aria-hidden="true"></i></td>
                                <td class="text-left" style="width: 258px;height:80px;"><asp:TextBox ID="paswd" runat="server" Height="25px" Width="233px" placeholder="password" TextMode="Password"></asp:TextBox></td>
                                <td class="text-left"><asp:TextBox ID="cnpswd" runat="server" Height="25px" Width="233px" placeholder="confirm password" TextMode="Password"></asp:TextBox><br></td>
                            </tr>
                            <tr>
                                <td class="text-left"><i class="fa fa-image" aria-hidden="true"></i></td>
                                <td class="text-left" style="width: 258px;height:80px;"><asp:Label runat="server" Text="Profile Picture"></asp:Label></td>
                                <td class="text-left" style="width: 258px">
                                    <asp:FileUpload ID="image" runat="server" Width="230px" /></td>
                                
                            </tr>
                         <tr>
                        <td colspan="3" align="center"><asp:Button ID="submit" runat="server" Text="REGISTER"  Width="100px"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button width="100px" ID="reset" runat="server" Text="RESET" />

                             </td>
                            </table>
                        </h3>
                         					</div>
				</div>
			</div>
			</div>
</asp:Content>

