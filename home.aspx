﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Ehsbha_SP.home" UnobtrusiveValidationMode="None" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="keywords" content="VAT,return,form,accounting,accountant">
    <meta name="author" content="Hanan Baotham, Nouf Alharbi, Reema Alshihri, Shahad Alghamdi">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="viewport" content="width=dev ice-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


    <title>Ehsebha home page</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            font-family: 'Times New Roman';
            font-size: 20px;
        }
        /* general ------------------------------------------- */

        .logo_hover:hover {
            transform: scale(1.2);
            transition: all 0.3s ease;
        }


        /* section ------------------------------------------- */


        .section_header {
            width: 100%;
            height: 280px;
            display: inline-block;
            background-color: #f5f5f5;
            align-items: flex-start;
        }


        .body_section {
            padding-bottom: 30px;
            width: 1000px;
            height: 330px;
            text-align: center;
            margin-left: auto;
            margin-right: auto;
            margin-top: -14px;
            background-color: whitesmoke;
            box-shadow: 0px 0px 20px 5px #bfbfbf;
            flex-grow: 0;
        }
        /*icon-bar-------------------------------------------*/


        .icon-bar {
            position: fixed;
            top: 80%;
            -webkit-transform: translateY(-50%);
            -ms-transform: translateY(-50%);
            transform: translateY(-50%);
            right: 10px;
        }

            .icon-bar a {
                display: block;
                text-align: center;
                padding: 5px 8px 5px 8px;
                transition: all 0.3s ease;
                color: white;
                font-family: 'Times New Roman';
                border-radius: 20px;
                color: #02614D;
                box-shadow: 3px 5px 15px grey;
                margin: 10px;
                font-size: 40px;
            }

                .icon-bar a:hover {
                    color: white;
                    background-color: #CE9C2B;
                    transition: all 0.3s ease;
                    transform: scale(1.2);
                }

        /* div ------------------------------------------- */


        .div_header_img {
            background-image: url('pic/header1_img.png');
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            width: 100%;
            height: 170px;
        }

        /* meneu ------------------------------------------- */

        .div_meneu {
            position: -webkit-sticky;
            position: sticky;
            background-color: rgba(2, 67, 53, 0.90);
            top: 3px;
            padding: 12px 20px;
            -webkit-box-pack: start;
            justify-content: flex-start;
            border-radius: 100px 100px 0 0;
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.82);
            text-align: center;
            margin: -65px auto 20px auto;
            width: 800px;
            height: 38px;
            display: flex;
            align-items: center;
            z-index: 1;
        }

        .menueButton {
            background-color: #CE9C2B;
            color: white;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 18px;
            transition-duration: 0.4s;
            cursor: pointer;
            line-height: 30px;
            font-family: 'Times New Roman';
            width: 33%;
            position: relative;
            margin-left: 4px;
            margin-right: 4px;
        }


            .menueButton:hover {
                background-color: rgba(2, 67, 53, 0.90);
                color: white;
                border: 3px solid #CE9C2B;
                transition: all 0.3s ease;
                transform: scale(1.2);
            }



        /* icon ------------------------------------------- */

        .container {
            position: center;
            width: 200px;
            max-width: 200px;
            display: inline-block;
            background-color: rgba(2, 67, 53, 0.90);
            margin-left: 10px;
            margin-right: 10px;
            margin-top: 50px;
            border-radius: 50px 50px 20px 20px;
        }

        .image {
            width: 200px;
            height: 220px;
        }

        .overlay {
            position: center;
            display: block;
            bottom: 0;
            background: rgba(206, 156, 43, 0.90);
            color: #f1f1f1;
            width: 100%;
            transition: .5s ease;
            opacity: 0;
            color: white;
            font-size: 15px;
            font-family: 'Times New Roman';
            padding: 10px;
            text-align: center;
            box-sizing: border-box;
            margin-top: -20px;
            border-radius: 0 0 20px 20px;
        }

        .container:hover .overlay {
            opacity: 1;
        }

        .div_about {
            text-align: center;
            height: auto;
            display: block;
            width: 90%;
            color: black;
            padding: 6px;
            border: double;
            margin-left: auto;
            margin-right: auto;
            top: 10%;
            position: relative;
        }

        .logout {
            background-color: #CE9C2B;
            color: white;
            font-family: 'Times New Roman';
            margin-bottom: 10px;
            position: absolute;
            display: inline-block;
        }


            .logout:hover {
                background-color: rgba(2, 67, 53, 0.90);
                color: white;
                border: 3px solid #CE9C2B;
                transition: all 0.3s ease;
                transform: scale(1.2);
            }
    </style>



</head>
<body style="background-color: rgba(215,233, 216,0.5); flex-grow: 0;">




    <div class="icon-bar">

        <a href="mailto: Ehsbha@gmail.com "><i class="fa fa-envelope" ></i></a>
        <a href="https://twitter.com #"><i class="fa fa-twitter"></i></a>
        <a href="https://instagram.com"><i class="fa fa-instagram"></i></a>
    </div>
    <form runat="server">
        <div style="background-color: rgba(2, 67, 53, 0.90); color: white; font-family: 'Times New Roman'; font-size: 15px; text-align: left; padding: 5px;">

            <asp:Label ID="fName" runat="server" Style="display: inline-block" Text=" "></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;
        


            <asp:Button ID="setting" class="logout" Style="right: 135px;" runat="server" Text="settings" OnClick="setting_Click" />
            <asp:Button ID="langueg" class="logout" Style="right: 80px;" runat="server" Text="عربي" OnClick="langueg_Click" />
            <asp:Button ID="logout" class="logout" Style="right: 10px;" runat="server" Text="log out" OnClick="logout_Click" />

        </div>
        <div class="div_header_img">

            <img src="pic/logo_back.png" alt="logo" style="width: 200px; height: 100px; display: block; position: absolute; margin-top: 25px; margin-left: 90px;" class="logo_hover" />
        </div>

        <div class="div_meneu" id="Header">

            <asp:Button ID="homePage" Class="menueButton" runat="server" Style="border-radius: 30px 0px 30px 0px;" Text="Home" OnClick="homePage_Click" />
            <asp:Button ID="addInvoicePage" Class="menueButton" runat="server" Style="border-radius: 30px 0px 30px 0px;" Text="Add invoice" OnClick="addInvoicePage_Click" />
            <asp:Button ID="formPage" class="menueButton" runat="server" Style="border-radius: 13px;" Text="VAT return form" OnClick="formPage_Click" />
            <asp:Button ID="summaryPage" class="menueButton" runat="server" Style="border-radius: 0px 30px 0px 30px;" Text="Summary" OnClick="summaryPage_Click" />
            <asp:Button ID="contactPage" Class="menueButton" runat="server" Style="border-radius: 0px 30px 0px 30px;" Text="Contact us" OnClick="contactPage_Click" />


        </div>
        <div class="body_section">

            <div class="container">
                <a href="addInvoice.aspx">
                    <img src="pic/invoic_icon.png" alt="Avatar" class="image">
                </a>
                <div class="overlay">Add incoices </div>
            </div>


            <div class="container">
                <a href="form.aspx">
                    <img src="pic/form1_icon.png" alt="Avatar" class="image">
                </a>
                <div class="overlay">Prepare VAT return form</div>
            </div>
            <div class="container">
                <a href="summary.aspx">
                    <img src="pic/summary_icon.png" alt="Avatar" class="image">
                </a>
                <div class="overlay">Review invoices</div>
            </div>
        </div>
    </form>



</body>
</html>
