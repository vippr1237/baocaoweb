using Nhom4.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nhom4.Form
{
    public partial class Xephang : System.Web.UI.Page
    {
        DBCramming db = new DBCramming();
        protected void Page_Load(object sender, EventArgs e)
        {

            var result = from p in db.Profiles
                         orderby p.Reputation
                         select new
                         {
                             name = p.Hoten,
                             diem = p.Reputation
                         };
            gv_xh.DataSource = result.ToList().Take(5);
            gv_xh.DataBind();
        }
    }
}