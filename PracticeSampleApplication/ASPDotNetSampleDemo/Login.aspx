<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ASPDotNetSampleDemo.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/font-awesome.min.css" rel="stylesheet" />
</head>
<body>

    <div id="login-overlay" class="modal-dialog">   
        <div class="modal-content">
            <div class="modal-header">

                <h4 class="modal-title" id="myModalLabel">Login to PoorPragrammer.com</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-xs-6">
                        <div class="well">
                            <form id="loginForm" runat="server">
                                <div class="form-group">
                                    <label for="username" class="control-label">Username</label>
                                    <asp:TextBox runat="server" class="form-control" ID="username" value="" required="" title="Please enter you username" placeholder="example@gmail.com"></asp:TextBox>
                                    <%--<input type="text" class="form-control" id="username" name="username" value="" required="" title="Please enter you username" placeholder="example@gmail.com">--%>
                                    <span class="help-block"></span>
                                </div>
                                <div class="form-group">
                                    <label for="password" class="control-label">Password</label>
                                    <asp:TextBox runat="server" class="form-control" ID="password" value="" required="" title="Please enter your password"></asp:TextBox>
                                    <%--<input type="password" class="form-control" id="password" name="password" value="" required="" title="Please enter your password">--%>
                                    <span class="help-block"></span>
                                </div>
                                <div id="loginErrorMsg" class="alert alert-error hide">Wrong username or password</div>
                                <div class="checkbox" style="display: none">
                                    <label>
                                        <asp:CheckBox runat="server" ID="remember" />
                                        <%--<input type="checkbox" name="remember" id="remember">--%>
                                        Remember login
                                 
                                    </label>
                                    <p class="help-block">(if this is a private computer)</p>
                                </div>
                                <asp:Button runat="server" ID="btnLogin" Text="Login" class="btn btn-success btn-block" OnClick="btnLogin_Click" />
                                <button type="submit" class="btn btn-success btn-block" style="display:none">Login</button>
                                <a href="/forgot/" class="btn btn-default btn-block" style="display: none">Help to login</a>
                            </form>
                        </div>
                    </div>
                    <div class="col-xs-6">
                        <p class="lead">Register now for <span class="text-success">FREE</span></p>
                        <ul class="list-unstyled" style="line-height: 2">
                            <li><span class="fa fa-check text-success"></span>See all your problems</li>
                            <li><span class="fa fa-check text-success"></span>Fast learning</li>
                            <li><span class="fa fa-check text-success"></span>Save your time</li>
                            <li><span class="fa fa-check text-success"></span>Fast checkout</li>
                            <li><a href="/read-more/"><u>Read more</u></a></li>
                        </ul>
                        <p><a href="/new-customer/" class="btn btn-info btn-block">Yes please, register now!</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>


</body>
</html>
