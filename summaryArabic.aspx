<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="summaryArabic.aspx.cs" Inherits="Ehsbha_SP.summaryArabic" %>

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
        }
        /*icon-bar-------------------------------------------*/


        .icon-bar {
            position: fixed;
            top: 80%;
            -webkit-transform: translateY(-50%);
            -ms-transform: translateY(-50%);
            transform: translateY(-50%);
            left: 10px;
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
        }

            .div_meneu button {
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


                .div_meneu button:hover {
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

        /*form ==================================================*/

        .invoic-box {
            width: 1200px;
            height: auto;
            position: center;
            margin: 10px auto;
            background: #fff;
            padding: 10px 0 30px 0;
            box-shadow: 0 0 15px 5px gray;
            border-radius: 18px;
            overflow: hidden;
        }

        .input-group {
            position: center;
            overflow: hidden;
            width: 900px;
            transition: .5s;
            margin-top: 40px;
            text-align: center;
            margin-bottom: 20px;
            height: auto;
            width: 49%;
        }

        #forms {
            margin-left: auto;
            margin-right: auto;
            display: block;
        }



        #sale {
            display: inline-block;
            float: left;
        }

        #purchase {
            display: inline-block;
            float: right;
        }

        #div1 {
            height: 30px;
            width: 87%;
            padding: 0;
            margin-left: 47px;
            margin-right: auto;
            background-color: #02614D;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

            #div1 th {
                border: 1px solid #CE9C2B;
                table-layout: fixed;
            }

        #table1 {
            font-size: 10px;
            width: 100%;
            height: 100%;
            color: white;
            border-spacing: 0px;
            border: 1px solid #ddd;
            border-radius: 5px;
            table-layout: fixed;
        }



        #div2 {
            height: 200px;
            width: 90%;
            overflow: auto;
            border: 1px solid #02614D;
            border-radius: 5px;
            margin-left: auto;
            margin-right: auto;
            overflow: scroll;
            height: auto;
            max-height: 400px;
        }

            #div2 td {
                border: 1px solid #CE9C2B;
                table-layout: fixed;
            }

        #table2 {
            text-align: center;
            height: inherit;
            font-size: 4px;
            width: 100%;
            color: black;
            border-spacing: 0px;
            height: 100%;
            border: 1px solid #CE9C2B;
            border-radius: 5px;
            table-layout: fixed;
            height: auto;
        }

        td {
            padding: 10px;
            white-space: nowrap;
        }

        tr {
            white-space: nowrap;
        }

        td button {
            background-color: #02614D;
            border-color: #CE9C2B;
            color: white;
            border-radius: 5px;
            padding: 3px;
        }
    </style>



