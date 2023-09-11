<%@ Page Language="C#" MasterPageFile="~/USERMASTER/umaster.Master" AutoEventWireup="true" CodeBehind="ContactPg.aspx.cs" Inherits="TourismWeb.USERMASTER.ContactPg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    
    <div class="container py-5">
        <div class="row justify-content-center"> 
            <div class="col-md-6"> 
        <div class="title-section pb-sm-5 pb-3">
               <h2 class="heading-agileinfo text-center pb-4">Contact <span> Us</span></h2>
          </div>
        <asp:Label ID="FullNameLabel" runat="server" Text="Full Name:" AssociatedControlID="FullNameTextBox"></asp:Label>
        <asp:TextBox ID="FullNameTextBox" runat="server" CssClass="form-control" required></asp:TextBox>
        <br />

        <asp:Label ID="EmailLabel" runat="server" Text="Email:" AssociatedControlID="EmailTextBox"></asp:Label>
        <asp:RegularExpressionValidator ID="EmailFormatValidator" runat="server" ControlToValidate="EmailTextBox"
            Display="Dynamic" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
            ErrorMessage="Invalid Email format." />
        <asp:TextBox ID="EmailTextBox" runat="server" CssClass="form-control" required></asp:TextBox>
        <br />

        <asp:Label ID="PhoneNumberLabel" runat="server" Text="Phone Number:" AssociatedControlID="PhoneNumberTextBox"></asp:Label>
        <asp:TextBox ID="PhoneNumberTextBox" runat="server" CssClass="form-control" required></asp:TextBox>
        <br />

        <asp:Label ID="MessageLabel" runat="server" Text="Message:" AssociatedControlID="MessageTextBox"></asp:Label>
        <asp:TextBox ID="MessageTextBox" runat="server" TextMode="MultiLine" CssClass="form-control" required></asp:TextBox>
        <br />


        <asp:Button ID="SubmitButton" runat="server" Text="Submit" CssClass="btn btn-primary mx-auto d-block" OnClick="SubmitButton_Click" />
    </div></div>
</asp:Content>
