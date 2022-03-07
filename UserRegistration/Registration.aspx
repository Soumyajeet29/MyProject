<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="UserRegistration.Regitration" MasterPageFile="~/Site1.Master"%>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
        <div>
            <table align="right" class="auto-style2">
                <caption class="auto-style37">
                    <strong>&nbsp;&nbsp; REGISTRATION PAGE</strong></caption>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style9"></td>
                    <td class="auto-style16"></td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong>FirstName</strong></td>
                    <td class="auto-style10" property="og:video:width">
                        <asp:TextBox ID="TextBoxFirstname" runat="server" Height="30px" Width="350px"></asp:TextBox>
                    </td>
                    <td class="auto-style17">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxFirstname" ErrorMessage="First Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong>LastName</strong></td>
                    <td class="auto-style10" property="og:video:width">
                        <asp:TextBox ID="TextBoxLastname" runat="server" Height="30px" Width="350px"></asp:TextBox>
                    </td>
                    <td class="auto-style17">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxLastname" ErrorMessage="LastName is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong>Contact</strong></td>
                    <td class="auto-style10" property="og:video:width">
                        <asp:TextBox ID="TextBoxcontact" runat="server" Height="30px" Width="350px"></asp:TextBox>
                    </td>
                    <td class="auto-style17">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxcontact" ErrorMessage="Contact is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong>Email</strong></td>
                    <td class="auto-style10" property="og:video:width">
                        <asp:TextBox ID="TextBoxEmail" runat="server" Height="30px" Width="350px"></asp:TextBox>
                    </td>
                    <td class="auto-style17">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="You must enter the valid email id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong>Gender</strong></td>
                    <td class="auto-style10">
                        <asp:DropDownList ID="DropDownListgender" runat="server" CssClass="auto-style12" Height="30px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="200px">
                            <asp:ListItem>Select gender</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Others</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style17">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownListgender" ErrorMessage="Gender is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong>Address</strong></td>
                    <td class="auto-style10">
                        <asp:TextBox ID="TextBoxaddress" runat="server" Height="51px" Width="383px"></asp:TextBox>
                    </td>
                    <td class="auto-style17">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxaddress" ErrorMessage="Address is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong>UserID</strong></td>
                    <td class="auto-style10">
                        <asp:TextBox ID="TextBoxuserid" runat="server" Height="30px" Width="350px"></asp:TextBox>
                    </td>
                    <td class="auto-style17">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxuserid" ErrorMessage="User id is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14"><strong>Password</strong></td>
                    <td class="auto-style15">
                        <asp:TextBox ID="TextBoxpass" runat="server" CssClass="auto-style13" Height="30px" Width="350px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style18">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBoxpass" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style28"><strong>Confirm Password</strong></td>
                    <td class="auto-style29">
                        <asp:TextBox ID="TextBoxcpass" runat="server" Height="30px" TextMode="Password" Width="350px"></asp:TextBox>
                    </td>
                    <td class="auto-style27">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBoxcpass" ErrorMessage="Confirm password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxpass" ControlToValidate="TextBoxcpass" ErrorMessage="Both password must be same" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style34"></td>
                    <td class="auto-style3">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Height="45px" OnClick="Button1_Click" Text="Submit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    <td class="auto-style36">
                        <input id="Reset1" class="auto-style1" type="reset" value="reset" /></td>
                </tr>
            </table>
        </div>
   </asp:Content> 
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <style type="text/css">
        .auto-style1 {
            width: 91px;
            height: 44px;
            margin-left: 0px;
        }
        .auto-style2 {
            width: 980px;
            height: 523px;
            margin-left: 0px;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</asp:Content>
 
