using Nhom4.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nhom4.Form
{
    public partial class Question : System.Web.UI.Page
    {
        Model.DBCramming db = new Model.DBCramming();
        protected void Page_Load(object sender, EventArgs e)
        {
            var tag = from q in db.Questions
                      join qt in db.QuestionTags on q.QuestionID equals qt.QuestionID
                      join t in db.Tags on qt.TagID equals t.TagID
                      select new Model.tagname
                      {
                          Id = q.QuestionID,
                          Tagname = t.TagName
                      };


            var result = from q in db.Questions
                         join u in db.Users on q.UserID equals u.UserID
                         join p in db.Profiles on u.ProfileID equals p.ProfileID
                         join a in db.Answers on q.QuestionID equals a.QuestionID into repliescount
                         select new Model.QuestionForm
                         {
                             qid = q.QuestionID,
                             userid = u.UserID,
                             Name = p.Hoten,
                             Title = q.Title,
                             viewcount = q.viewcount,
                             Replies = repliescount.Count(),
                             Posttime = q.Posttime,
                             Tag = tag.Where(f => f.Id == q.QuestionID).OrderBy(h => h.Tagname).Select(g => g.Tagname).Skip(0).FirstOrDefault(),
                             Tag1 = tag.Where(f => f.Id == q.QuestionID).OrderBy(h => h.Tagname).Select(g => g.Tagname).Skip(1).FirstOrDefault(),
                             Tag2 = tag.Where(f => f.Id == q.QuestionID).OrderBy(h => h.Tagname).Select(g => g.Tagname).Skip(2).FirstOrDefault()
                         };
            gv_question.DataSource = result.ToList();
            gv_question.DataBind();
        }
    }
}