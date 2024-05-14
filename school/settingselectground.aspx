<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="settingselectground.aspx.cs" Inherits="school.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                       width: 800px;
                       height: auto;
                       margin-top: 10px;
                       border: solid 1px;
                       border-color: lightgrey;
                       margin-left: 40px;
                       box-shadow: 0px 0px 1px 0px rgba(0, 0, 0, 0.5);
                       font-size: 10px;
                       background-color:white;
                   }

                   .textbox {
                       height: 28px;
                       width: 350px;
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
                    <asp:Label ID="lblbranch" runat="server" Text="Branch"></asp:Label>
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
                    <asp:Label ID="lbltitle" runat="server" Text="Cms Title:"></asp:Label>
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
                    <asp:Label ID="lblurl" runat="server" Text="Cms Url Alias:"></asp:Label>
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
                    <asp:Label ID="lblcmsfrontend" runat="server" Text="Cms Frontend:"></asp:Label>
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
                    <asp:Label ID="lblonlineadmission" runat="server" Text="Online Admission:"></asp:Label>
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
                    <asp:Label ID="lblreceivemailto" runat="server" Text="Receive Mail To:"></asp:Label>
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
                    <asp:Label ID="lblcaptchastatus" runat="server" Text=" captcha status:"></asp:Label>
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
                    <asp:Label ID="lblrecaptchasitekey" runat="server" Text="Re Captcha Site Key:"></asp:Label>
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
                    <asp:Label ID="lblrecaptchasecret" runat="server" Text="Re Captcha Secret Key:"></asp:Label>
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
                    <asp:Label ID="lblworkinghrs" runat="server" Text="Working Hours:"></asp:Label>
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
                    <asp:Label ID="lbllogo" runat="server" Text="Logo"></asp:Label>
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
                    <asp:Label ID="lbladdress" runat="server" Text="Address"></asp:Label>
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
                    <asp:Label ID="lblgoogleanalytics" runat="server" Text="Google Analytics"></asp:Label>
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
                    <asp:Label ID="lblmobile" runat="server" Text="Mobile No.:"></asp:Label>
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
                    <asp:Label ID="lblemail" runat="server" Text="E-mail:"></asp:Label>
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
                    <asp:Label ID="lblfax" runat="server" Text="Fax:"></asp:Label>
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
                    <asp:Label ID="lblfooter" runat="server" Text="Footer About Text"></asp:Label>
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
                    <asp:Label ID="copyright" runat="server" Text="Copy-Right Text"></asp:Label>
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
                    <asp:Label ID="lblfacebook" runat="server" Text="Facebook:"></asp:Label>
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
                    <asp:Label ID="lbltwitter" runat="server" Text="Twitter:"></asp:Label>
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
                    <asp:Label ID="lblyoutube" runat="server" Text="You-Tube:"></asp:Label>
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
                    <asp:Label ID="lblgoogle" runat="server" Text="Google:"></asp:Label>
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
                    <asp:Label ID="lbllinkedin" runat="server" Text="LinkedIn:"></asp:Label>
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
                    <asp:Label ID="lblpinterest" runat="server" Text="Pinterest:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtpinterest" runat="server" CssClass="form-control" Height="28px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblinstagram" runat="server" Text="Instagram:"></asp:Label>
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
                    <asp:Button ID="btnsave" runat="server" Text="Save" CssClass="form-control" Height="28px" Width="80px" Font-Size="10px" />
                </div>
            </div>
            <br />
            <br /></div>
        </div>
    </main>
</asp:Content>
