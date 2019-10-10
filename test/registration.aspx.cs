using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace test
{
    public partial class registration : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();

        public object TextArea1 { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString= "Data Source=(LocalDB)MSSQLLocalDB;AttachDbFilename=test.mdf;Integrated Security=True";
            con.Open();

            this.Button2.Attributes.Add("OnClick", "self.close()");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Write("<script language='javascript'> { self.close() }</script>");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into mydb" + "(name, department, description, premises, cost)values(@name, @department, @description, @premises, @cost)", con);
            cmd.Parameters.AddWithValue("@name", txtlabour.Text);
            cmd.Parameters.AddWithValue("@department", txtdepartment.Text);
            cmd.Parameters.AddWithValue("@description",txtdesc.Text);
            cmd.Parameters.AddWithValue("@premises",DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@cost",txtcost.Text);
            cmd.ExecuteNonQuery();
            Label1.Text = "Labour Inserted!";
        }
           

            /*   SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\DELL\Desktop\itech\test\test\App_Data\test.mdf;Integrated Security=True");*/
       
        }
    }
}