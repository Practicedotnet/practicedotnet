<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="onlineexam.aspx.cs" Inherits="school.onlineexam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>
        .container {
            width: 700px;
            height: auto;
            margin-top: 70px;
            border: solid 1px;
            border-color: lightgrey;
            margin-left: 10px;
            box-shadow: 0px 0px 1px 0px rgba(0, 0, 0, 0.5);
            font-size: 10px;
        }

        h5 {
            color: gold;
        }
    </style>
    <main style="margin-top: 65px">
        <div class="container">
            <br />
            <div class="row">
                <h5>Online Exam</h5>
                <div class="col-md-8"></div>
                <div class="col-md-2">
                    <asp:Button ID="btnonlineexamlist" runat="server" Text="online Exam list" Height="28px" Font-Size="10px" CssClass="form-control" />
                </div>
                <div class="col-md-2">
                    <asp:Button ID="btnaddonlineexam" runat="server" Text="Add Online Exam" CssClass="form-control" Height="28px" Font-Size="10px" />
                </div>
            </div>

            <hr />
            <br />
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblbranch" runat="server" Text="Branch:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px" color="yellow">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>Test</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lbltitle" runat="server" Text="Title:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txttitle" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px" ></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblclass" runat="server" Text="Class:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>Test</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblsection" runat="server" Text="Section:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtsection" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-4">
                    <asp:CheckBox ID="CheckBox1" Text="Select All" runat="server" Height="25px" Width="350px" Font-Size="10px"  />
                </div>
            </div>
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblsubject" runat="server" Text="Subject:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtsubject" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblstartdate" runat="server" Text="Start-Date:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtstartdate" runat="server" TextMode="Date" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblenddate" runat="server" Text="End-Date:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtenddate" runat="server" TextMode="Date" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblstarttime" runat="server" Text="Start-Time:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtstarttime" runat="server"  CssClass="form-control" TextMode="Time" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div><br />
                   <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblendtime" runat="server" Text="End-Time:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="endtime" runat="server" CssClass="form-control" TextMode="Time" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblduration" runat="server" Text="Duration:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtduration" runat="server" CssClass="form-control"  Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
                        <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lbllimitsofparticipation" runat="server" Text="Limits Of Participation:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtparticipation" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblmarktype" runat="server" Text="Mark Type:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>Percent</asp:ListItem>
                        <asp:ListItem>Fixed</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblpassingmark" runat="server" Text="Passing Mark:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtpassingmark" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
             <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblinstructions" runat="server" Text="Instructions:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <textarea id="TextArea1" cols="50" rows="2" class="form-control"></textarea>
                </div>
            </div>
            <br />
                   <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblexamtype" runat="server" Text="Exam Type:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>Free</asp:ListItem>
                        <asp:ListItem>Paid</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <br />
                   <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblquestiontype" runat="server" Text="Question Type:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:DropDownList ID="DropDownList5" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>Fixed</asp:ListItem>
                        <asp:ListItem>Random</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <br />
                   <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblresultpublish" runat="server" Text="Result Publish:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:DropDownList ID="DropDownList6" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>Automatic/immediate</asp:ListItem>
                        <asp:ListItem>manually</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <br />







            <hr />
            <div class="row">
                <div class="col-md-6"></div>
                <div class="col-md-3">
                    <asp:Button ID="btnsave" runat="server" Text="Save" CssClass="form-control" Height="25px" Width="100px" Font-Size="10px" />
                </div>
            </div>
        </div>
    </main>
</asp:Content>
