<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="setting.aspx.cs" Inherits="Ehsbha_SP.setting" UnobtrusiveValidationMode="None"%>


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
            width: 35%;
            transition: .5s;
            margin-left: 190px;
        }


        .input-field{
          margin-top: 18px;
          margin-bottom: 10px;
          width: 300px;
          resize: vertical;
          border:none;


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
        .auto-style10 {
            width: 700px;
            height: 452px;
            background: #fff;
            padding: 5px;
            box-shadow: 0 0 15px 5px #273746;
            border-radius: 18px;
            overflow: hidden;
            margin:auto;
           
            margin-bottom: 10%;
            align-items:center;
            align-self:center;
        }
        table.style2, table.style2 tr, table.style2 td{
  display:block;
  margin: 1em;
}
        .GridView1{
            align-content:center;
            align-items:center;
            align-self:center;
         
        }
        .GridView1 caption{
            font-size:xx-large;
            font-style:oblique;

            
        }
        </style>
</head>
<body style="        background-color: rgba(215,233, 216,0.5);
        flex-grow: 0;">

    <form runat="server">

        <div class="icon-bar">

        <a href="mailto: Ehsbha@gmail.com "><i class="fa fa-envelope" ></i></a>
        <a href="https://twitter.com #"><i class="fa fa-twitter"></i></a>
        <a href="https://instagram.com"><i class="fa fa-instagram"></i></a>
    </div>
        <div style="                background-color: rgba(2, 67, 53, 0.90);
                color: white;
                font-family: 'Times New Roman';
                font-size: 15px;
                text-align: left;
                padding: 5px;">

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


            <br />
            <br />
            <br />


        </div>

        <div class="auto-style10">
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RegesterationConnectionString %>" DeleteCommand="DELETE FROM [users] WHERE [userId] = @userId" InsertCommand="INSERT INTO [users] ([userId], [facilityName], [email], [phone], [taxPeriod], [password]) VALUES (@userId, @facilityName, @email, @phone, @taxPeriod, @password)" SelectCommand="SELECT [userId], [facilityName], [email], [phone], [taxPeriod], [password] FROM [users] WHERE ([userId] = @userId)" UpdateCommand="UPDATE [users] SET [facilityName] = @facilityName, [email] = @email, [phone] = @phone, [taxPeriod] = @taxPeriod, [password] = @password WHERE [userId] = @userId">
                    <DeleteParameters >
                        <asp:Parameter Name="userId" Type="Int32" Direction="InputOutput" />
                        
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="userId" Type="Int32" />
                        <asp:Parameter Name="facilityName" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="phone" Type="Int32" />
                        <asp:Parameter Name="taxPeriod" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="userId" SessionField="User" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="facilityName" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="phone" Type="Int32" />
                        <asp:Parameter Name="taxPeriod" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="userId" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" PageSize ="1"
             DataKeyNames="userId" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#CE9C2B" BorderStyle="None" BorderWidth="1px" Caption="Information" CaptionAlign="Top" CellPadding="3" CssClass="style2" ShowHeader="False" Width="70%" RowStyle-HorizontalAlign="Center" RowStyle-VerticalAlign="Middle" Height="80%" HorizontalAlign="Center" GridLines="Horizontal" OnRowUpdating="GridView1_RowUpdating" OnRowEditing="GridView1_RowEditing" OnRowDeleting="deleting">
                
          <Columns >
             
              <asp:TemplateField HeaderText="userId" SortExpression="userId">
                  <EditItemTemplate>
                      <asp:Label ID="Label1" runat="server" Text='<%# Bind("userId") %>' ></asp:Label>
                  </EditItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label3" runat="server" Text='<%# Bind("userId") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="facilityName" SortExpression="facilityName">
                  <EditItemTemplate>
                      <asp:TextBox ID="facilityName" runat="server" Text='<%# Eval("facilityName") %>'></asp:TextBox>
                  </EditItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="facilityNameL" runat="server" Text='<%# Eval("facilityName") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="email" SortExpression="email">
                  <EditItemTemplate>
                      <asp:TextBox ID="email" runat="server" Text='<%# Eval("email") %>'></asp:TextBox>
                  </EditItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="emailL" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="phone" SortExpression="phone">
                  <EditItemTemplate>
                      <asp:TextBox ID="phone" runat="server" Text='<%# Eval("phone") %>'></asp:TextBox>
                  </EditItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="phoneL" runat="server" Text='<%# Bind("phone") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="taxPeriod" SortExpression="taxPeriod">
                  <EditItemTemplate>
                      <asp:RadioButtonList ID="taxPeriod" runat="server" Width="250px" Class="radio" RepeatDirection="Horizontal" CellPadding="2" CellSpacing="7" >
                    <asp:ListItem Value="Monthly">Monthly report</asp:ListItem>
                    <asp:ListItem Value="Quarterly">Quarterly report</asp:ListItem>
                </asp:RadioButtonList>

                  </EditItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="taxPeriodL" runat="server" Text='<%# Bind("taxPeriod") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="password" SortExpression="password" Visible="False">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox5" runat="server" Text='<%# Eval("password") %>'></asp:TextBox>
                  </EditItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label6" runat="server" Text='<%# Bind("password") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField ShowHeader="False">
                  <EditItemTemplate>
                      <asp:Button ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" CssClass="edit"></asp:Button>
                      &nbsp;<asp:Button ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="edit"></asp:Button>
                  </EditItemTemplate>
                  <ItemTemplate>
                      <asp:Button ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" CssClass="edit"></asp:Button>
                  </ItemTemplate>
              </asp:TemplateField>
              
              <asp:TemplateField ShowHeader="False">
                  <ItemTemplate>
                      <asp:Button ID="LinkButton4" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" CssClass="edit"></asp:Button>
                  </ItemTemplate>
              </asp:TemplateField>
              
          </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#02614D" Font-Bold="True" ForeColor="White" CssClass="table" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
          </asp:GridView>
                
        </div>
           
    </form>

</body>
</html>
