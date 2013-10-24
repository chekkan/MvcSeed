using System;
using $rootnamespace$.Models;

namespace $rootnamespace$.Data
{
    public interface IApplicationUnit : IDisposable
    {
        IRepository<User> Users { get; }
        
        void SaveChanges();
    }
}
