using Microsoft.AspNet.Identity.EntityFramework;
using System.Data.Entity.ModelConfiguration;

namespace $rootnamespace$.Data.Configurations
{
    public class IdentityRoleConfiguration : EntityTypeConfiguration<IdentityRole>
    {
        public IdentityRoleConfiguration()
        {
            this.Map(p => p.ToTable("AspNetRoles"));
        }
    }
}