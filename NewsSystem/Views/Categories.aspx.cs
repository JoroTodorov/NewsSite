using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.ModelBinding;
using NewsSystem.Models;
using NewsSystem.Services;
using Ninject;

namespace NewsSystem.Views
{
    public partial class Categories : System.Web.UI.Page
    {
        [Inject]
        public ICategoriesService CategoriesService { get; set; }

        public IQueryable<Category> GetCategories()
        {
            return this.CategoriesService.GetCategories(c => c != null);
        }

        public void AddCategory([Form] string categoryName)
        {
            this.CategoriesService.AddCategory(categoryName);
        }

        public void DeleteCategory(int categoryId = 0)
        {
            this.CategoriesService.DeleteCategory(categoryId);
        }

        public void ChangeCategoryName(int categoryId = 0)
        {
            var item = new NewsSystem.Models.Category();
            TryUpdateModel(item);
            if (ModelState.IsValid)
            {
                // Save changes here

            }
        }
    }
}