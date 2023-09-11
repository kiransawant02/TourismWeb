<%@ Page Title="Change Password" Language="C#" MasterPageFile="~/USERMASTER/umaster.Master" AutoEventWireup="true" CodeBehind="Changepass.aspx.cs" Inherits="TourismWeb.USERMASTER.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />

    <center>

         <table style="width: 433px; height: 370px; background-color: #eef4ed; font-size: large; font-weight: bold;">
            <th colspan="2" align="center">
    <h1>Change Password</h1>
</th>
            

            <tr>
                <td align="center">Mobile</td>
                <td align="center"><asp:TextBox ID="txt_changepass_mobile" runat="server" placeholder=" Enter Mobile No"></asp:TextBox>
                    <%-- <asp:RequiredFieldValidator ID="validusername" runat="server" ControlToValidate="txt_username" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>

             <tr>
                <td align="center">Email</td>
                <td align="center"><asp:TextBox ID="txt_changepass_email" runat="server" placeholder=" Enter Email Id"></asp:TextBox>
                    <%-- <asp:RequiredFieldValidator ID="validusername" runat="server" ControlToValidate="txt_username" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>

            <tr>
                <td style="height: 72px" align="center"> Old Password</td>
                <td style="height: 72px" align="center"><asp:TextBox ID="txt_chnagepass_oldpass" runat="server" TextMode="Password" placeholder="Enter Old Password"></asp:TextBox>
                     <%--<asp:RequiredFieldValidator ID="validfname" runat="server" ControlToValidate="txt_password" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>

             <tr>
                <td style="height: 72px" align="center"> New Password</td>
                <td style="height: 72px" align="center"><asp:TextBox ID="txt_changepass_newpass" runat="server" TextMode="Password" placeholder="Enter Old Password"></asp:TextBox>
                     <%--<asp:RequiredFieldValidator ID="validfname" runat="server" ControlToValidate="txt_password" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>

            <tr>
                <td colspan="2" align="center"><asp:Button ID="btn_Change_pass1" CssClass="btn btn-primary btn-sm" runat="server" Text="Change Password"  Font-Bold="True" Font-Size="Large" OnClick="btn_Change_pass1_Click" ></asp:Button>
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    <asp:LinkButton style="text-decoration:none" ID="LinkButton_login_cpass" runat="server" Font-Bold="True" Font-Underline="True" OnClick="LinkButton_login_cpass_Click"  >Login</asp:LinkButton>
                </td>
            </tr>
        </table>

    </center>


</asp:Content>
