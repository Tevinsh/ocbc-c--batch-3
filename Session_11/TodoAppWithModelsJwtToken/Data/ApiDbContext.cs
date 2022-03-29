using Microsoft.EntityFrameworkCore;
using TodoAppWithModelsJwtToken.Models;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;    


namespace TodoAppWithModelsJwtToken.Data
{
    public class ApiDbContext : IdentityDbContext
    {
        public virtual DbSet<ItemData> Items {get;set;}
        public virtual  DbSet<RefreshToken> RefreshTokens {get;set;}

        public ApiDbContext(DbContextOptions<ApiDbContext> options) : base(options)
        {

        }
    }
}