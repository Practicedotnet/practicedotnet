<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="school.WebForm5" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>I Love You, Mahesh</title>
<style>
  body {
    background-color: #f7f7f7;
    font-family: Arial, sans-serif;
    text-align: center;
    padding-top: 50px;
  }
  .heart {
    color: #ff4d4d;
    font-size: 4rem;
    animation: heartbeat 1s infinite;
  }
  @keyframes heartbeat {
    0% {
      transform: scale(1);
    }
    50% {
      transform: scale(1.2);
    }
    100% {
      transform: scale(1);
    }
  }
</style>
</head>
<body>
  <div class="heart">❤️</div>
  <h1>I love you, Mahesh!</h1>
</body>
</html>
