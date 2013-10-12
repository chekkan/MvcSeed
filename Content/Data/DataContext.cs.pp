using System.Configuration;
using System.Data.Entity;
using $rootnamespace$.Models;
using $rootnamespace$.Data.Configurations;
using System.Linq;
using System.Data;
using System;

namespace $rootnamespace$.Data
{
    public class DataContext : DbContext
    {
        public static string ConnectionStringName 
        {
            get
            {
                if (ConfigurationManager.AppSettings["ConnectionStringName"] != null)
                {
                    return ConfigurationManager.AppSettings["ConnectionStringName"].ToString();   
                }
                return "DefaultConnection";
            }
        }

        public DbSet<User> Users { get; set; }

        public DataContext() : base(DataContext.ConnectionStringName)
        { }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Configurations.Add(new UserConfiguration());

            // Add ASP.NET WebPages SimpleSecurity tables
            modelBuilder.Configurations.Add(new RoleConfiguration());
            modelBuilder.Configurations.Add(new OAuthMembershipConfiguration());
            modelBuilder.Configurations.Add(new MembershipConfiguration());
            // base.OnModelCreating(modelBuilder);
        }

        private void ApplyRules()
        {
            // Approach via @julielerman: http://bit.ly/123661P
            foreach (var entry in this.ChangeTracker.Entries()
                .Where(
                    e => e.Entity is IAuditInfo &&
                    (e.State == EntityState.Added) ||
                    (e.State == EntityState.Modified)))
            {
                IAuditInfo e = (IAuditInfo)entry.Entity;

                if (entry.State == EntityState.Added)
                {
                    e.CreatedOn = DateTime.Now;
                }

                e.ModifiedOn = DateTime.Now;
            }
        }

        public override int SaveChanges()
        {
            this.ApplyRules();
            return base.SaveChanges();
        }
    }
}
