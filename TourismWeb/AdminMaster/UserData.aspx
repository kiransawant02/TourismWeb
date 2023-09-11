<%@ Page Title="UserData" Language="C#" MasterPageFile="~/ADMINMASTER/Amaster.Master" AutoEventWireup="true" CodeBehind="UserData.aspx.cs" Inherits="TourismWeb.ADMINMASTER.UserData" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container container-fluid">
        <br />
        <div class="title-section pb-sm-5 pb-3">
            <h2 class="heading-agileinfo text-center pb-4">User<span> Data</span></h2>
        </div>
        <div class="table-responsive">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true" CssClass="table table-bordered" OnPageIndexChanging="GridView1_PageIndexChanging" AllowPaging="True" PageSize="10">
                <PagerSettings Position="TopAndBottom" />
                <PagerStyle CssClass="pagination" />


                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
        </div>
    </div>
</asp:Content>
