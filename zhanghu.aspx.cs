using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
//using System.Data.SqlXml;
//using Microsoft.ApplicationBlocks.Data;

public partial class zhanghu : System.Web.UI.Page
{
    SQLHelper sqlhelper = new SQLHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        //第一次页面加载执行
        if (!Page.IsPostBack)
        {
            bindds();
        }
    }
    //查询数据
    private void bindds()
    {
        string sql = "select * from IOT_test.dbo.td_alert_config";
        DataSet ds = dbhelp.getds(sql);
        this.GridView1.DataSource = ds;
        try
        {
            this.GridView1.DataBind();
        }
        catch
        {
            Response.Redirect("http://localhost:50047");
        }
        //this.GridView1.DataBind();
    }

    //新增数据
    protected void Button1_Click(object sender, EventArgs e)
    {
        //string sql = "insert into IOT_test.dbo.td_alert_config(equipment_code,equipment_type,alert_time,notice_user,upper_limit,lower_limit) values('" + this.TextBox1.Text+ "','" + this.TextBox2.Text + "','" + this.TextBox3.Text + "','"+ this.TextBox4.Text + "','"+this.TextBox5.Text + "','"+ this.TextBox6.Text+"')";
        if(this.HiddenField1.Value != "")
        {
            //sql = "update td_alert_config set equipment_code='" + this.TextBox1.Text+ "',equipment_type='" + this.TextBox2.Text + "',alert_time='" + this.TextBox3.Text + "',notice_user='" + this.TextBox4.Text + "',upper_limit='" + this.TextBox5.Text + "',lower_limit='" + this.TextBox6.Text + "' where id ='" + this.HiddenField1.Value+"' ";
        }
        bool k = true;
            //dbhelp.savesql(sql);
        if (k)
        {
            dbhelp.alert("操作成功");
        }
        else
        {
            dbhelp.alert("操作失败");
        }
        Response.Redirect("zhanghu.aspx");

    }
    //取消功能
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("zhanghu.aspx");
    }

    //修改数据
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        this.Button1.Text = "修改";
        this.HiddenField1.Value = GridView1.Rows[e.NewSelectedIndex].Cells[2].Text;
        //this.TextBox1.Text = GridView1.Rows[e.NewSelectedIndex].Cells[3].Text;
        this.TextBox2.Text = GridView1.Rows[e.NewSelectedIndex].Cells[4].Text;
        this.TextBox3.Text = GridView1.Rows[e.NewSelectedIndex].Cells[5].Text;
        this.TextBox4.Text = GridView1.Rows[e.NewSelectedIndex].Cells[6].Text;
        this.TextBox5.Text = GridView1.Rows[e.NewSelectedIndex].Cells[7].Text;
        this.TextBox6.Text = GridView1.Rows[e.NewSelectedIndex].Cells[8].Text;
        //dbhelp.alert(GridView1.Rows[e.NewSelectedIndex].Cells[3].Text);
    }
    //删除数据
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string sql = "delete from IOT_test.dbo.td_alert_config where id='" + GridView1.Rows[e.RowIndex].Cells[2].Text + "'";
        bool k = dbhelp.savesql(sql);
        if (k)
        {
            dbhelp.alert("操作成功");
        }
        else
        {
            dbhelp.alert("操作失败");
        }
        Response.Redirect("zhanghu.aspx");
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //string sql = "select equipment_id,equipment_code from DWIOT.iot_ems_analytics.te_ems_datalake_eqp";
        //DataTable tabs = dbhelp.getdt(sql);
        ////DataSet dt = dbhelp.getds(sql);
        ////this.GridView1.DataSource = dt;
        //if(tabs.Rows.Count > 0)
        //{
        //    this.TextBox1.DataSource = tabs;
        //    this.TextBox1.DataValueField = "equipment_id";
        //    this.TextBox1.DataTextField = "equipment_code";
        //    this.TextBox1.DataBind();

        //}
        if (!IsPostBack)
        {
            string sql = "select equipment_id,equipment_code from DWIOT.iot_ems_analytics.te_ems_datalake_eqp";
            DataTable tabs = dbhelp.getdt(sql);
            //DataSet dt = dbhelp.getds(sql);
            //this.GridView1.DataSource = dt;
            if (tabs.Rows.Count > 0)
            {
                this.DropDownList1.DataSource = tabs;
                this.DropDownList1.DataValueField = "equipment_id";
                this.DropDownList1.DataTextField = "equipment_code";
                this.DropDownList1.DataBind();
                this.DropDownList1.Items.Insert(0, new ListItem("全部", "0"));
            }
         
        }
    }
}