using System;  
using System.Collections.Generic;  
using System.Linq;  
using System.Threading.Tasks; 
using Microsoft.EntityFrameworkCore;
using TodoAppWithModelsMysql.Models;

namespace TodoAppWithModelsMysql.Data
{
        public class ApiDbContext : DbContext
    {
        

        public ApiDbContext(DbContextOptions<ApiDbContext> options) : base(options)
        {
            
        }
        public virtual DbSet<ItemData> Items {get;set;}
    }
}