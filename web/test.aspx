<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project.WebForm1" %>

<!DOCTYPE html>
<%--  --%>
<html xmlns="http://www.w3.org/1999/xhtml" runat="server">
<head runat="server">
    <meta charset="utf-8" />
    <title></title>
    <style>
   .cube {
            position: absolute;
            top: 80vh;
            left: 45vw;
            width: 10px;
            height: 10px;
            border: solid 1px #6001D2;
            transform-origin: top left;
            transform: scale(0) rotate(0deg) translate(-50%, -50%);
            animation: cube 12s ease-in forwards infinite;
   }

            .cube:nth-child(2n) {
                border-color: #6001D2;
            }

            
/**/
            .cube:nth-child(2) {
                animation-delay: 0s;
                left: 90vw;
                top: 45vh;
            }

            .cube:nth-child(3) {
                animation-delay: 1.5s;
                left: 90vw;
                top: 10vh;
            }

            .cube:nth-child(4) {
                animation-delay: 3s;
                left: 10vw;
                top: 85vh;
            }

            .cube:nth-child(5) {
                animation-delay: 4.5s;
                left: 50vw;
                top: 10vh;
            }

            .cube:nth-child(6) {
                animation-delay: 6s;
                left: 10vw;
                top: 10vh;
            }

            .cube:nth-child(7) {
                animation-delay: 7.5s;
                left: 90vw;
                top: 79vh;
            }
        /* ================= Header ============ */
        header {
            position: relative;
            top: 0%;
            left: 0%;
            width: 100%;
            margin: 0;
            padding: 0;
        }
        /* navbar */
        nav {
            color: #b3b3ff;
            float: right;
            margin: 30px 90px;
        }

            nav ul {
                list-style: none;
            }

                nav ul li {
                    float: left;
                    transition: .3s;
                }

                    nav ul li a {
                        text-decoration: none;
                        color: #fff;
                        transition: .5s;
                        font-size: 15px;
                        margin-left: 16px;
                    }

                    nav ul li:hover a {
                        text-decoration: none;
                        color: #fff;
                    }

                    nav ul li:hover {
                        height: 45px;
                        padding-top: 30px;
                        margin-top: -30px;
                        background:  #fff;
                        text-decoration: none;
                        transform: skew(15deg);
                    }



        /* Animate Background*/
        @keyframes Gradient {
            0% {
                background-position: 0% 50%;
            }

            50% {
                background-position: 100% 50%;
            }

            100% {
                background-position: 0% 50%;
            }
        }

        @keyframes cube {
            from {
                transform: scale(0) rotate(0deg) translate(-50%, -50%);
                opacity: 1;
            }

            to {
                transform: scale(20) rotate(960deg) translate(-50%, -50%);
                opacity: 0;
            }
        }
        .body {
           transition: all .5s;
            padding: 1px;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .veen {
            width: 70%;
            margin: 100px auto;
            background: rgba(255,255,255,.5);
            min-height: 490px;
            display: table;
            position: relative;
            box-shadow: 0 0 4px rgba(0,0,0,.14), 0 4px 8px rgba(0,0,0,.28);
        }

            .veen > div {
                display: table-cell;
                vertical-align: middle;
                text-align: center;
                color: #fff;
            }

            .veen button {
                background: transparent;
                background-color:#6001D2;
                display: inline-block;
                padding: 10px 30px;
                border: 3px solid #fff;
                border-radius: 50px;
                background-clip: padding-box;
                position: relative;
                color: #FFF;
                box-shadow: 0 0 4px rgba(0,0,0,.14), 0 4px 8px rgba(0,0,0,.28);
                transition: all .35s;
            }

                .veen button.dark {
                    border-color: #fff;
/*                    background: linear-gradient(to bottom, #0f0c29, #302b63, #24243e);
*/                }

            .veen .move button.dark { 
                border-color: #fff;
                background: #e0b722;
            }

            .veen .splits p {
                font-size: 18px;
            }

            .veen button:active {
                box-shadow: none;
            }

            .veen button:focus {
                outline: none;
            }

            .veen > .wrapper {
                position: absolute;
                width: 40%;
                height: 125%;
                top: -11%;
                left: 5%;
                background: #fff;
                box-shadow: 0 0 4px rgba(0,0,0,.14), 0 4px 8px rgba(0,0,0,.28);
                transition: all .5s;
                color: #303030;
                overflow: hidden;
            }

            .veen .wrapper > form {
                padding: 15px 30px 30px;
                width: 100%;
                transition: all .5s;
                background: #fff;
                width: 100%;
            }

                .veen .wrapper > form:focus {
                    outline: none;
                }

            .veen .wrapper #login {
                padding-top: 20%;
                visibility: visible;
            }

            .veen .wrapper #register {
                transform: translateY(-80%) translateX(100%);
                visibility: hidden;
            }

            .veen .wrapper.move #register {
                transform: translateY(-83.5%) translateX(0%);
                visibility: visible;
            }

            .veen .wrapper.move #login {
                transform: translateX(-100%);
                visibility: hidden;
            }

            .veen .wrapper > form > div {
                position: relative;
                margin-bottom: 15px;
            }

            .veen .wrapper label {
                position: absolute;
                top: -7px;
                font-size: 12px;
                white-space: nowrap;
                background: #fff;
                text-align: left;
                left: 15px;
                padding: 0 5px;
                color: #999;
                pointer-events: none;
            }

            .veen .wrapper h3 {
                margin-bottom: 50px;
            }
            .veen.wrapper h4{
                margin-bottom:45%;
            }

            .veen .wrapper input {
                height: 40px;
                padding: 5px 15px;
                width: 100%;
                border: solid 1px #999;
            }

            .veen .wrapper input {
                height: 40px 5px 15px;
                width: 100%;
                border: solid 1px #999;
            }

                .veen .wrapper input:focus {
                    outline: none;
                    border-color: #ff4931;
                }

            .veen > .wrapper.move {
                left: 45%;
            }

                .veen > .wrapper.move input:focus {
                    border-color: #e0b722;
                }

        @media (max-width: 767px) {
            .veen {
                padding: 5px;
                margin: 0;
                width: 100%;
                display: block;
            }

                .veen > .wrapper {
                    position: relative;
                    height: auto;
                    top: 0;
                    left: 0;
                    width: 100%;
                }

                .veen > div {
                    display: inline-block;
                }

            .splits {
                width: 50%;
                background: #fff;
                float: left;
            }

                .splits button {
                    width: 100%;
                    border-radius: 0;
                    background: linear-gradient(to bottom, #0f0c29, #302b63, #24243e);
                    border: 0;
                    opacity: .7;
                }

                    .splits button.active {
                        opacity: 1;
                    }

                    .splits button.active {
                        opacity: 1;
                       background: linear-gradient(to bottom, #0f0c29, #302b63, #24243e);
                    }

                .splits.rgstr-btn button.active {
                   background: linear-gradient(to bottom, #0f0c29, #302b63, #24243e);
                }

                .splits p {
                    display: none;
                }

            .veen > .wrapper.move {
                left: 0%;
            }
        }
        input[type="number"] {
    -moz-appearance: textfield;
}
input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
    -webkit-appearance: none;
}
        
.Titel {
    position: relative;
    top: 7px;
    left: 18px;
    color: black;
    font-weight:900;
}

    </style>


</head>
<body runat="server">
      <div style="width:100%; z-index:2; background-color:#f9f9fa; height:10%; top:0;position:absolute;display:block">
            <div style="width:35%; background-color:#f9f9fa;height:10%; top:5px;position:absolute;display:block; left:2%">
                <asp:Label ID="Titel" CssClass="Titel" runat="server"  Font-Names="helvetica" Font-Size="50px" Text="Stock" ForeColor="#6001D2"></asp:Label>
                <asp:Label ID="Titel2" CssClass="Titel" runat="server" Font-Names="helvetica" Font-Size="50px" Text="Overflow" ForeColor="#6001D2"></asp:Label>
            </div>
        </div>
   <link href="https://fonts.googleapis.com/css?family=Josefin+Sans" rel="stylesheet"/>

    <!-- Background & animion & navbar & title -->
    <div class="container-fluid"></div>
    <!-- Background animtion-->
    <div class="background">
        <div class="cube"></div>
        <div class="cube"></div>
        <div class="cube"></div>
        <div class="cube"></div>
        <div class="cube"></div>
        <div class="cube"></div>
        <div class="cube"></div>
        <div class="cube"></div>
    </div>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js" ></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <div class="body">
        <div class="veen">
            <div class="login-btn splits">
                <p>Already an user?</p>
                <button class="active">Login</button>
            </div>
            <div class="rgstr-btn splits">
                <p>Don't have an account?</p>
                <button>Register</button>
            </div>
            <div class="wrapper">
                <form id="login" action="Login.aspx" tabindex="500" runat="server">
                    <h3>Login</h3>
                    <div class="username">
                        <input type="text" name="User Name" id="UserNameLogin" runat="server" required="required"/>
                        <label>Username</label>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator8" 
                         ControlToValidate="UserNameLogin" runat="server" 
                         ErrorMessage="You must enter a user name" EnableClientScript="False" 
                         ValidationGroup="LoginValidations" ></asp:RequiredFieldValidator>
                    </div>
                    <div class="passwd">
                        <input type="password" name="Password" id="PasswordLogin" runat="server" required="required"/>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                         ControlToValidate="PasswordLogin" runat="server" 
                         ErrorMessage="You must enter a user name" EnableClientScript="False" 
                         ValidationGroup="LoginValidations" ></asp:RequiredFieldValidator>
                        <label>Password</label>
                    </div>
                    <div class="submit">
                     <asp:Button ID="Button1" runat="server" Text="Login" CssClass="dark Button" OnClick="Login_Click"/>
                    </div>
                    <div>
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="ForgotPass" >Forgot Password?</asp:LinkButton>
                    </div>
                </form>
                <form id="register" tabindex="700" >
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <h4>Register</h4>
                    <br />
                    <br />
                    <div class="username">
                         <label>Username</label>
                        <input type="text" name="User Name" id="UserNameRegister" runat="server" required="required"/>
                        <label>Username</label>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" 
                         ControlToValidate="UserNameRegister" runat="server" 
                         ErrorMessage="You must enter a user name" EnableClientScript="False" 
                         ValidationGroup="RegisterValidations" ></asp:RequiredFieldValidator>
                    </div>
                    <div class="passwd">
                        <label>Password</label>
                        <input id="passwdRegister" type="password" name="Password" runat="server" required="required" minlength="8"/>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" 
                         ControlToValidate="passwdRegister" runat="server" 
                         ErrorMessage="You must enter a user name" EnableClientScript="False" 
                         ValidationGroup="RegisterValidations" ></asp:RequiredFieldValidator>
                        </div>
                     <div class="uid">
                         <label >User ID</label>
                        <input id="uidRegister" type="tel" name="User ID" runat="server"  required="required" maxlength="9" minlength="9"/>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" 
                         ControlToValidate="uidRegister" runat="server" 
                         ErrorMessage="You must enter a user name" EnableClientScript="False" 
                         ValidationGroup="RegisterValidations" ></asp:RequiredFieldValidator>       
                    </div>
                    <div class="name">
                        <label>First name</label>
                        <input id="FirstNameRegister" type="text" name="First Name" runat="server" required="required"/>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                         ControlToValidate="FirstNameRegister" runat="server" 
                         ErrorMessage="You must enter a user name" EnableClientScript="False" 
                         ValidationGroup="RegisterValidations" ></asp:RequiredFieldValidator>
                        </div>
                    <div class="name">
                        <label>Last Name</label>
                        <input id="LastNameRegister" type="text" name="Last Name" runat="server" required="required"/>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                         ControlToValidate="LastNameRegister" runat="server" 
                         ErrorMessage="You must enter a user name" EnableClientScript="False" 
                         ValidationGroup="RegisterValidations" ></asp:RequiredFieldValidator>
                    </div>
                    <div class="mail">
                        <label>Mail</label>
                        <input id="mailRegister" type="email" name="Mail" runat="server" required="required"  />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
                         ControlToValidate="mailRegister" runat="server" 
                         ErrorMessage="You must enter a user name" EnableClientScript="False" 
                         ValidationGroup="RegisterValidations" ></asp:RequiredFieldValidator>
                        <label>Mail</label>
                    </div>
                   <div class="submit">
                        <button id="Register" class=" Button" onclick="Register()">Register</button>
                    </div>
                    <div id="divResult">

                    </div>
                </form>
            </div>
        </div>

        </div>
    <style type="text/css">
        .site-link {
            padding: 5px 15px;
            position: fixed;
            z-index: 99999;
            background: #fff;
            box-shadow: 0 0 4px rgba(0,0,0,.14), 0 4px 8px rgba(0,0,0,.28);
            right: 30px;
            bottom: 30px;
            border-radius: 10px;
        }

            .site-link img {
                width: 30px;
                height: 30px;
            }
    </style>
    <script>
        $(document).ready(function () {
            $(".veen .rgstr-btn button").click(function () {

                $('.veen .wrapper').addClass('move');
                $('.body').css('background', '');
                $(".veen .login-btn button").removeClass('active');
                $(this).addClass('active');
            });
            $(".veen .login-btn button").click(function () {
                $('.veen .wrapper').removeClass('move');
                $('.body').css('background', '');
                $(".veen .rgstr-btn button").removeClass('active');
                $(this).addClass('active');
            });
        });
    </script>
    <script type="text/javascript">             //Default.aspx
        function Register() {
            $.ajax({
                type: "POST",
                url: 'Login.aspx/Register_Click',
                data: "",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    $("#divResult").html("success");
                },
                error: function (e) {
                    $("#divResult").html("Something Wrong.");
                }
            });    </script>

</body>
</html>

    
        
