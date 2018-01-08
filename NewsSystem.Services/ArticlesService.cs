using NewsSystem.Data;
using NewsSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NewsSystem.Services
{
    public class ArticlesService : IArticlesService
    {
        private readonly IDbContext db;

        public ArticlesService(IDbContext db)
        {
            this.db = db;
        }

        public IEnumerable<Article> GetPopularArticles(int count)
        {
            var articles = this.db.Articles.OrderByDescending(a => a.Likes).Take(count);

            return articles;
        }

        public IEnumerable<Category> GetCategories()
        {
            return this.db.Categories;
        }
    }
}
