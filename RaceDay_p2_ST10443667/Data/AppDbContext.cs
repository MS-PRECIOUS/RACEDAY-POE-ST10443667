using Microsoft.EntityFrameworkCore;
using RaceDay_p2_ST10443667.models;


namespace RaceDay_p2_ST10443667.Data;

public class AppDbContext : DbContext
{
    public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)
    {
    }

    public DbSet<User> Users { get; set; }
    public DbSet<Event> Events { get; set; }
    public DbSet<Category> Categories { get; set; }
    public DbSet<Enrolment> Enrolments { get; set; }
    public DbSet<Results> Results { get; set; } = null!;
    public DbSet<EventImage> EventImages { get; set; }
}
