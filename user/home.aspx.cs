using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Windows.Markup;
using System.Net;
using System.Web.UI.HtmlControls;

public partial class user_home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String uname = Session["uname"].ToString();
        Class1 obj = new Class1();
        obj.getconnection();
        SqlCommand cmd2 = new SqlCommand("sp_prduct", obj.con);
        cmd2.CommandType = CommandType.StoredProcedure;
        cmd2.Parameters.Add("@flag", 1);
        int c = 0;
        DataTable dt = new DataTable();
        SqlDataAdapter dtadt = new SqlDataAdapter(cmd2);
        dtadt.Fill(dt);
         for (int i = 0; i < dt.Rows.Count; i++)
        {

            if (c < 5)
            {
                c++;
            }

            else
            {
                Panel1.Controls.Add(new LiteralControl("</td></tr>"));
                Panel1.Controls.Add(new LiteralControl("<tr>"));
                c = 0;
            }
             HtmlImage img = new HtmlImage();
            img.Attributes.Add("class", "");
            img.Style.Add(HtmlTextWriterStyle.Display, "block");
            img.Style.Add(HtmlTextWriterStyle.Height, "150px");
            img.Style.Add(HtmlTextWriterStyle.Width, "200px");
            img.Src = dt.Rows[i][6].ToString();
            Panel1.Controls.Add(new LiteralControl("<td><table runat=server>"));
            Panel1.Controls.Add(new LiteralControl("<tr><td>"));
            //Panel1.Controls.Add(new LiteralControl("<a href=booknow.aspx?id=" + dt.Rows[i][6].ToString() + ">"));
            Panel1.Controls.Add(img);
            Panel1.Controls.Add(new LiteralControl("</a>"));
            Panel1.Controls.Add(new LiteralControl("</td></tr>"));
            Panel1.Controls.Add(new LiteralControl("<tr><td align='center'>" + dt.Rows[i][1].ToString()));
            Panel1.Controls.Add(new LiteralControl("</td></tr>"));
            Panel1.Controls.Add(new LiteralControl("</table>"));
            Panel1.Controls.Add(new LiteralControl("</td>"));

        }
        Panel1.Controls.Add(new LiteralControl("</tr>"));
        Panel1.Controls.Add(new LiteralControl("</table>"));

    }
}
