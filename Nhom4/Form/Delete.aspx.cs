using Nhom4.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nhom4.Form
{
    public partial class Delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("Dangnhap.aspx");
            }
            else
            {
                string userid = Request.QueryString["id"];
                if (Session["id"].ToString() == userid)
                {
                    lb.Text = "Bạn có chắc chắn bạn muốn xóa";
                    btn_del.Visible = true;
           
                }
                else
                {
                    lb.Text = "Bạn không có quyền xóa";
                }
            }
        }

        protected void btn_del_Click(object sender, EventArgs e)
        {
            DBCramming db = new DBCramming();
            int ansid = Int32.Parse(Request.QueryString["ans"]);

            var answer = new Answer { AnswerID = ansid };
            db.Answers.Attach(answer);
            db.Answers.Remove(answer);
            db.SaveChanges();

            Response.Redirect("Question.aspx");
        }

        protected void btn_huy_Click(object sender, EventArgs e)
        {
            Response.Redirect("Question.aspx");
        }
    }
}
