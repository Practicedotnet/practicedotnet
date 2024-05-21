<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="Add parent.aspx.cs" Inherits="school.Add_parent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <script type="text/javascript">
       function validateNumbersOnly(e) {
           var unicode = e.charCode ? e.charCode : e.keyCode;
           var parts = e.srcElement.value.split('.');
           if (parts.length > 1 && unicode == 46)
               return false;
           if ((unicode == 8) || (unicode == 9) || (unicode == 45) || (unicode == 46) || (unicode > 47 && unicode < 58)) {
               return true;

           }
           else {
               window.alert("This field accepts only Numbers ");
               return false;
           }
          }
           function ValidateAlpha(evt) {
         var charCode = (evt.which) ? evt.which : evt.keyCode;
         if ((charCode < 65 || charCode > 90) && (charCode < 97 || charCode > 123) && charCode != 32) {
            
               window.alert("This field accepts only Alphabets");
             return false;
           
         }
          else {
            return true;
           }
     }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .container {
            width: auto;
            height: 960px; 
            margin-top: 0px;
            border: solid 0px;
            border-color: lightgrey;
            margin-left: 20px;
            margin-right: 20px;
            box-shadow: 0px 0px 5px 0px rgba(0, 0, 0, 0.5);
            font-size: 10px;
            background-color:white;
        }
        h4{
            color:white;
        }
        hr
        {
            color:black;
        }
        h5{
            color:gold;
        }
    </style>
    <main style="margin-top: 0px;">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <div class="container">
            <div class="row" style="background-color:cornflowerblue">
                <h4>Add Parent</h4>
                </div>
            <%--<hr />--%>
            <h5>Academic Details</h5><br />
           
            <div class="row">
                <div class="col-md-2">
                <asp:Label ID="lblbranch" runat="server" Text="Branch" Font-Size="Small"></asp:Label>
                </div>
                
                <div class="col-md-6">
                    <asp:DropDownList ID="DropDownListbranch" runat="server" CssClass="form-control" placeholder="select" Height="28px" Font-Size="10px">
                        <asp:ListItem>Test</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <h5>Parent Details</h5>
            <hr />
            <div class="row">
                <div class="col-md-6">
                    <asp:Label ID="lblname" runat="server" Text="Name" Font-Size="Small"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:Label ID="lblrelation" runat="server" Text="Relation" Font-Size="Small"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <asp:TextBox ID="txtname" runat="server" CssClass="form-control" Height="30px" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Please Enter Name" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtrelation" runat="server" CssClass="form-control" Height="30px" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtrelation" ErrorMessage="Enter Relation" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-6">
                    <asp:Label ID="lblfathername" runat="server" Text=" Father Name" Font-Size="Small"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:Label ID="lblmothername" runat="server" Text="Mother Name" Font-Size="Small"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <asp:TextBox ID="txtfathername" runat="server" CssClass="form-control" Height="30px" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtfathername" ErrorMessage="Enter Father Name" ForeColor="#FF5050"></asp:RequiredFieldValidator>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtmothername" runat="server" CssClass="form-control" Height="30px" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtmothername" ErrorMessage="Enter Mother Name" ForeColor="#FF5050"></asp:RequiredFieldValidator>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-4">
                    <asp:Label ID="lbloccupation" runat="server" Text=" Occupation" Font-Size="Small"></asp:Label>
                </div>
                <div class="col-md-4">
                    <asp:Label ID="lblincome" runat="server" Text="Income" Font-Size="Small"></asp:Label>
                </div>
                <div class="col-md-4">
                    <asp:Label ID="lbleducation" runat="server" Text="Education" Font-Size="Small"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <asp:TextBox ID="txtoccupation" runat="server" CssClass="form-control" Height="30px" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtoccupation" ErrorMessage="Enter Occupation" ForeColor="#FF5050"></asp:RequiredFieldValidator>
                </div>
                <div class="col-md-4">
                    <asp:TextBox ID="txtincome" runat="server" CssClass="form-control" Height="30px" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtincome" ErrorMessage="Enter Income" ForeColor="#FF5050"></asp:RequiredFieldValidator>
                </div>
                <div class="col-md-4">
                    <asp:TextBox ID="txteducation" runat="server" CssClass="form-control" Height="30px" Width="200px" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txteducation" ErrorMessage="Enter Education" ForeColor="#FF5050"></asp:RequiredFieldValidator>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="lblcity" runat="server" Text=" City" Font-Size="Small"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblstate" runat="server" Text="State" Font-Size="Small"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblmobile" runat="server" Text="Mobile" Font-Size="Small"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblemail" runat="server" Text="Email" Font-Size="Small"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <asp:TextBox ID="txtcity" runat="server" CssClass="form-control" Height="30px" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtcity" ErrorMessage="Enter City" ForeColor="#FF5050"></asp:RequiredFieldValidator>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtstate" runat="server" CssClass="form-control" Height="30px" Width="150px" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Enter State" ControlToValidate="txtstate" ForeColor="#FF5050"></asp:RequiredFieldValidator>
                </div>
                <div class="col-md-3">
                    
                    <asp:TextBox ID="txtmobile" runat="server" CssClass="form-control" Height="30px" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtmobile" ErrorMessage="Enter Mobile" ForeColor="#FF5050"></asp:RequiredFieldValidator>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" Height="30px" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter Email" ForeColor="#FF5050"></asp:RequiredFieldValidator>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-10">
                    <asp:Label ID="lbladdress" runat="server" Text="Address" Font-Size="Small"></asp:Label>
                </div>
            </div>
             <div class="row">
                <div class="col-md-12">
                    <asp:TextBox ID="txtaddress" runat="server" CssClass="form-control" Height="30px" Width="500px"></asp:TextBox>
                </div>
                </div>
            <br />
                <div class="row">
                <div class="col-md-10">
                    <asp:Label ID="lblprofile" runat="server" Text="Profile Picture" Font-Size="Small"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-10">
                    <asp:FileUpload ID="Fuimage" runat="server" CssClass="form-control" Font-Size="10px" Width="780px" Height="180px" placeholder="drag and drop your files here" />
                </div>
            </div>
            <h5>Social Links</h5>
            <hr />
            <div class="row">
                <div class="col-md-4">
                    <asp:Label ID="lblfacebook" runat="server" Text=" Facebook" Font-Size="Small"></asp:Label>
                </div>
                <div class="col-md-4">
                    <asp:Label ID="lbltwitter" runat="server" Text="Twitter" Font-Size="Small"></asp:Label>
                </div>
                <div class="col-md-4">
                    <asp:Label ID="lbllinkedin" runat="server" Text="LinkedIn" Font-Size="Small"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <asp:TextBox ID="txtfacebook" runat="server" CssClass="form-control" Height="30px" Width="200px"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <asp:TextBox ID="txttwitter" runat="server" CssClass="form-control" Height="30px" Width="200px"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <asp:TextBox ID="txtlinkedin" runat="server" CssClass="form-control" Height="30px" Width="200px"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <br />
            <div class="row">
                <div class="col-md-8"></div>
                <div class="col-md-2">
                    <asp:Button ID="btnsave" runat="server" Text="Save" CssClass="btn btn-success" Height="28px" Width="80px" Font-Size="15px" OnClick="btnsave_Click"/>
                </div> 
                <asp:Button ID="btnRefresh" runat="server" Text="Refresh" CssClass="btn btn-success" Height="28px" Width="80px" Font-Size="15px" OnClick="btnRefresh_Click" />
            </div>
           </div>
        
    </main>
</asp:Content>
