using System;

namespace Nhom4.Model
{
    internal class QuestionDetail
    {
        public string Title { get; set; }
        public string Body { get; set; }
        public string Name { get; set; }
        public DateTime? Posttime { get; set; }
        public int? Likes { get; set; }
        public int Replies { get; set; }
        public string Tag { get; set; }
        public string Tag1 { get; set; }
        public string Tag2 { get; set; }
    }
}