using Nhom4.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nhom4
{
    public partial class Dangki : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_dn_Click(object sender, EventArgs e)
        {

                DBCramming _db = new DBCramming();
                User a = new User();
                _Profile b = new _Profile();
                b.addProfile();
                a.UserID = tk_btn.Text;
                a.pass = mk_btn.Text;
                a.ProfileID = b._Profile1.ProfileID;
                if (a.pass.ToString() == remk_btn.Text.ToString())
                {
                    _db.Users.Add(a);
                    int res = _db.SaveChanges();
                    if (res > 0)
                    {

                        Response.Redirect("Dangnhap.aspx");

                    }
                    else
                    {

                        Response.Write("Try Again!!!");

                    }
                }
                else
                {
                    Response.Write("Mật Khẩu Không Khớp. Vui Lòng Thử Lại");
                }
        }
    }

}