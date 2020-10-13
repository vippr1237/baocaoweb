using System;

namespace Nhom4.Model
{
    internal class QuestionForm
    {
        public int qid { get; set; }
        public string userid { get; set; }
        public string Name { get; set; }
        public string Title { get; set; }
        public int? viewcount { get; set; }
        public int Replies { get; set; }
        public DateTime? Posttime { get; set; }
        public string Tag { get; set; }
        public string Tag1 { get; set; }
        public string Tag2 { get; set; }
    }
}