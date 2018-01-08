using Microsoft.AspNet.Identity.EntityFramework;
using NewsSystem.Data.Migrations;
using NewsSystem.Models;
using System;
using System.Data.Entity;

namespace NewsSystem.Data
{
    public class NewsSystemContext : IdentityDbContext<ApplicationUser>, IDbContext
    {
        public NewsSystemContext()
            : base("NewsSite")
        {
            Database.SetInitializer(new MigrateDatabaseToLatestVersion<NewsSystemContext, Configuration>());
        }

        public IDbSet<Article> Articles { get; set; }

        public IDbSet<Category> Categories { get; set; }

        public static NewsSystemContext Create()
        {
            return new NewsSystemContext();
        }
    }
}