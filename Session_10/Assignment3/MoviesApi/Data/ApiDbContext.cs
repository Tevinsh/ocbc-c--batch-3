using Microsoft.EntityFrameworkCore;
using MoviesApi.Models;

namespace MoviesApi.Data
{
    public class ApiDbContext : DbContext
    {
          public ApiDbContext(DbContextOptions<ApiDbContext> options) : base(options)
          {
            
          }   
          public virtual DbSet<MovieData> Movies{get;set;}  
    }
}