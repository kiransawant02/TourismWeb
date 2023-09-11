<%@ Page Title="Booking" Language="C#" MasterPageFile="~/USERMASTER/umaster.Master" AutoEventWireup="true" CodeBehind="MainBooking.aspx.cs" Inherits="TourismWeb.USERMASTER.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <br />
    <!--Booking-->
    <center>
        <table style="width: 448px; height: 440px; background-color: #eef4ed; font-size: large; font-weight: bold;">
            <th colspan="2" align="center">
                <h1>Booking Now</h1><asp:LinkButton runat="server" href="MyBookings.aspx" Font-Size="Small" >MyBookings</asp:LinkButton>
            </th>

            <tr>
                <td align="center">Select Place</td>
                <td align="center">
                    <asp:DropDownList ID="DropDownList_select_space" runat="server">
                        <asp:ListItem>Dubai : UAE</asp:ListItem>
                        <asp:ListItem>Hawaii : Untied States</asp:ListItem>
                        <asp:ListItem>Paris : France</asp:ListItem>
                        <asp:ListItem>Disneyland: Hong Kong</asp:ListItem>
                        <asp:ListItem>South Island : New Zealand</asp:ListItem>
                    </asp:DropDownList>

                </td>
            </tr>

            <tr>
                <td align="center">Duration</td>
                <td align="center">
                    <asp:DropDownList ID="DropDownList_Duration" runat="server">
                        <asp:ListItem>3 Day 2 Nights</asp:ListItem>
                        <asp:ListItem>5 Day 4 Nights</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>

            <tr>
                <td align="center">Member</td>
                <td align="center">
                    <asp:RadioButtonList ID="RadioButtonList_member" runat="server">
                        <asp:ListItem>Slot 1: 1 to 05 Member </asp:ListItem>
                        <asp:ListItem>Slot 2: 1 to 10 Member</asp:ListItem>
                    </asp:RadioButtonList>

                </td>
            </tr>

            <tr>
                <td align="center">Full Name</td>
                <td align="center">
                    <asp:TextBox ID="txt_Fullname" runat="server" required placeholder="Your Full Name"></asp:TextBox>


                </td>
            </tr>

            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="btn_Booking_submit" runat="server" Text="Submit" Font-Bold="True" Font-Size="Large" Class="btn mr-3 btn-sm btn-primary" OnClick="btn_Booking_submit_Click"></asp:Button>
                    <asp:LinkButton style="color:red" ID="LinkButton_signout" runat="server" Font-Size="Small"  OnClick="LinkButton_signout_Click">Logout</asp:LinkButton>
                    

                </td>
            </tr>
        </table>
    </center>
    <!--End booking-->



    <!-- promotions -->
    <section>
        <div class="container py-5">
            <div class="title-section pb-sm-5 pb-3">
                <h3 class="heading-agileinfo text-center pb-4">Booking <span>Slot</span></h3>
            </div>

            <div class="row">
                <div class="col-md-4 mb-4">
                    <div class="card">
                        <img src="images/queenstown.jpg" height="200px" class="card-img-top" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Queenstown</h5>
                            <p class="card-text"><i class="fas fa-map-marker pr-2"></i>New Zealand</p>
                            <a href="#" class="btn btn-primary">₹9999</a>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 mb-4">
                    <div class="card">
                        <img src="images/Eiffel.jpg" height="200px" class="card-img-top" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Eiffel Tower</h5>
                            <p class="card-text"><i class="fas fa-map-marker pr-2">France</i></p>
                            <a href="#" class="btn btn-primary">₹9999</a>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 mb-4">
                    <div class="card">
                        <img src="images/maui.jpg" height="200px" class="card-img-top" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Maui</h5>
                            <p class="card-text"><i class="fas fa-map-marker pr-2"></i>United States</p>
                            <a href="#" class="btn btn-primary">₹9999</a>
                        </div>
                    </div>
                </div>

                <!-- Add more cards as needed -->

            </div>
        </div>
    </section>
    <!-- //promotions -->


</asp:Content>
