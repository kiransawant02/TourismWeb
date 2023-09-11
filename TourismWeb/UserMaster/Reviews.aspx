<%@ Page Title="Customer Reviews" Language="C#" MasterPageFile="~/UserMaster/umaster.Master" AutoEventWireup="true" CodeBehind="Reviews.aspx.cs" Inherits="TourismWeb.UserMaster.Reviews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container py-5">
        <div class="title-section pb-sm-5 pb-3">
            <h2 class="heading-agileinfo text-center pb-4">Customer<span> Reviews</span></h2>
        </div>
        <div id="reviewCarousel" class="carousel slide" data-ride="carousel" data-interval="3000">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#reviewCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#reviewCarousel" data-slide-to="1"></li>
                <li data-target="#reviewCarousel" data-slide-to="2"></li>
                <!-- Add more indicators for additional reviews -->
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <!-- Review 1 -->
                <div class="carousel-item active">
                    <div class="row">


                        <div class="col-md-4">
                            <div class="card mb-4">
                                <!-- Review 1 content here -->
                                <img src="images/r1.jpg" width="auto" height="auto" alt="User2" class="card-img-top">
                                <div class="card-body">
                                    <h5 class="card-title">Alice Smith</h5>
                                    <p class="card-text">London, UK</p>
                                    <p class="card-text">"Wonderful Trip. Phasellus dapibus felis a erat tristique, quis congue augue blandit."</p>
                                </div>
                            </div>
                        </div>

                        <!-- Review 2 -->
                        <div class="col-md-4">
                            <div class="card mb-4">
                                <!-- Review 2 content here -->
                                <img src="images/r2.jpg" width="auto" height="auto" alt="User2" class="card-img-top">
                                <div class="card-body">
                                    <h5 class="card-title">Rishi Raj</h5>
                                    <p class="card-text">Mumbai, India</p>
                                    <p class="card-text">"Wonderful Trip. Phasellus dapibus felis a erat tristique, quis congue augue blandit."</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card mb-4">
                                <!-- Review 3 content here -->
                                <img src="images/r6.jpg" width="auto" height="auto" alt="User2" class="card-img-top">
                                <div class="card-body">
                                    <h5 class="card-title">Alex Walsh</h5>
                                    <p class="card-text">Sydney, Australia</p>
                                    <p class="card-text">"Wonderful Trip. Phasellus dapibus felis a erat tristique, quis congue augue blandit."</p>
                                </div>
                            </div>
                        </div>



                        <!-- Add more col-md-4 for additional reviews -->
                    </div>
                </div>

                <!-- Review 3 -->
                <div class="carousel-item">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="card mb-4">
                                <!-- Review 3 content here -->
                                <img src="images/r3.jpg" width="auto" height="auto" alt="User2" class="card-img-top">
                                <div class="card-body">
                                    <h5 class="card-title">Charlotte S</h5>
                                    <p class="card-text">Texas, US</p>
                                    <p class="card-text">"Wonderful Trip. Phasellus dapibus felis a erat tristique, quis congue augue blandit."</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Add more col-md-4 for additional reviews -->
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="carousel-control-prev" href="#reviewCarousel" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#reviewCarousel" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

</asp:Content>