</head>
<body style="background-color: rgba(215,233, 216,0.5);flex-grow : 0;">




    <div class="icon-bar">

        <a href="mailto: Ehsbha@gmail.com "><i class="fa fa-envelope" hspace="20"></i></a>
        <a href="https://twitter.com #"><i class="fa fa-twitter"></i></a>
        <a href="https://instagram.com"><i class="fa fa-instagram"></i></a>
    </div>
    <div style="background-color: rgba(2, 67, 53, 0.90);color:white;font-family:'Times New Roman';font-size:15px;padding:5px;direction:rtl">

        <p style="display:inline-block;">حنان عماد باعثمان</p>
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<p style="display:inline-block">الوقت المتبقي لتسليم نموذج الإقرار الضريبي :</p>:&nbsp;
        <p id="timer" style="display:inline-block;color:#e1c37f"></p>
        <button type="button" class="logout" style=" left: 155px;">إعدادات</button>
        <button type="button" class="logout" style=" left: 70px;">English</button>
        <button type="button" class="logout" style=" left: 10px;">خروج</button>

    </div>
    <div class="div_header_img">

        <img src="pic/logo_back.png" alt="logo" style="width: 200px;height:100px; display:block;position:absolute;margin-top:25px;right:20px;" class="logo_hover" />
    </div>

    <div class="div_meneu" id="Header">

        <button class="button" style="border-radius: 30px 0px 30px 0px;">الرئيسية</button>
        <button class="button " style="border-radius: 30px 0px 30px 0px;">إضافة فواتير</button>
        <button class="button " style="border-radius: 13px;">نموذج الإقرار الضريبي </button>
        <button class="button " style="border-radius: 0px 30px 0px 30px;">بيانات</button>
        <button class="button " style="border-radius: 0px 30px 0px 30px;">تواصل معنا</button>
    </div>


    <div class="invoic-box" dir="rtl" lang="ar">
        <div id="sale" class="input-group">
            <p style="font-family:'Times New Roman';font-size:30px; color:#02614D">فواتير المبيعات</p>
            &nbsp;
            <div id="div1">
                <table id="table1">

                    <tr>
                        <th>#</th>
                        <th>القيمة</th>
                        <th>التاريخ </th>
                        <th>تعديل</th>
                    </tr>

                </table>
            </div>

            <div id="div2">
                <table id="table2">
                    <tr>
                        <td>1</td>
                        <td>200</td>
                        <td>19/3/2020</td>
                        <td><button>حذف</button></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>200</td>
                        <td>19/3/2020</td>
                        <td><button>حذف</button></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>200</td>
                        <td>19/3/2020</td>
                        <td><button>حذف</button></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>200</td>
                        <td>19/3/2020</td>
                        <td><button>حذف</button></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>200</td>
                        <td>19/3/2020</td>
                        <td><button>حذف</button></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>200</td>
                        <td>19/3/2020</td>
                        <td><button>حذف</button></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>200</td>
                        <td>19/3/2020</td>
                        <td><button>حذف</button></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>200</td>
                        <td>19/3/2020</td>
                        <td><button>حذف</button></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>200</td>
                        <td>19/3/2020</td>
                        <td><button>حذف</button></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>200</td>
                        <td>19/3/2020</td>
                        <td><button>حذف</button></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>2000</td>
                        <td>19/3/2020</td>
                        <td><button>حذف</button></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>200</td>
                        <td>19/3/2020</td>
                        <td><button>حذف</button></td>
                    </tr>
                </table>
            </div>
        </div>


        <div id="purchase" class="input-group">
            <p style="font-family:'Times New Roman';font-size:30px; color:#02614D">فواتير المشتريات</p>
            &nbsp;
            <div id="div1">
                <table id="table1">

                    <tr>
                        <th>#</th>
                        <th>القيمة </th>
                        <th>التاريخ </th>
                        <th>تعديل </th>
                    </tr>

                </table>
            </div>

            <div id="div2">
                <table id="table2">
                    <tr>
                        <td>1</td>
                        <td>200</td>
                        <td>19/3/2020</td>
                        <td><button>حذف</button></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>200</td>
                        <td>19/3/2020</td>
                        <td><button>حذف</button></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>200</td>
                        <td>19/3/2020</td>
                        <td><button>حذف</button></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>200</td>
                        <td>19/3/2020</td>
                        <td><button>حذف</button></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>200</td>
                        <td>19/3/2020</td>
                        <td><button>حذف</button></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>200</td>
                        <td>19/3/2020</td>
                        <td><button>حذف</button></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>2000</td>
                        <td>19/3/2020</td>
                        <td><button>حذف</button></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>200</td>
                        <td>19/3/2020</td>
                        <td><button>حذف</button></td>
                    </tr>
                </table>
            </div>
        </div>

        <div id="forms" class="input-group">
            &nbsp;
            <p style="font-family:'Times New Roman';font-size:30px; color:#02614D">نماذج إرجاع ضريبة القيمة المضافة</p>
            &nbsp;
            <div id="div1">
                <table id="table1">

                    <tr>
                        <th>#</th>
                        <th>التاريخ </th>
                        <th>ملف PDF</th>
                        <th>تعديل </th>
                    </tr>

                </table>
            </div>

            <div id="div2">
                <table id="table2">
                    <tr>
                        <td>1</td>
                        <td>19/3/2020</td>
                        <td>pdf</td>
                        <td><button>حذف</button></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>19/3/2020</td>
                        <td>pdf</td>
                        <td><button>حذف</button></td>
                    </tr>

                </table>
            </div>



        </div>
    </div>



    <script>/*================================================================================*/


        // Set the date we're counting down to
        var countDownDate = new Date("Jan 5, 2021 15:37:25").getTime();

        // Update the count down every 1 second
        var x = setInterval(function () {

            // Get today's date and time
            var now = new Date().getTime();

            // Find the distance between now and the count down date
            var distance = countDownDate - now;

            // Time calculations for days, hours, minutes and seconds
            var days = Math.floor(distance / (1000 * 60 * 60 * 24));
            var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
            var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));


            // Output the result in an element with id="demo"
            document.getElementById("timer").innerHTML = days + "d " + hours + "h "
                + minutes + "m ";

            // If the count down is over, write some text
            if (distance < 0) {
                clearInterval(x);
                document.getElementById("timer").innerHTML = "EXPIRED";
            }
        }, 1000);</script>



</body>
</html>

