<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="createadmission.aspx.cs" Inherits="school.createadmission" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/styles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<nav class="navbar navbar-default">
        <div class="container">

            <a href="#">Create Admission </a>

        </div>
    </nav>--%>
    <style>
       .container {
            width: 1000px;
            height: auto;
            margin-top: 10px;
            border: solid 1px;
            border-color: lightgrey;
            margin-left: 10px;
            box-shadow: 0px 0px 1px 0px rgba(0, 0, 0, 0.5);
            font-size: 13px;
            background-color:white;
            font-family: Helvetica ;
        }
        /*a{
          width:auto;
          height:0px;
       }*/
        h5{
            font-size:large;
                       color:white;
                       padding-left:5px;
                       padding-bottom:4px;
                       margin-bottom:2px;
        }
        h6{
            color:gold;
            font-size:18px;
        }

        /*school-icon-heading {0..
            font-size: 24px;
        }*/

        .textbox {
            height: 15px;
            font-size: 10px;
        }

        /*.container {
            width: 300px;000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
            height: 260px;
            margin-top: auto;
            border: solid;
            border-color: lightgrey;
            margin-left: 40px;
            box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.5);
            font-size: 10px;
        }*/
    </style>
    <main style="margin-top: 10px;">

        <div class="container">
            <div class="row" style="background-color: cornflowerblue; height:40px; padding:10px" >
                <h5>Create Admission</h5><br /></div>
            <hr />
            <div class="row">      
                <div class="col-md-2">
                    <asp:Label ID="lblbranch" runat="server" Text="Branch" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-4">
                    <asp:DropDownList ID="DropDownListbranch" runat="server" CssClass="form-control" Font-Size="10px">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>test</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <br />
        
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="lblacademicyear" runat="server" Text="Academic Year" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblregdno" runat="server" Text="Registration No." CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblroll" runat="server" Text="Roll No." CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lbladmndate" runat="server" Text="Admission Date" CssClass="Label"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <asp:DropDownList ID="DropDownListyear" runat="server" CssClass="form-control " Font-Size="10px">
                        <asp:ListItem>2021-2022</asp:ListItem>
                        <asp:ListItem>2022-2023</asp:ListItem>
                        <asp:ListItem>2023-2024</asp:ListItem>
                        <asp:ListItem>2024-2025</asp:ListItem>
                        <asp:ListItem>2025-2026</asp:ListItem>
                        <asp:ListItem>2026-2027</asp:ListItem>
                        <asp:ListItem>2027-2028</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtregdno" runat="server" CssClass="form-control" Height="25px" Width="200px"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtroll" runat="server" CssClass="form-control" Height="25px" Width="200px"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtadmndate" runat="server" TextMode="Date" CssClass="form-control" Height="25px" Width="200px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="lblclass" runat="server" Text="Class" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblsection" runat="server" Text="section" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblcategory" runat="server" Text="category" CssClass="Label"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Height="25px" Width="200px" Font-Size="10px">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>nine</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-3">
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" Height="25px" Width="200px" Font-Size="10px">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>A Section</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-3">
                    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control" Height="25px" Width="200px" Font-Size="10px">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>normal</asp:ListItem>
                        <asp:ListItem>payment</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <br />
            <br />
            <h6>student details</h6>
            <hr />
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="lblfname" runat="server" Text="First Name" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lbllname" runat="server" Text="Last Name" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblgender" runat="server" Text="Gender" CssClass="Label"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <asp:TextBox ID="txtfname" runat="server" CssClass="form-control " Height="25px" Width="200px"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtlname" runat="server" CssClass="form-control " Height="25px" Width="200px"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control " Height="25px" Width="200px" Font-Size="10px">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>male</asp:ListItem>
                        <asp:ListItem>female</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-5">
                    <asp:Label ID="lblbloodgroup" runat="server" Text="Blood Group" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-5">
                    <asp:Label ID="lbldob" runat="server" Text="Date Of Birth" CssClass="Label"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-5">
                    <asp:DropDownList ID="DropDownListbloodgrp" runat="server" CssClass="form-control" Height="25px" Width="200px" Font-Size="10px">
                        <asp:ListItem>o+</asp:ListItem>
                        <asp:ListItem>o-</asp:ListItem>
                        <asp:ListItem>a+</asp:ListItem>
                        <asp:ListItem>a-</asp:ListItem>
                        <asp:ListItem>b+</asp:ListItem>
                        <asp:ListItem>b-</asp:ListItem>
                        <asp:ListItem>ab+</asp:ListItem>
                        <asp:ListItem>ab-</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-5">
                    <asp:TextBox ID="txtdob" runat="server" CssClass="form-control" TextMode="Date" Height="25px" Width="200px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="lblmothertongue" runat="server" Text="Mother Tongue" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblreligion" runat="server" Text="Religion" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblcaste" runat="server" Text="Caste" CssClass="Label"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <asp:TextBox ID="txtmothertongue" runat="server" CssClass="form-control " Height="25px" Width="200px"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtreligion" runat="server" CssClass="form-control " Height="25px" Width="200px"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtcaste" runat="server" CssClass="form-control " Height="25px" Width="200px"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="lblmobile" runat="server" Text="mobile" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblemail" runat="server" Text="E-Mail" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblcity" runat="server" Text="City" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblstate" runat="server" Text="State" CssClass="Label"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <asp:TextBox ID="txtmobile" runat="server" CssClass="form-control " Height="25px" Width="200px"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtemail" runat="server" CssClass="form-control " Height="25px" Width="200px"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtcity" runat="server" CssClass="form-control " Height="25px" Width="200px"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtstate" runat="server" CssClass="form-control " Height="25px" Width="200px"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-md-5">
                    <asp:Label ID="lblpresentaddress" runat="server" Text="Present Address" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-5">
                    <asp:Label ID="lblpermanentaddress" runat="server" Text="Permanent Address" CssClass="Label"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-5">
                    <textarea id="txtareapresentaddress" cols="50" rows="2" class="form-control "></textarea>
                </div>
                <div class="col-md-5">
                    <textarea id="txtareapermanentaddress" cols="50" rows="2" class="form-control"></textarea>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2">
                    <asp:Label ID="lbltest" runat="server" Text="Test" CssClass="Label"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2">
                    <asp:TextBox ID="txttest" runat="server" CssClass="form-control" Height="25px" Width="200px"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <br />
            <div class="row">
                <div class="col-md-2">
                    <asp:Label ID="lblprofilepicture" runat="server" Text="Profile Picture" CssClass="Label"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-5">
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control " Width="350px" Height="30px" Font-Size="10px"></asp:FileUpload>
                </div>
            </div>
            <br />
            <br />
            <h6>Login Details</h6>
            <div class="row">
                <div class="col-md-5">
                    <asp:Label ID="lblusername" runat="server" Text="User Name" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblpassword" runat="server" Text="Password" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblretypepassword" runat="server" Text="Re-Type password" CssClass="Label"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-5">
                    <asp:TextBox ID="txtusername" runat="server" CssClass="form-control " Height="25px" Width="200px"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtpassword" runat="server" CssClass="form-control " Height="25px" Width="200px"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtretypepassword" runat="server" CssClass="form-control" Height="25px" Width="200px"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <h6>Gaurdian Details</h6>
            <hr />
            <div class="row">
                <div class="col-md-1">
                    <asp:CheckBox ID="CheckBoxgaurdian" runat="server" />
                </div>
                <div class="col-md-4">
                    <asp:Label ID="lblgaurdian" runat="server" Text="Gaurdian Already Exists" CssClass="Label"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-5">
                    <asp:Label ID="lblname" runat="server" Text="Name" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-5">
                    <asp:Label ID="lblrelation" runat="server" Text="Relation" CssClass="Label"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-5">
                    <asp:TextBox ID="txtname" runat="server" CssClass="form-control" Height="25px" Width="200px"></asp:TextBox>
                </div>
                <div class="col-md-5">
                    <asp:TextBox ID="txtrelation" runat="server" CssClass="form-control" Height="25px" Width="200px"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-5">
                    <asp:Label ID="lblfathername" runat="server" Text="Father Name" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-5">
                    <asp:Label ID="lblmothername" runat="server" Text="Mother Name" CssClass="Label"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-5">
                    <asp:TextBox ID="txtfathername" runat="server" CssClass="form-control" Height="25px" Width="200px"></asp:TextBox>
                </div>
                <div class="col-md-5">
                    <asp:TextBox ID="txtmothername" runat="server" CssClass="form-control" Height="25px" Width="200px"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-4">
                    <asp:Label ID="lbloccupation" runat="server" Text="Occupation" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-4">
                    <asp:Label ID="lblincome" runat="server" Text="Income" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-4">
                    <asp:Label ID="lbleducation" runat="server" Text=" Education" CssClass="Label"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <asp:TextBox ID="txtoccupation" runat="server" CssClass="form-control" Height="25px" Width="200px"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <asp:TextBox ID="txtincome" runat="server" CssClass="form-control" Height="25px" Width="200px"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <asp:TextBox ID="txteducation" runat="server" CssClass="form-control" Height="25px" Width="200px"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="lblgcity" runat="server" Text="City" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblgstate" runat="server" Text="State" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblmobileno" runat="server" Text=" Mobile No." CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblgemail" runat="server" Text=" Email" CssClass="Label"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <asp:TextBox ID="txtgcity" runat="server" CssClass="form-control" Height="25px" Width="200px"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtgstate" runat="server" CssClass="form-control" Height="25px" Width="200px"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtgmobileno" runat="server" CssClass="form-control" Height="25px" Width="200px"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtgemail" runat="server" CssClass="form-control" Height="25px" Width="200px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <asp:Label ID="lblgaddress" runat="server" Text="Address" CssClass="Label"></asp:Label>
            </div>
            <br />
            <div class="row">
                <div class="col-md-5">
                    <textarea id="txtareagaddress" cols="30" rows="2" class="form-control"></textarea>
                </div>
            </div>
            <br />
            <div class="row">
                <asp:Label ID="lblgphoto" runat="server" Text="Gaurdian Photograph" CssClass="Label"></asp:Label>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <asp:FileUpload ID="FileUploadgaurdenphoto" runat="server" CssClass="form-control " Width="350px" Height="30px" Font-Size="10px"></asp:FileUpload>
                </div>
            </div>
            <br />
            <h6>Transportation Details</h6>
            <hr />
            <div class="row">
                <div class="col-md-5">
                    <asp:Label ID="lbltransportroute" runat="server" Text="Transport Route" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-5">
                    <asp:Label ID="lblvehicleno" runat="server" Text="Vehicle No." CssClass="Label"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-5">
                    <asp:TextBox ID="txttransport" runat="server" CssClass="form-control" Height="25px" Width="200px"></asp:TextBox>
                </div>
                <div class="col-md-5">
                    <asp:TextBox ID="txtvehicleno" runat="server" CssClass="form-control" Height="25px" Width="200px"></asp:TextBox>
                </div>
            </div>
            <h6>Hostel Details</h6>
            <hr />
            <div class="row">
                <div class="col-md-5">
                    <asp:Label ID="lblhostelname" runat="server" Text="Hostel Name" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-5">
                    <asp:Label ID="lblroomname" runat="server" Text="Room Name" CssClass="Label"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-5">
                    <asp:TextBox ID="txthostelname" runat="server" CssClass="form-control" Height="25px" Width="200px"></asp:TextBox>
                </div>
                <div class="col-md-5">
                    <asp:TextBox ID="txtroomname" runat="server" CssClass="form-control" Height="25px" Width="200px"></asp:TextBox>
                </div>
            </div>
            <h6>Previous School Details</h6>
            <hr />
            <div class="row">
                <div class="col-md-5">
                    <asp:Label ID="lblschoolname" runat="server" Text="School Name" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-5">
                    <asp:Label ID="lblqualification" runat="server" Text="Qualification" CssClass="Label"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-5">
                    <asp:TextBox ID="txtschoolname" runat="server" CssClass="form-control" Height="25px" Width="200px"></asp:TextBox>
                </div>
                <div class="col-md-5">
                    <asp:TextBox ID="txtqualification" runat="server" CssClass="form-control" Height="25px" Width="200px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2">
                    <asp:Label ID="lblremarks" runat="server" Text="Remarks" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-10">
                    <textarea id="TextArea1" cols="50" rows="2" class="form-control" ></textarea>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4"></div>
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Button ID="btnsave" runat="server" Text="Save" CssClass="btn btn-success" Font-Size="10px" />
                </div>
            </div>
        </div>
    </main>
</asp:Content>
