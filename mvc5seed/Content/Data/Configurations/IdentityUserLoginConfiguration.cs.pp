using Microsoft.AspNet.Identity.EntityFramework;
using System.Data.Entity.ModelConfiguration;

namespace $rootnamespace$.Data.Configurations
{
    public class IdentityUserLoginConfiguration : EntityTypeConfiguration<IdentityUserLogin>
    {
        public IdentityUserLoginConfiguration()
        {
            this.Map(p => p.ToTable("AspNetUserLogins"));
            
            this.HasKey(p => new { p.UserId, p.LoginProvider, p.ProviderKey });
        }
    }
}