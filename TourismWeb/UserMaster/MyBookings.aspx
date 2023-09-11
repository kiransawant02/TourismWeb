<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster/umaster.Master" AutoEventWireup="true" CodeBehind="MyBookings.aspx.cs" Inherits="TourismWeb.UserMaster.MyBookings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container container-fluid">
        <br />
        <div class="title-section pb-sm-5 pb-3">
            <h2 class="heading-agileinfo text-center pb-4">Booking<span> Data</span></h2>
        </div>
        <div class="table-responsive">


            <asp:GridView ID="BookingGv" runat="server" AutoGenerateColumns="true" CssClass="table table-striped table-bordered table-hover" PageSize="10">
                <PagerSettings Position="TopAndBottom" />
                <PagerStyle CssClass="pagination" />

                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle CssClass="thead-dark" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333" CssClass="table-row" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>

        </div>
    </div>
</asp:Content>
