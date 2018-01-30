﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="JQueryProject.Login" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <title>Diler Demir Çelik Web Uygulama Sistemi</title>
    <style>
        @import url(https://fonts.googleapis.com/css?family=Dosis:300|Lato:300,400,600,700|Roboto+Condensed:300,700|Open+Sans+Condensed:300,600|Open+Sans:400,300,600,700|Maven+Pro:400,700);
        @import url("https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css");

        * {
            -moz-box-sizing: border-box;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
        }

        html {
            background: black;
        }

        body {
            font-family: "Open Sans";
            font-size: 16px;
            color: White;
            font-smoothing: antialiased;
            font-weight: 600;
        }

        a {
            color: #BBB;
        }

        .content:before {
            content: "";
            position: fixed;
            left: 0;
            right: 0;
            top: 0;
            bottom: 0;
            z-index: -1;
            display: block;
            background-color: black;
            background-image: url("http://i.internethaber.com/application/static/data/611x395_sanayi_4f3231bce2ea5.jpg?v=99999");
            width: 100%;
            height: 100%;
            background-size: cover;
            -webkit-filter: blur(6px);
            -moz-filter: blur(6px);
            -o-filter: blur(6px);
            -ms-filter: blur(6px);
            filter: blur(6px);
        }

        .content {
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            width: 540px;
            height: 540px;
            background-color: rgba(10, 10, 10, 0.5);
            margin: auto auto;
            padding: 40px;
            -moz-border-radius: 4px;
            -webkit-border-radius: 4px;
            border-radius: 4px;
            -moz-box-shadow: 0 0 10px black;
            -webkit-box-shadow: 0 0 10px black;
            box-shadow: 0 0 10px black;
        }


        {
            text-align: center;
            /*font-size:13px;*/
            font-size: 2.0rem;
            font-weight: 600;
            padding-bottom: 30px;
            color: #66A756;
        }

        .content #txtKullanici {
            width: 100%;
            font-size: 1.2rem;
            font-family: "Open Sans";
            margin: 10px 0px;
            border: none;
            padding: 10px;
            -moz-border-radius: 4px;
            -webkit-border-radius: 4px;
            border-radius: 4px;
        }

        .content #txtSifre {
            width: 100%;
            font-size: 1.2rem;
            font-family: "Open Sans";
            margin: 10px 0px;
            border: none;
            padding: 10px;
            -moz-border-radius: 4px;
            -webkit-border-radius: 4px;
            border-radius: 4px;
        }

        .content label {
            display: inline-block;
            width: 20px;
            height: 20px;
            cursor: pointer;
            position: relative;
            margin-left: 5px;
            margin-right: 10px;
            top: 5px;
        }

            .content label:before {
                content: "";
                display: inline-block;
                width: 20px;
                height: 20px;
                -moz-border-radius: 3px;
                -webkit-border-radius: 3px;
                border-radius: 3px;
                position: absolute;
                left: 0;
                bottom: 1px;
                background-color: #aaa;
                -moz-box-shadow: inset 0px 2px 3px 0px rgba(0, 0, 0, 0.3), 0px 1px 0px 0px rgba(255, 255, 255, 0.8);
                -webkit-box-shadow: inset 0px 2px 3px 0px rgba(0, 0, 0, 0.3), 0px 1px 0px 0px rgba(255, 255, 255, 0.8);
                box-shadow: inset 0px 2px 3px 0px rgba(0, 0, 0, 0.3), 0px 1px 0px 0px rgba(255, 255, 255, 0.8);
            }

        .content .btnGiris {
            width: 50%;
            font-size: 1.1rem;
            padding: 10px;
            margin: 20px 0px;
            margin-left: 110px;
            background-color: #66A756;
            color: White;
            border: none;
            -moz-border-radius: 4px;
            -webkit-border-radius: 4px;
            border-radius: 4px;
        }

        .content .already {
            text-align: center;
            font-size: 0.9rem;
      
        }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="js/jquery.jcarousel.js"></script>
    <script type="text/javascript" src="js/cufon-yui.js"></script>
    <script type="text/javascript" src="js/MyriadPro.font.js"></script>
    <script type="text/javascript" src="js/jquery-func.js"></script>
    <script>
        //$(function () {
        //    $(document).ready(function () {
        //        $('#btnGiris').click(function () {
        //            var user = $('#txtKullanici.Text').val();
        //            var password = $('#txtSifre.Text').val();
        //            if (user == '' && password == '') {
        //                alert("Lütfen Tüm Alanları Doldurunuz !!")
        //            }
        //            else {
        //                $.ajax()({
        //                    type: 'POST',
        //                    url: 'Login.aspx//jQueryPageMethod',
        //                    data: '{"user: "' + user + '", "password:" "' + password + '"}',
        //                    contentType: 'application/json; charset=utf-8',
        //                    dataType: 'Json',
        //                    success: function (result) {
        //                        if (result.d == 1) {
        //                            window.location.href = "Anasayfa.aspx";
        //                        }
        //                        else {
        //                            alert("Kullanıcı adınız veya Şifreniz Hatalı !! ");
        //                        }
        //                    },
        //                    error: function () {
        //                        alert('Talep esnasında sorun oluştu. Yeniden deneyin');
        //                    }
        //                });
        //            }
        //        });
        //    });
        //});
        function denem(girilendeger) { //Girilen Değere Göre Getirir(parametre olarak alır)
            //var user = $('#txtKullanici.Text').val();
            if (girilendeger != '') {
                alert("Hello " + girilendeger + "");
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="content">
            <div class="title">JQuery Example </div>
            <input id="txtKullanici" type="text" placeholder="Kullanıcı Adı" />
            <input id="txtSifre" type="password" placeholder="Şifre" />
            &nbsp;
              <input onclick="denem($('#txtKullanici').val())" type="button" class="btnGiris" value="Giriş" />
            <div class="already">
                <a href="#">Şifremi Unuttum</a>
            </div>

        </div>
    </form>
</body>
</html>



