using Nhom4.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Web;

namespace Nhom4
{
    public class _Profile
    {
        public Profile _Profile1 = new Profile();
        public void addProfile (string _Hoten,DateTime _Ngaysinh,string _Diachi,string _Email, int _Reputation)
        {
            DBCramming _db = new DBCramming();
            int a = _db.Database.SqlQuery<int>("Select TOP 1 ProfileID FROM Profiles order by ProfileID DESC").FirstOrDefault();
            _Profile1.ProfileID = ++a;
            _Profile1.Hoten = _Hoten;
            _Profile1.NgaySinh = _Ngaysinh;
            _Profile1.DiaChi = _Diachi;
            _Profile1.Email = _Email;
            _Profile1.Reputation = _Reputation;
            _db.Profiles.Add(_Profile1);
            int c = _db.SaveChanges();
        }
        public void addProfile()
        {
            DBCramming _db = new DBCramming();
            int a = _db.Database.SqlQuery<int>("Select TOP 1 ProfileID FROM Profiles order by ProfileID DESC").FirstOrDefault();
            
            _Profile1.ProfileID = ++a;
            _db.Profiles.Add(_Profile1);
            int c = _db.SaveChanges();
        }
    }
}