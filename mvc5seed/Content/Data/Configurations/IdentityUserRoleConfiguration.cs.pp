using Microsoft.AspNet.Identity.EntityFramework;
using System.Data.Entity.ModelConfiguration;

namespace $rootnamespace$.Data.Configurations
{
    public class IdentityUserRoleConfiguration : EntityTypeConfiguration<IdentityUserRole>
    {
        public IdentityUserRoleConfiguration()
        {
            this.Map(p => p.ToTable("AspNetUserRoles"));

            this.HasKey(p => new { p.UserId, p.RoleId });
        }
    }
}