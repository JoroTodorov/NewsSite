using NewsSystem.Data;
using NewsSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Ninject;

namespace NewsSystem.Services
{
    public class ArticlesService : IArticlesService
    {
        [Inject]
        public IDbContext Db { get; set; }

        public IEnumerable<Article> GetPopularArticles(int count)
        {
            var articles = this.Db.Articles.OrderByDescending(a => a.Likes).Take(count);

            return articles;
        }

        public IEnumerable<Category> GetCategories()
        {
            return this.Db.Categories;
        }
    }
}
