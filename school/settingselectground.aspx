<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="settingselectground.aspx.cs" Inherits="school.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/styles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- <nav class="navbar navbar-default">
  <div class="container">
    <div class="navbar-header">
      <a href="#"> frontend </a>
    </div>
      </div>
     </nav>--%><style>
                  .container {
            width: 1000px;
            height: auto ;
            margin-top: 10px;
            border: solid 1px;
            border-color: lightgrey;
            margin-left: 10px;
            box-shadow: 0px 0px 1px 0px rgba(0, 0, 0, 0.5);
   
            background-color:white;
        }

                   h5 {
                       font-size:large;
                       color:white;
                       /*background-color:cornflowerblue;*/
                       /*height:50px;*/



                   }
               </style>
    <main <%--style="margin-top:0px"--%>>
        <div class="container">
            <div class="row" style="background-color: cornflowerblue" >
            <h5>Select Ground</h5></div><hr />
            <div class="row">
                <div class="col-md-2">
                </div>
                <div class="col-md-6">
                    <asp:Label ID="lblbranch" runat="server"  CssClass="Label"  Text="Branch" ></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2">
                </div>
                <div class="col-md-6">
                    <asp:DropDownList ID="DropDownListbranch" runat="server" CssClass="form-control" Height="28px" Width="350px" Font-Size="10px">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>test</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2">
                </div>
                <div class="col-md-4">
                </div>
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Button ID="btnfilter" runat="server" Text="filter" CssClass="form-control" Height="28px" Width="80px" Font-Size="10px" OnClick="btnfilter_Click" />
                </div>
            </div>
            <br />
            <br />
            <br />
            <div id="divfilter" runat="server" visible="false">
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lbltitle" runat="server" CssClass="Label" Text="Cms Title:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txttitle" runat="server" CssClass="form-control" Height="28px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
                <br />
                <br />
                <br />
            </div>
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblurl" runat="server" CssClass="Label" Text="Cms Url Alias:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txturl" runat="server" CssClass="form-control" Height="28px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblcmsfrontend" runat="server" CssClass="Label" Text="Cms Frontend:"></asp:Label>
                </div>
                <div class="col-md-2">
                    <asp:RadioButton ID="Radiobtnenable" runat="server" Text="enabled" />
                </div>
                <div class="col-md-2">
                    <asp:RadioButton ID="radiobtndisable" runat="server" Text="disabled" />
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblonlineadmission" runat="server" CssClass="Label" Text="Online Admission:"></asp:Label>
                </div>
                <div class="col-md-2">
                    <asp:RadioButton ID="radiobtnenabled" runat="server" Text="enabled" />
                </div>
                <div class="col-md-2">
                    <asp:RadioButton ID="radiobtndisabled" runat="server" Text="disabled" />
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblreceivemailto" runat="server" CssClass="Label" Text="Receive Mail To:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtreceivemailto" runat="server" CssClass="form-control" Height="28px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblcaptchastatus" runat="server" CssClass="Label" Text=" captcha status:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:DropDownList ID="DropDownListcaptchastatus" runat="server" CssClass="form-control" Height="28px" Width="350px" Font-Size="10px">
                        <asp:ListItem>enabled</asp:ListItem>
                        <asp:ListItem>disabled</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblrecaptchasitekey" runat="server" CssClass="Label" Text="Re Captcha Site Key:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtrecaptchasite" runat="server" CssClass="form-control" Height="28px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblrecaptchasecret" runat="server" CssClass="Label" Text="Re Captcha Secret Key:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtrecaptchasecret" runat="server" CssClass="form-control" Height="28px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblworkinghrs" runat="server" CssClass="Label" Text="Working Hours:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <textarea id="txtworkinghrs" cols="50" rows="2" class="form-control "></textarea>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lbllogo" runat="server" CssClass="Label" Text="Logo"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:FileUpload ID="FileUploadlogo" runat="server" CssClass="form-control" Height="30px" Width="350px" Font-Size="10px" />
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="Label3" runat="server" Text="Fav Icon"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:FileUpload ID="fileuploadfavicon" runat="server" CssClass="form-control" Font-Size="10px" Height="30px" Width="350px" />
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lbladdress" runat="server" CssClass="Label" Text="Address"></asp:Label>
                </div>
                <div class="col-md-6">
                    <textarea id="TextAreaaddress" cols="50" rows="2" class="form-control"></textarea>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblgoogleanalytics" runat="server" CssClass="Label" Text="Google Analytics"></asp:Label>
                </div>
                <div class="col-md-6">
                    <textarea id="txtareagoogleanalytis" cols="50" rows="2" class="form-control"></textarea>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblmobile" runat="server" CssClass="Label" Text="Mobile No.:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtmobile" runat="server" CssClass="form-control" Height="28px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblemail" runat="server" CssClass="Label" Text="E-mail:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" Height="28px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblfax" runat="server" CssClass="Label" Text="Fax:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtfax" runat="server" CssClass="form-control" Height="28px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblfooter" runat="server" CssClass="Label" Text="Footer About Text"></asp:Label>
                </div>
                <div class="col-md-6">
                    <textarea id="txtfooter" cols="50" rows="3" class="form-control"></textarea>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="copyright" runat="server" CssClass="Label" Text="Copy-Right Text"></asp:Label>
                </div>
                <div class="col-md-6">
                    <textarea id="txtcopyright" cols="50" rows="" class="form-control"></textarea>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblfacebook" runat="server" CssClass="Label" Text="Facebook:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtfacebook" runat="server" CssClass="form-control" Height="28px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lbltwitter" runat="server" CssClass="Label" Text="Twitter:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txttwitter" runat="server" CssClass="form-control" Height="28px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblyoutube" runat="server" CssClass="Label" Text="You-Tube:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtyoutube" runat="server" CssClass="form-control" Height="28px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblgoogle" runat="server" CssClass="Label" Text="Google:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtgoogle" runat="server" CssClass="form-control" Height="28px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lbllinkedin" runat="server" CssClass="Label" Text="LinkedIn:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtlinkedin" runat="server" CssClass="form-control" Height="28px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblpinterest" runat="server" CssClass="Label" Text="Pinterest:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtpinterest" runat="server"  CssClass="form-control" Height="28px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblinstagram" runat="server" CssClass="Label" Text="Instagram:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtinstagram" runat="server" CssClass="form-control" Height="28px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-6"></div>
                <div class="col-md-2">
                    <asp:Button ID="btnsave" runat="server" Text="Save" CssClass="btn btn-success" Height="28px" Width="80px" Font-Size="10px" />
                </div>
            </div>
            <br />
            <br /></div>
        </div>
    </main>
</asp:Content>
