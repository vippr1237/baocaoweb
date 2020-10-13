using Nhom4.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nhom4.Form
{
    public partial class Dangnhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_dn_Click(object sender, EventArgs e)
        {
            DBCramming _db = new DBCramming();
            if (_db.Users.Where(b => b.UserID.Equals(tk_btn.Text)).ToList().Count() > 0)
            {
                if (_db.Users.Where(b => b.pass.Equals(mk_btn.Text)).ToList().Count() > 0)
                {
                    Session["id"] = tk_btn.Text;
                    Response.Redirect("Trang_ca_nhan.aspx");
                    Session.RemoveAll();
                }
                else
                {
                    Response.Write("Sai mat khau");
                }
            }
            else
            {
                Response.Write("Tai khoan khong ton tai");
            }
        }
    }
}