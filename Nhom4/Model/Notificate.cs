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
    
    public partial class Notificate
    {
        public int NotiID { get; set; }
        public string UserID { get; set; }
        public string content { get; set; }
    
        public virtual User User { get; set; }
    }
}
