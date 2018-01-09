using NewsSystem.Models;
using NewsSystem.Services;
using Ninject;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewsSystem.Views
{
    public partial class News : System.Web.UI.Page
    {
        [Inject]
        public IArticlesService Service { get; set; }

        public IEnumerable<Article> GetTopArticles()
        {
            var articles = this.Service.GetPopularArticles(3).ToArray();

            return articles;
        }

        public IEnumerable<Category> GetCategories()
        {
            var categories = this.Service.GetCategories();

            return categories;
        }
    }
}