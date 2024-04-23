<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="empregistration.aspx.cs" Inherits="school.empregistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
       /*a{
          width:auto;
          height:0px;
       }*/
       h3{
          color:gold;
          font-size:25px;
       }
        school-icon-heading {
            font-size: 24px;
        }
   </style>
 <nav class="navbar navbar-default">
  <div class="container">
    <div class="navbar-header">
      <a href="#">Add Employee</a>
    </div>
      </div>
     </nav>
  <main style="margin-top: 58px;">
  <div class="container pt-4"></div>
    <div class ="container">
         <h3 class="school-icon-heading">
    <i class="fas fa-school"></i> Acadamic Details
</h3>
    <asp:Panel ID="Panel1" runat="server" text="Add Employee"></asp:Panel>
    <div class ="row">
        <div class="col-md-3">
            <asp:Label ID="lblbranch" runat="server" Text="Branch"></asp:Label>
        </div>
        <div class="col-md-3">
            <asp:Label ID="lblrole" runat="server" Text="Role"></asp:Label>
        </div>
        <div class ="col-md-3">
            <asp:Label ID="lbljoindate" runat="server" Text="Joining Date"></asp:Label>
        </div>
    </div>
    <div class ="row">
        <div class="col-md-3">
            <asp:DropDownList ID="DropDownLisbranch1" runat="server" CssClass ="form-control">
                <asp:ListItem>select</asp:ListItem>
                <asp:ListItem>test</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class ="col-md-3">
            <asp:DropDownList ID="DropDownListrole" runat="server" CssClass ="form-control">
                <asp:ListItem>select</asp:ListItem>
                <asp:ListItem>admin</asp:ListItem>
                <asp:ListItem>teacher</asp:ListItem>
                <asp:ListItem>librarian</asp:ListItem>
                <asp:ListItem>receptionist</asp:ListItem>
                <asp:ListItem>accountant</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class ="col-md-3">
            <asp:TextBox ID="txtjoindate" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
        </div>
    </div><br />
    <div class="row">
        <div class="col-md-4">
            <asp:Label ID="lbldesignation" runat="server" Text="Designation"></asp:Label>
        </div>
        <div class="col-md-4">
            <asp:Label ID="lbldepartment" runat="server" Text="Department"></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <asp:DropDownList ID="DropDownListdesignation" runat="server" CssClass ="form-control">
                <asp:ListItem>first select the branch</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="col-md-4">
            <asp:DropDownList ID="DropDownListdepartment" runat="server" CssClass ="form-control" >
                <asp:ListItem>first select the branch</asp:ListItem>
            </asp:DropDownList>
        </div>
    </div><br />
    <div class ="row">
        <div class="col-md-3">
            <asp:Label ID="lblqualification" runat="server" Text="Qualification"></asp:Label>
        </div>
        <div class="col-md-3">
            <asp:Label ID="lblexperience" runat="server" Text="Experience Details"></asp:Label>
        </div>
        <div class ="col-md-3">
            <asp:Label ID="lbltotalexperience" runat="server" Text="Total Experience"></asp:Label>
        </div>
    </div>
    <div class ="row">
        <div class="col-md-3">
            <textarea id="txtAreaqualification" cols="43" rows="1" class="form-control"  ></textarea>
        </div> &nbsp&nbsp&nbsp&nbsp
        <div class ="col-md-3">
            <textarea id="txtAreaexperience" cols="43" rows="1" class="form-control" ></textarea>
        </div>
        <div class ="col-md-3">
            <asp:TextBox ID="txttotalexperience" runat="server" class="form-control"></asp:TextBox>
        </div>
    </div><br />
    <h3>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
        Employee Details 
            </div></h3><hr /><br />
    <div class="row">
        <div class="col-md-4">
            <asp:Label ID="lblname" runat="server" Text="Name"></asp:Label>
        </div>
        <div class="col-md-4">
            <asp:Label ID="lblgender" runat="server" Text="Gender"></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
    <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <asp:TextBox ID="txtname" runat="server" CssClass ="form-control"></asp:TextBox>
        </div>
            </div><br />
        <div class="col-md-4">
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass ="form-control">
                <asp:ListItem>select</asp:ListItem>
                <asp:ListItem >male</asp:ListItem>
                <asp:ListItem >female</asp:ListItem>
            </asp:DropDownList>
        </div>
 
    </div><br />
    <div class="row">
        <div class="col-md-3">
            <asp:Label ID="lblreligion" runat="server" Text="Religion" ></asp:Label>
        </div>
        <div class="col-md-3">
            <asp:Label ID="lblbloodgroup" runat="server" Text="Blood Group"></asp:Label>
        </div>
        <div class="col-md-3">
            <asp:Label ID="lbldob" runat="server" Text="Date Of Birth"></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3">
            <asp:TextBox ID="txtreligion" runat="server" CssClass="form-control "></asp:TextBox>
        </div>
        <div class="col-md-3">
            <asp:DropDownList ID="DropDownListbloodgroup" runat="server" CssClass ="form-control">
                <asp:ListItem >select</asp:ListItem>
                <asp:ListItem >o+</asp:ListItem>
                <asp:ListItem >o-</asp:ListItem>
                <asp:ListItem >a+</asp:ListItem>
                <asp:ListItem >a-</asp:ListItem>
                <asp:ListItem >b+</asp:ListItem>
                <asp:ListItem >b-</asp:ListItem>
                <asp:ListItem >ab+</asp:ListItem>
                <asp:ListItem >ab-</asp:ListItem>
           </asp:DropDownList>
        </div>
        <div class="col-md-3">
            <div class="input-group">
            <span class="input-group-addon"><i class="fas fa-birthday-cake"></i></span>
            <asp:TextBox ID="txtdob" runat="server" TextMode ="Date" CssClass ="form-control"></asp:TextBox>
            </div>
        </div>
      </div>
        <br /><br />
    <div class="row">
        <div class="col-md-4">
            <asp:Label ID="lblmobile" runat="server" Text="Mobile No."></asp:Label>
        </div>
        <div class="col-md-4">
            <asp:Label ID="lblemail" runat="server" Text="E-Mail"></asp:Label>
        </div>
    </div>
    <div class="row">
    <div class="col-md-4">
        <asp:TextBox ID="txtmobile" runat="server" CssClass ="form-control"></asp:TextBox>
    </div>
    <div class="col-md-4">
        <asp:TextBox ID="txtemail" runat="server" CssClass ="form-control"></asp:TextBox>
    </div>
        </div><br />
    <div class="row">
        <div class="col-md-4">
            <asp:Label ID="lblpreentadress" runat="server" Text="Present Address"></asp:Label>
        </div>
        <div class="col-md-4">
            <asp:Label ID="lblpermanentadress" runat="server" Text="Permenant Address"></asp:Label>
        </div>
    </div>
    <div class ="row">
        <div class="col-md-4">
            <textarea id="TextAreapresent" cols="50" rows="2" class="form-control"></textarea>
        </div>
        <div class="col-md-4">
            <textarea id="TextAreapermanent" cols="50" rows="2" class="form-control"></textarea>
        </div>
    </div><br >
    <div class="row">
        <div class="col-md-4">
            <asp:Label ID="lblprofile" runat="server" Text="Profile Picture"></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <asp:FileUpload ID="FileUploadprofile" runat="server" CssClass="form-control" Height="200px" Width="1000px" align="center" />
        </div>
    </div><br />
    <h3>login details</h3><hr />
    <div class="row">
        <div class="col-md-4">
            <asp:Label ID="lblusername" runat="server" Text="User Name"></asp:Label>
        </div>
        <div class="col-md-2">
            <asp:Label ID="lblpassword" runat="server" Text="Password"></asp:Label>
        </div>
        <div class="col-md-2">
            <asp:Label ID="lblretypepwd" runat="server" Text="Re-Type Password"></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <asp:TextBox ID="txtusername" runat="server" CssClass ="form-control"></asp:TextBox>
        </div>
            </div>
        <div class="col-md-2">
            <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
            <asp:TextBox ID="txtpassword"  runat="server" CssClass ="form-control"></asp:TextBox>
        </div>
            </div>
        <div class="col-md-2">
             <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
      <asp:TextBox ID="txtretypepwd" runat="server" CssClass ="form-control"></asp:TextBox>
        </div>
             </div>
    </div><br />
    <h3>social links</h3><hr />
    <div class="row">
        <div class="col-md-3">
            <asp:Label ID="lblfacebook" runat="server" Text="Facebook"></asp:Label>
        </div>
        <div class="col-md-3">
            <asp:Label ID="lbltwitter" runat="server" Text ="Twitter"> </asp:Label>
        </div>
        <div class="col-md-3">
            <asp:Label ID="lbllinkedin" runat="server" Text="LinkedIn"></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3">
             <div class="input-group">
            <i class="fa fa-facebook-official"></i>
            <asp:TextBox ID="txtfacebook" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
            </div>
        <div class="col-md-3">
            <asp:TextBox ID="txttwitter" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-3">
            <asp:TextBox ID="txtlinkedin" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <h3>bank details</h3><hr />
    <div class="row">
        <div class="col-md-3">
            <asp:CheckBox ID="CheckBoxhidedetails" runat="server" />
            <asp:Label ID="lblhidedetails" runat="server" Text="Hide Bank Details"></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3">
            <asp:Label ID="lblbankname" runat="server" Text="Bank Name"></asp:Label>
        </div>
        <div class="col-md-3">
            <asp:Label ID="lblholdername" runat="server" Text="Holder Name"></asp:Label>
        </div>
        <div class="col-md-3">
            <asp:Label ID="lblbankbranch" runat="server" Text="Bank Branch"></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3">
            <asp:TextBox ID="txtbankname" runat="server" CssClass ="form-control"></asp:TextBox>
        </div>
        <div class="col-md-3">
            <asp:TextBox ID="txtholdername" runat="server" CssClass ="form-control"></asp:TextBox>
        </div>
        <div class="col-md-3">
            <asp:TextBox ID="txtbankbranch" runat="server" CssClass ="form-control"></asp:TextBox>
        </div>
    </div><br />
    <div class="row">
        <div class="col-md-3">
            <asp:Label ID="lblbankaddress" runat="server" Text="Bank Address"></asp:Label>
        </div>
        <div class="col-md-3">
            <asp:Label ID="lblifsccode" runat="server" Text="IFSC Code"></asp:Label>
        </div>
        <div class="col-md-3">
            <asp:Label ID="lblaccno" runat="server" Text="Account Number"></asp:Label>
        </div>
       <%-- <div class="col-md-2">
            <asp:Label ID="lblaccountno" runat="server" Text="account number"></asp:Label>
        </div>--%>
    </div>
    <div class="row">
        <div class="col-md-3">
            <asp:TextBox ID="txtbankaddress" runat="server" CssClass ="form-control "></asp:TextBox>
        </div>
        <div class="col-md-3">
            <asp:TextBox ID="txtifsccode" runat="server" CssClass ="form-control "></asp:TextBox>
        </div>
        <div class="col-md-3">
            <asp:TextBox ID="txtaccountno" runat="server" CssClass ="form-control "></asp:TextBox>
        </div>
    </div>
<br />
      
    </div>
      </main>
</asp:Content>
