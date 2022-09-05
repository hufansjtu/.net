<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhanghu.aspx.cs" Inherits="zhanghu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <link type="text/css" href="tb.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <span>表具报警</span>
            <hr/>
            <table>
                <tr>
                    <td>表具编号：</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" Width="160px" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
                        <%--<asp:DropDownList ID="DropDownList1" runat="server" 
                    AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" DataSourceID="SqlDataSource2">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                </asp:DropDownList>

                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DWIOTConnectionString %>" SelectCommand="SELECT [equipment_code] FROM [te_ems_datalake_eqp]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>--%>
                        <asp:HiddenField ID="HiddenField1" runat="server" />
                        <asp:TextBox ID="TextBox1" runat="server"  OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>表具类型：</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>报警时间：</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>通知用户：</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>上限值：</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>下限值：</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="保存" CssClass="button1" OnClick="Button1_Click" />
                        &nbsp;
                        <asp:Button ID="Button2" runat="server" Text="取消" CssClass="button2" OnClick="Button2_Click" />
                    </td>
                </tr>
            </table>
            <hr/>
            <asp:GridView ID="GridView1" runat="server" Width="100%" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" OnRowDeleting="GridView1_RowDeleting">
                <Columns>
                    <asp:ButtonField CommandName="select" HeaderText="修改" Text="修改" />
                    <asp:ButtonField CommandName="delete" HeaderText="删除" Text="删除" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
