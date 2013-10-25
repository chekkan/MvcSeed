using Microsoft.AspNet.Identity.EntityFramework;
using System.Data.Entity.ModelConfiguration;

namespace $rootnamespace$.Data.Configurations
{
    public class IdentityUserClaimConfiguration : EntityTypeConfiguration<IdentityUserClaim>
    {
        public IdentityUserClaimConfiguration()
        {
            this.Map(p => p.ToTable("AspNetUserClaims"));
        }
    }
}