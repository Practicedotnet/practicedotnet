<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="createadmission.aspx.cs" Inherits="school.createadmission" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <nav class="navbar navbar-default">
        <div class="container">

            <a href="#">Create Admission </a>

        </div>
    </nav>
    <style>
        .container {
            width: auto;
            height: auto;
            margin-top: 10px;
            border: solid 0px;
            border-color: lightgrey;
            margin-left: 1px;
            box-shadow: 0px 0px 1px 0px rgba(0, 0, 0, 0.5);
            font-size: 10px;
        }
        /*a{
          width:auto;
          height:0px;
       }*/
        h6 {
            color: gold;
            /*/*font-size: 15px;*/ */
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
    <main style="margin-top: 58px;">

        <div class="container">
                <h6>academic details</h6>
            <hr />
            <div class="row">      
                <div class="col-md-2">
                    <asp:Label ID="lblbranch" runat="server" Text="Branch"></asp:Label>
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
                    <asp:Label ID="lblacademicyear" runat="server" Text="Academic Year"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblregdno" runat="server" Text="Registration No."></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblroll" runat="server" Text="Roll No."></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lbladmndate" runat="server" Text="Admission Date"></asp:Label>
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
                    <asp:Label ID="lblclass" runat="server" Text="Class"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblsection" runat="server" Text="section"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblcategory" runat="server" Text="category"></asp:Label>
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
                    <asp:Label ID="lblfname" runat="server" Text="First Name"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lbllname" runat="server" Text="Last Name"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblgender" runat="server" Text="Gender"></asp:Label>
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
                    <asp:Label ID="lblbloodgroup" runat="server" Text="Blood Group"></asp:Label>
                </div>
                <div class="col-md-5">
                    <asp:Label ID="lbldob" runat="server" Text="Date Of Birth"></asp:Label>
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
                    <asp:Label ID="lblmothertongue" runat="server" Text="Mother Tongue"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblreligion" runat="server" Text="Religion"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblcaste" runat="server" Text="Caste"></asp:Label>
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
                    <asp:Label ID="lblmobile" runat="server" Text="mobile"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblemail" runat="server" Text="E-Mail"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblcity" runat="server" Text="City"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblstate" runat="server" Text="State"></asp:Label>
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
                    <asp:Label ID="lblpresentaddress" runat="server" Text="Present Address"></asp:Label>
                </div>
                <div class="col-md-5">
                    <asp:Label ID="lblpermanentaddress" runat="server" Text="Permanent Address"></asp:Label>
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
                    <asp:Label ID="lbltest" runat="server" Text="Test"></asp:Label>
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
                    <asp:Label ID="lblprofilepicture" runat="server" Text="Profile Picture"></asp:Label>
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
                    <asp:Label ID="lblusername" runat="server" Text="User Name"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblpassword" runat="server" Text="Password"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblretypepassword" runat="server" Text="Re-Type password"></asp:Label>
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
                    <asp:Label ID="lblgaurdian" runat="server" Text="Gaurdian Already Exists"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-5">
                    <asp:Label ID="lblname" runat="server" Text="Name"></asp:Label>
                </div>
                <div class="col-md-5">
                    <asp:Label ID="lblrelation" runat="server" Text="Relation"></asp:Label>
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
                    <asp:Label ID="lblfathername" runat="server" Text="Father Name"></asp:Label>
                </div>
                <div class="col-md-5">
                    <asp:Label ID="lblmothername" runat="server" Text="Mother Name"></asp:Label>
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
                    <asp:Label ID="lbloccupation" runat="server" Text="Occupation"></asp:Label>
                </div>
                <div class="col-md-4">
                    <asp:Label ID="lblincome" runat="server" Text="Income"></asp:Label>
                </div>
                <div class="col-md-4">
                    <asp:Label ID="lbleducation" runat="server" Text=" Education"></asp:Label>
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
                    <asp:Label ID="lblgcity" runat="server" Text="City"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblgstate" runat="server" Text="State"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblmobileno" runat="server" Text=" Mobile No."></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblgemail" runat="server" Text=" Email"></asp:Label>
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
                <asp:Label ID="lblgaddress" runat="server" Text="Address"></asp:Label>
            </div>
            <br />
            <div class="row">
                <div class="col-md-5">
                    <textarea id="txtareagaddress" cols="30" rows="2" class="form-control"></textarea>
                </div>
            </div>
            <br />
            <div class="row">
                <asp:Label ID="lblgphoto" runat="server" Text="Gaurdian Photograph"></asp:Label>
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
                    <asp:Label ID="lbltransportroute" runat="server" Text="Transport Route"></asp:Label>
                </div>
                <div class="col-md-5">
                    <asp:Label ID="lblvehicleno" runat="server" Text="Vehicle No."></asp:Label>
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
                    <asp:Label ID="lblhostelname" runat="server" Text="Hostel Name"></asp:Label>
                </div>
                <div class="col-md-5">
                    <asp:Label ID="lblroomname" runat="server" Text="Room Name"></asp:Label>
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
                    <asp:Label ID="lblschoolname" runat="server" Text="School Name"></asp:Label>
                </div>
                <div class="col-md-5">
                    <asp:Label ID="lblqualification" runat="server" Text="Qualification"></asp:Label>
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
                    <asp:Label ID="lblremarks" runat="server" Text="Remarks"></asp:Label>
                </div>
                <div class="col-md-10">
                    <textarea id="TextArea1" cols="50" rows="2" class="form-control"></textarea>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4"></div>
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Button ID="btnsave" runat="server" Text="Save" CssClass="form-control" Font-Size="10px" />
                </div>
            </div>
        </div>
    </main>
</asp:Content>
