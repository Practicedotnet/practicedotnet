<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loginpage.aspx.cs" Inherits="school.Loginpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
       
            <style>
        /* Custom styles */
        .login-container {
            max-width: 400px;
            margin: auto;
            padding: 40px;
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent background */
            border-radius: 10px;
            box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.2);
        }

                body {
                    /*background-image: url(images\pexels-tima-miroshnichenko-5428267.jpg);*/
                    background-size: cover;
                    background-position: center;
                    height: 100vh;
                    display: flex;
                    justify-content: center;
                    align-items: center;
                }
                form {
                    background-image: url(F:\haritha\sclm\school\images\welcome.jpg)
                }
    </style>
    </head>
    <body>
    
    <form id="form1" runat="server">
        <div style="background-image:url(images/pexels-tima-miroshnichenko-5428267.jpg)">
       <div class="login-container">
        <h2 class="text-center mb-4">Login</h2>
              <div class="form-group">
                  <asp:Label ID="LblUsername" runat="server" Text="UserName"></asp:Label>
                  <asp:TextBox ID="TxtUname" runat="server" CssClass="form-control" Placeholder="Enter Username"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter UserName" ControlToValidate="TxtUname" Enabled="False" ForeColor="#FF5050"></asp:RequiredFieldValidator> 

              </div>
            <div class="form-group">
                <asp:Label ID="Lblpassword" runat="server" Text="Password"></asp:Label> 
                <asp:TextBox ID="Txtpassword" runat="server" CssClass="form-control" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Password " ControlToValidate="Txtpassword" ForeColor="#FF5050"></asp:RequiredFieldValidator></div>
        <asp:Button ID="Submit" runat="server" Text="Login" class="btn btn-primary btn-block" OnClick="Submit_Click"/>
            <br />
            <div class="text-center mt-3">
                <a href="forgotpassword.aspx">Forgot Password?</a> | <a href="register.aspx">Register</a>
              </div>
        
    </div>
   
    </div>
       
    </form>
</body>
</html>
