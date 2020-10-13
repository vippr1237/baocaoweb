//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Nhom4.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Answer
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Answer()
        {
            this.AnswerLikeds = new HashSet<AnswerLiked>();
        }
    
        public int AnswerID { get; set; }
        public string UserID { get; set; }
        public int QuestionID { get; set; }
        public string Body { get; set; }
        public Nullable<int> Likes { get; set; }
        public Nullable<System.DateTime> Posttime { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AnswerLiked> AnswerLikeds { get; set; }
        public virtual Question Question { get; set; }
        public virtual User User { get; set; }
    }
}
