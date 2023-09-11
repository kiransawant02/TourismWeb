<%@ Page Title="Tours Booking" Language="C#" MasterPageFile="~/USERMASTER/umaster.Master" AutoEventWireup="true" CodeBehind="ToursBooking.aspx.cs" Inherits="TourismWeb.USERMASTER.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- promotions -->
    <section class="wthree-row w3-about">
        <div class="container py-5">
            <div class="title-section pb-sm-5 pb-3">
                <h3 class="heading-agileinfo text-center pb-4">Booking <span>Slot</span></h3>
            </div>

            <div class="card-deck">
                <!-- Card 1 -->
                <div class="card">
                    <img height="130px" src="images/Queenstown.jpg" class="card-img-top" alt="Card image cap">
                    <div class="card-body w3ls-card">
                        <h5 class="card-title">Queenstown</h5>
                        <p class="card-text mb-3"><i class="far fa-clock pr-2"></i>South Island</p>
                        <p class="card-text mb-3"><i class="fas fa-map-marker pr-2"></i>New Zealand</p>
                        <asp:Button runat="server" CssClass="btn btn-danger" Text="₹9999"/>
                        <asp:Button ID="btn_book1" runat="server" CssClass="btn btn-primary" Text="Book" OnClick="Button1_Click" />
                    </div>
                </div>

                <!-- Card 2 -->
                <div class="card">
                    <img height="130px" src="images/Eiffel.jpg" class="card-img-top" alt="Card image cap">
                    <div class="card-body w3ls-card">
                        <h5 class="card-title">Eiffel Tower</h5>
                        <p class="card-text mb-3"><i class="far fa-clock pr-2"></i>Paris</p>
                        <p class="card-text mb-3"><i class="fas fa-map-marker pr-2"></i>France</p>
                        <asp:Button runat="server" CssClass="btn btn-danger" Text="₹9999"/>
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Book" OnClick="Button1_Click" />
                    </div>
                </div>

                <!-- Card 3 -->
               <div class="card">
                    <img height="130px" src="images/BurjKhalifa.jpg" class="card-img-top" alt="Card image cap">
                    <div class="card-body w3ls-card">
                        <h5 class="card-title">Burj Khalifa</h5>
                        <p class="card-text mb-3"><i class="far fa-clock pr-2"></i>Dubai</p>
                        <p class="card-text mb-3"><i class="fas fa-map-marker pr-2"></i>UAE</p>
                        <asp:Button runat="server" CssClass="btn btn-danger" Text="₹9999"/>
                        <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" Text="Book" OnClick="Button1_Click" />
                    </div>
                </div>

                <!-- Card 4 -->
               <div class="card">
                    <img height="130px" src="images/HongKong.jpg" class="card-img-top" alt="Card image cap">
                    <div class="card-body w3ls-card">
                        <h5 class="card-title">Disneyland</h5>
                        <p class="card-text mb-3"><i class="far fa-clock pr-2"></i>Lantau Island</p>
                        <p class="card-text mb-3"><i class="fas fa-map-marker pr-2"></i>Hong Kong</p>
                        <asp:Button runat="server" CssClass="btn btn-danger" Text="₹9999"/>
                        <asp:Button ID="Button3" runat="server" CssClass="btn btn-primary" Text="Book" OnClick="Button1_Click" />
                    </div>
                </div>

                <!-- Card 5 -->
                <div class="card">
                    <img height="130px" src="images/Maui.jpg" class="card-img-top" alt="Card image cap">
                    <div class="card-body w3ls-card">
                        <h5 class="card-title">Maui</h5>
                        <p class="card-text mb-3"><i class="far fa-clock pr-2"></i>Hawaii</p>
                        <p class="card-text mb-3"><i class="fas fa-map-marker pr-2"></i>United States</p>
                        <asp:Button runat="server" CssClass="btn btn-danger" Text="₹9999"/>
                        <asp:Button ID="Button4" runat="server" CssClass="btn btn-primary" Text="Book" OnClick="Button4_Click" />
                    </div>
                </div>

                <!-- ... (other card elements) -->

            </div>
        </div>
    </section>
    <!-- //promotions -->
</asp:Content>
