using Microsoft.EntityFrameworkCore;

namespace UnitTest_Mock.Models
{
        public class ApiDbContext : DbContext
        {
            public DbSet<EmployeeData> Employees { get; set; }

            public ApiDbContext(DbContextOptions<ApiDbContext> options) : base(options)
            {

            }
        }
}
