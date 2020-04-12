<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateSetting.aspx.cs" Inherits="Ehsbha_SP.updateSetting" UnobtrusiveValidationMode="None"%>

<!DOCTYPE html>

<html>

<head>
    <meta charset="utf-8">
    <title>Setting</title>


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
            /*the white box */
        .form-box_start {
            width: 700px;
            height:880px;
            margin: 10% auto;
            background:#fff;
            padding: 5px;
            box-shadow: 0 0 15px 5px #273746;
            border-radius: 18px;
            overflow: hidden;

        }

        .input-user{
            top: 187px;
            position: absolute;
            width: 280px;
            transition: .5s;
            margin-left: 190px;
        }


        .input-field{
          margin-top: 18px;
          margin-bottom: 10px;
          width: 300px;
          resize: vertical;
         


        }

        .submit-btn{
          
            padding: 10px 30px;
            cursor: pointer;
            background: linear-gradient(to right, #CE9C2B, #F4D03F);
            border: 0;
            border-radius: 30px;
            float:none;
           
        }

            .edit {
            background-color: #02614D;
            border-color: #CE9C2B;
            color: white;
            border-radius: 40px;
            padding: 2px;
            float:unset;
            display:inline;
       
        }
        .auto-style9 {
            text-align: left;
        }
        .auto-style10 {
            width: 700px;
            height: 981px;
            background: #fff;
            padding: 5px;
            box-shadow: 0 0 15px 5px #273746;
            border-radius: 18px;
            overflow: hidden;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: 10%;
        }
        </style>
</head>
<body style="background-color: rgba(215,233, 216,0.5); flex-grow: 0;">

    <form runat="server">

        <div class="icon-bar">

        <a href="mailto: Ehsbha@gmail.com "><i class="fa fa-envelope" ></i></a>
        <a href="https://twitter.com #"><i class="fa fa-twitter"></i></a>
        <a href="https://instagram.com"><i class="fa fa-instagram"></i></a>
    </div>
        <div style="background-color: rgba(2, 67, 53, 0.90); color: white; font-family: 'Times New Roman'; font-size: 15px; text-align: left; padding: 5px;">

            <asp:Label ID="fName" runat="server" Style="display: inline-block">Hanan emad baothman</asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<p style="display: inline-block">Time remaining to deliver VAT form</p>
            :&nbsp;
        <p id="timer" style="display: inline-block; color: #e1c37f"></p>


            <asp:Button ID="settings" class="logout" Style="right: 135px;" runat="server" Text="settings" OnClick="setting_Click" />
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

        <div class="auto-style10">
            <div class="auto-style9">
                <br />

                    
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    
                <asp:Label runat="server" Style="text-align: center; " Text="Information" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                            <br />
                            <br />
                            <br />
                           
                       
                <asp:Label runat="server" Text="Facility Name : " />
                        
                <br />
                        
                <asp:TextBox ID="facilityName" class="input-field" runat="server" Width="235px" CssClass="input-field" />
                        
                <br />
                        
                &nbsp;
                        
                                        
                <br />
                      
                        
                <br />
                      
                        
                <asp:Label runat="server" Text="Tax Number : " />
                       
                <br />
                <br />
                       
                <asp:TextBox ID="taxNum" class="input-field" runat="server" Width="233px" Enabled="False" />
                       
                <br />
                       
                &nbsp;<br />
                       
                <br />
                       
                <asp:Label runat="server" Text="Phone Number: " />
                        

                <br />
                        

                <asp:TextBox ID="phone" class="input-field" runat="server" Width="230px" />
                      
                &nbsp;<br />
                   
                        
                <br />
                   
                        
                <asp:Label runat="server" Text="Email: " />
                        
                <br />
                        
                <asp:TextBox ID="email" class="input-field" runat="server" Width="230px"  />
                       
                &nbsp;<br />
                      
                <br />
                      
                <asp:Label runat="server" Text="Preparing the VAT return form : " />
                       
                <br />
                       
                <asp:TextBox ID="period" class="input-field" runat="server" Width="225px" />
                       
                <br />
                       
                &nbsp;<br />
                <br />
                <br />
                &nbsp;<br />

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:Button ID="update" calss="edit" runat="server" Text="Update Information" CssClass="edit" OnClick="update_Click" />

                &nbsp;

                <asp:Button ID="password" calss="edit" runat="server" Text="Change Password" CssClass="edit" />
                        
                &nbsp;<br />
                        
                <br />

                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button runat="server" class="submit-btn" Text="Ok"  Width="229px" CssClass="submit-btn" onclick="ok_Click" ID="Button2"/>
                       
                <br />
                <br />
                       
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       
                <asp:Button runat="server" class="submit-btn" Text="Delete Account" align="center" Width="230px" CssClass="submit-btn" onclick="deleteAccount_Click" ID="Button1"/>

                       
            </div>
        </div>
    </form>

</body>
</html>

