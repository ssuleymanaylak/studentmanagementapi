using Microsoft.EntityFrameworkCore;
using StudentManagementAPI.Models;

namespace StudentManagementAPI.DatabaseConnection
{
    public class ApplicationDbContext :DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options):base(options)
        {
            
        }

        public DbSet<Student> Students { get; set; }

        public DbSet<Course> Courses { get; set; }
    }
}
