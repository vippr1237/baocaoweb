using Nhom4.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nhom4.Form
{
    public partial class QuestionDetail : System.Web.UI.Page
    {
        Model.DBCramming db = new Model.DBCramming();
        public string title;
        public string Body;
        public string Name;
        public Nullable<System.DateTime> Posttime;
        public Nullable<int> Likes;
        public Nullable<int> Replies;
        public string Tag;
        public string Tag1;
        public string Tag2;

        protected void Page_Load(object sender, EventArgs e)
        {

            loadData();
           
        }
        protected void Post_Answer(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("Dangnhap.aspx");
            }
            else
            {
                int qid = Int32.Parse(Request.QueryString["qid"]);
                DBCramming db = new DBCramming();
                Answer new_ans = new Answer();
                var new_id = from a in db.Answers
                             select a.AnswerID;
                
                if (ansbody.Text == "")
                {
                    valid_lb.Text = "Nội dung không được để trống";
                }
                else
                {
                    new_ans.AnswerID = new_id.Max() + 1;
                    new_ans.Body = ansbody.Text;
                    new_ans.Likes = 0;
                    new_ans.Posttime = DateTime.Now;
                    new_ans.QuestionID = qid;
                    new_ans.UserID = Session["id"].ToString();
                
                   
                

                    db.Answers.Add(new_ans);
                    int res = db.SaveChanges();
                    if (res == 0)
                    {
                        valid_lb.Text = "Đã có lỗi vui long thử lại";
                    }
                    else
                    {
                        ansbody.Text= string.Empty;
                        loadData();
                    }
                }
            }
        }

        private void loadData()
        {
            int qid = Int32.Parse(Request.QueryString["qid"]);

            var tag = from q in db.Questions
                      join qt in db.QuestionTags on q.QuestionID equals qt.QuestionID
                      join t in db.Tags on qt.TagID equals t.TagID
                      select new Model.tagname
                      {
                          Id = q.QuestionID,
                          Tagname = t.TagName
                      };
            var qa = from q in db.Questions
                     join u in db.Users on q.UserID equals u.UserID
                     join p in db.Profiles on u.ProfileID equals p.ProfileID
                     join a in db.Answers on q.QuestionID equals a.QuestionID into repliescount
                     where q.QuestionID == qid
                     select new Model.QuestionDetail
                     {
                         Title = q.Title,
                         Body = q.Body,
                         Name = p.Hoten,
                         Posttime = q.Posttime,
                         Likes = q.Likes,
                         Replies = repliescount.Count(),
                         Tag = tag.Where(f => f.Id == q.QuestionID).OrderBy(h => h.Tagname).Select(g => g.Tagname).Skip(0).FirstOrDefault(),
                         Tag1 = tag.Where(f => f.Id == q.QuestionID).OrderBy(h => h.Tagname).Select(g => g.Tagname).Skip(1).FirstOrDefault(),
                         Tag2 = tag.Where(f => f.Id == q.QuestionID).OrderBy(h => h.Tagname).Select(g => g.Tagname).Skip(2).FirstOrDefault()
                     };
            title = qa.FirstOrDefault().Title;
            Body = qa.FirstOrDefault().Body;
            Name = qa.FirstOrDefault().Name;
            Posttime = qa.FirstOrDefault().Posttime;
            Likes = qa.FirstOrDefault().Likes;
            Replies = qa.FirstOrDefault().Replies;
            Tag = qa.FirstOrDefault().Tag;
            Tag1 = qa.FirstOrDefault().Tag1;
            Tag2 = qa.FirstOrDefault().Tag2;

            var ans = from a in db.Answers
                      join u in db.Users on a.UserID equals u.UserID
                      join p in db.Profiles on u.ProfileID equals p.ProfileID
                      where a.QuestionID == qid
                      select new
                      {
                          ansid= a.AnswerID,
                          userid = u.UserID,
                          name = p.Hoten,
                          body = a.Body,
                          time = a.Posttime,
                          like = a.Likes,
                      };
            gvanswer.DataSource = ans.ToList();
            gvanswer.DataBind();
            
        }

     
    }
}