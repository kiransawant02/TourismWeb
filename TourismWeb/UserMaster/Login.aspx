<%@ Page Title="Login" Language="C#" MasterPageFile="~/USERMASTER/umaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TourismWeb.USERMASTER.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
     <center>
        <table style="width: 433px; height: 370px; background-color: #eef4ed; font-size: large; font-weight: bold;">
            <th colspan="2" align="center">
    <h1>Login Here</h1>
</th>
            <tr>
                <td colspan="2" align="center" style="height: 42px">Select&nbsp&nbsp
                    <asp:DropDownList ID="DropDownList_login" runat="server">
                        <asp:ListItem>User</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                    </asp:DropDownList></td>
           </tr>

            <tr>
                <td align="center">Username</td>
                <td align="center"><asp:TextBox ID="txt_username" runat="server" placeholder=" Enter Email ID"></asp:TextBox>
                    <%-- <asp:RequiredFieldValidator ID="validusername" runat="server" ControlToValidate="txt_username" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>

            <tr>
                <td style="height: 72px" align="center">Password</td>
                <td style="height: 72px" align="center"><asp:TextBox ID="txt_password" runat="server" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
                     <%--<asp:RequiredFieldValidator ID="validfname" runat="server" ControlToValidate="txt_password" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>

           

            <tr>
                <td colspan="2" align="center"><asp:Button ID="btn_login" runat="server" Text="Login" CssClass="btn btn-primary btn-sm" Font-Bold="True" Font-Size="Large" OnClick="btn_login_Click" ></asp:Button>
                    &nbsp&nbsp&nbsp<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Sign Up</asp:LinkButton>&nbsp&nbsp&nbsp
                    <asp:LinkButton style="color:red" ID="LinkButton_changepass" runat="server" Font-Color="Red" Font-Bold="True" OnClick="LinkButton_changepass_Click" >Change Password</asp:LinkButton>
                </td>
            </tr>
        </table>
    </center>


</asp:Content>
