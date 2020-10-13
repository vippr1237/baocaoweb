using Nhom4.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nhom4.Form
{
    public partial class Dangbai : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("Dangnhap.aspx");
            }
          
        }

        protected void post_Btn_Click(object sender, EventArgs e)
        {
            DBCramming db = new DBCramming();
            Model.Question _q = new Model.Question();
            
            var id = from q in db.Questions
                     select q.QuestionID;
            string[] tags = tag.Text.Split(' ');
            if (tags.Length <= 3)
            {
                if (tag.Text == "")
                {
                    valid.Text = "Vui lòng nhập tối thiểu 1 tag";
                }
                else
                {

                    foreach (string t in tags)
                    {
                        var check = from tg in db.Tags
                                    where tg.TagName == t
                                    select tg.TagID;
                        if (check.Count() < 1)
                        {
                            var new_id = from tg in db.Tags

                                         select tg.TagID;
                            Tag new_tag = new Tag();
                            new_tag.TagID = new_id.Max() + 1;
                            new_tag.TagName = t;
                            db.Tags.Add(new_tag);
                            db.SaveChanges();
                        }
                    }
                    if (title.Text == "")
                    {
                        valid.Text = "Tiêu đề không được rỗng";
                    }
                    else
                    {
                        if (body.Text == "")
                        {
                            valid.Text = "Nội dung không được rỗng";
                        }
                        else
                        {
                            _q.UserID = Session["id"].ToString();
                            _q.QuestionID = id.Max() + 1;
                            _q.Title = title.Text;
                            _q.Body = body.Text;
                            _q.viewcount = 0;
                            _q.Likes = 0;
                            _q.Posttime = DateTime.Now;

                            db.Questions.Add(_q);
                            int res = db.SaveChanges();

                            foreach (string t in tags)
                            {
                                QuestionTag new_qt = new QuestionTag();
                                var new_id = from qt in db.QuestionTags
                                             select qt.QTID;
                                var tag_id = from b in db.Tags
                                             where b.TagName == t
                                             select b.TagID;
                                new_qt.QTID = new_id.Max() + 1;
                                new_qt.TagID = tag_id.FirstOrDefault();
                                new_qt.QuestionID = _q.QuestionID;

                                db.QuestionTags.Add(new_qt);
                                db.SaveChanges();
                            }
                            if (res > 0)
                            {
                                Response.Redirect("Question.aspx");
                            }
                            else
                            {
                                valid.Text = "Đã có lỗi xảy ra vui lòng thử lại";
                            }

                        }
                    }
                }
            }
            else
            {
                valid.Text = "Vui lòng nhập ít hơn 3 tag";
            }
            
        }
    }
}