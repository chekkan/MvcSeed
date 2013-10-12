using System.Collections.Generic;

namespace $rootnamespace$.Models
{
    public class User
    {
        public int Id { get; set; }
        public string UserName { get; set; }

        public virtual ICollection<Role> Roles { get; set; }

        public User()
        {
            Roles = new List<Role>();
        }
    }
}
