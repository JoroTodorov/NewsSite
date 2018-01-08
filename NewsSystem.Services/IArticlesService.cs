using NewsSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NewsSystem.Services
{
    public interface IArticlesService
    {
        IEnumerable<Article> GetPopularArticles(int count);


        IEnumerable<Category> GetCategories();
    }
}
