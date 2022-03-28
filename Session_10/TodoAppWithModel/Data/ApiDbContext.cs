using Microsoft.EntityFrameworkCore;
using TodoAppWithModel.Models;


namespace TodoAppWithModel.Data
{
    public class ApiDbContext : DbContext
    {
        public DbSet<ItemData> Items {get;set;}

        public ApiDbContext(DbContextOptions<ApiDbContext> options) : base(options)
        {

        }
    }
}