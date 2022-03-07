<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="UserRegistration.WebForm1" MasterPageFile="~/Site1.Master"%>


 <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
        <div class="auto-style1">
            <strong>Login Page</strong></div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style4">UserName</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBoxuserName" runat="server" Height="50px" Width="400px"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxuserName" ErrorMessage="Please enter User name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Password</td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBoxPass" runat="server" Height="50px" TextMode="Password" Width="400px"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Please enter password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style9">
                    <asp:Button ID="Button_login" runat="server" Height="74px" OnClick="Button_login_Click" Text="Login" Width="141px" />
                </td>
                <td class="auto-style3">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx">New User Register here</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
        </table>
     </asp:Content>   
  
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <style type="text/css">
        .auto-style1 {
            width: 137px;
        }
        .auto-style2 {
            width: 871px;
            height: 478px;
        }
        .auto-style3 {
            width: 174px;
        }
    </style>
</asp:Content>
   
  
