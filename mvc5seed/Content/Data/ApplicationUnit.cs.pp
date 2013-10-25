using System;
using $rootnamespace$.Models;

namespace $rootnamespace$.Data
{
    public class ApplicationUnit : IApplicationUnit
    {
        private DataContext _context = new DataContext();

        private IRepository<User> _users = null;

        public IRepository<User> Users
        {
            get
            {
                if (this._users == null)
                {
                    this._users = new GenericRepository<User>(this._context);
                }
                return this._users;
            }
        }

        public void SaveChanges()
        {
            this._context.SaveChanges();
        }

        public void Dispose()
        {
            if (this._context != null)
            {
                this._context.Dispose();
            }
        }
    }
}
