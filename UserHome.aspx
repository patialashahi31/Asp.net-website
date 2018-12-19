<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="UserHome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Welcome</title>

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
                        <li ><a href=Webform1.aspx>Home</a>
                        </li>
                        <li><a href="#">About</a>
                        </li>
                        <li><a href="#">Contact</a>
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
                        <li > <a href="SignUp.aspx" >Sign Up</a></li>
                       <li>
                        <asp:Button ID="btnSignOut" runat="server" Text="Sign Out" align=right OnClick="btnClick1" class="btn btn-default navbar-btn"/>
                        </li>
                       
                    </ul>
                    
                </div>
            </div>
        </div>
     

    </div>
    
          <asp:Label ID="lblSuccess" CssClass=text-success runat="server" Text="Label"></asp:Label>
    </form>
    <hr />

    <footer class=footer-pos>
        <div class=container>
        <p class=pull-right><a href=#> Back to top</a></p>
            <p>&copy; 2018 flipkart.com &middot; <a href=Webform1.aspx > Home &middot;</a> <a href="#" > About &middot;</a> <a href="#" > Contact &middot;</a></p>
        </div>
    </footer>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
