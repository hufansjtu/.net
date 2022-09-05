<%@ Page Language="C#" AutoEventWireup="true" CodeFile="top.aspx.cs" Inherits="top" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link type="text/css" href="tb.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 32px;
        }
    </style>
</head>
<body style="margin:0 ">
    <form id="form1" runat="server">
        <div>
            <table style="width:100%">
                <tr>
                    <th></th>
                </tr>
                <tr>
                    <th><span style="font:normal 30px sans-serif;">工业互联网系统</span></th>
                </tr>
                <tr>
                    <th style="padding-right:20px;text-align:right">
                        <%--<asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>--%>
                        <a target="_parent" href="login.aspx">退出</a>
                    </th>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
