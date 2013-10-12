using System.Data.Entity.ModelConfiguration;
using $rootnamespace$.Models;

namespace $rootnamespace$.Data.Configurations
{
    public class UserConfiguration : EntityTypeConfiguration<User>
    {
        public UserConfiguration()
        {
            this.Property(p => p.Id).HasColumnOrder(0);

            this.Property(p => p.UserName)
                .IsRequired().HasMaxLength(200);

            this.HasMany(a => a.Roles)
                .WithMany(b => b.Users).Map(m =>
                {
                    m.MapLeftKey("UserId");
                    m.MapRightKey("RoleId");
                    m.ToTable("webpages_UsersInRoles");
                });
        }
    }
}
