using System;
using $rootnamespace$.Models;

namespace $rootnamespace$.Data
{
    public interface IApplicationUnit : IDisposable
    {
        IRepository<PostComment> PostComments { get; }

        IRepository<Post> Posts { get; }


        IRepository<User> Users { get; }
        
        void SaveChanges();
    }
}
