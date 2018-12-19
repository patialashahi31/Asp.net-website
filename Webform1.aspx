﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Webform1.aspx.cs" Inherits="Webform1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Flipkart</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/StyleSheet.css" rel="stylesheet" type="text/css" />
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="navbar-default navbar-fixed-top" >
            <div class="container">
                <div class="navbar-header">
                <button type=button class=navbar-toggle data-toggle=collapse data-target=".navbar-collapse">
                    <span class=sr-only >Toggle Navigation
                    
                    </span>
                    <span class=icon-bar ></span>
                    <span class=icon-bar ></span>

                    <span class=icon-bar ></span>

                </button>
                <a class=navbar-brand href=Webform1.aspx><span><img alt="Logo" src="images/flipkart.jpg" height=50 />Flipkart</span></a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class=active><a href=Webform1.aspx>Home</a>
                        </li>
                        <li><a href="About.aspx">About</a>
                        </li>
                        <li><a href="Contact.aspx">Contact</a>
                        </li>
                        <li class=dropdown>
                            <a href="#" class=dropdown-toggle data-toggle=dropdown>Products<b class=caret></b></a>
                            <ul class=dropdown-menu>
                                <li class=dropdown-header>Electronics</li>
                                <li role=separator class=divider></li>
                                <li> <a href="#" >Memory cards</a></li>
                                <li> <a href="#" >Pendrives</a></li>
                                <li> <a href="#" >Speakers</a></li>
                                 <li role=separator class=divider></li>
                                <li class=dropdown-header>Clothes</li>
                                 <li role=separator class=divider></li>
                                <li> <a href="#" >Men</a></li>
                                <li> <a href="#" >Women</a></li>
                                <li> <a href="#" >Children</a></li>
                                 <li role=separator class=divider></li>
                                <li class=dropdown-header>Laptops</li>
                                 <li role=separator class=divider></li>
                                <li> <a href="#" >Dell</a></li>
                                <li> <a href="#" >HP</a></li>
                                <li> <a href="#" >Acer</a></li>

                            </ul>
                        </li>
                        <li> <a href="SignUp.aspx" >Sign Up</a></li>
                         <li> <a href="SignIn.aspx" >Sign In</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" >
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="images/lap.jpg" alt="Laptop" height=500 width=1000 />
      <div class="carousel-caption">
          <h3 >Laptops</h3>
      </div>
    </div>
    <div class="item">
      <img src="images/pendrive.jpg" alt="Pendrive" height=500 width=750 />
      <div class="carousel-caption">
          <h3>Pendrives</h3>
      </div>
    </div>
     <div class="item">
      <img src="images/shirt.jpg" alt="Shirt" height=500 width=750/>
      <div class="carousel-caption">
        <h3>Shirts</h3>
      </div>
    </div>
    ...
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
    </div>
    <br />
    <br />
    <div class=container class=center>
    <div class=row>
        <div class=col-lg-4>
         <img class=img-circle src="images/lap.jpg" width=150 height=150 />
           <h2>Best Laptops</h2>
           <p>Best laptops availabe here. Companies like Dell,Hp and Acer</p>
             <p><a class=btn-success href="#">View &raquo;</a></p>  
        </div>
        
    
    
    
        <div class=col-lg-4>
         <img class=img-circle src="images/pendrive.jpg" width=150 height=150 />
           <h2>Storage Devices</h2>
           <p>Memory cards , Pendrives are also available here in low price</p>
           <p><a class=btn-success href="#">View &raquo;</a></p> 
        </div>
       
   
    
        <div class=col-lg-4>
         <img class=img-circle src="images/shirt.jpg" width=150 height=150 />
           <h2>Clothing</h2>
           <p>Men and women clothing is available here</p> 
             <p><a class=btn-success href="#">View &raquo;</a></p> 
        
        </div>
    </div> 
    <hr />

    <footer>
        <div class=container>
        <p class=pull-right><a href=#> Back to top</a></p>
            <p>&copy; 2018 flipkart.com &middot; <a href=Webform1.aspx > Home &middot;</a> <a href="#" > About &middot;</a> <a href="#" > Contact &middot;</a></p>
        </div>
    </footer>
    </form>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>

</body>
</html>
