using Microsoft.AspNet.Identity.EntityFramework;
using System.Data.Entity.ModelConfiguration;
using $rootnamespace$.Models;

namespace $rootnamespace$.Data.Configurations
{
    public class IdentityUserConfiguration : EntityTypeConfiguration<IdentityUser>
    {
        public IdentityUserConfiguration()
        {
            this.Map(p => p.ToTable("AspNetUsers"));
        }
    }
}
