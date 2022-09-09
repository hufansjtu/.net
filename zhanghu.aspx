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
                    <td>表具名称：</td>
                    <td>
                        <asp:DropDownList ID="TextBox7" Width="170px" runat="server" OnSelectedIndexChanged="Bind_equipment_code"  AutoPostBack="true"  DataSourceID="SqlDataSource2" DataTextField="equipment_name" DataValueField="equipment_name"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DWIOTConnectionString %>" SelectCommand="SELECT distinct equipment_name FROM iot_ems_analytics.td_ems_equipment where dw_is_active = '1' "></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>表具编号：</td>
                    <td >
                        <asp:TextBox ID="TextBox1" runat="server" ReadOnly="true"></asp:TextBox>
                        <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DWIOTConnectionString %>" SelectCommand="SELECT distinct equipment_code FROM iot_ems_analytics.td_ems_equipment where dw_is_active = '1' "></asp:SqlDataSource>--%>
                        <asp:HiddenField ID="HiddenField1" runat="server" />
                       
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
