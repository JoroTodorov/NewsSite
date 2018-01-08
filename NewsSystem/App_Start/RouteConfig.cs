using Microsoft.AspNet.FriendlyUrls;
using System.Web.Routing;

namespace NewsSystem
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.EnableFriendlyUrls();

            routes.MapPageRoute("News", "", "~/Views/News.aspx");

            routes.MapPageRoute("Articles", "articles", "~/Views/Articles.aspx");
            routes.MapPageRoute("ArticleDetails", "articles/details", "~/Views/ArticleDetails.aspx");

            routes.MapPageRoute("Categories", "categories", "~/Views/Categories.aspx");


            routes.MapPageRoute("Login", "login", "~/Views/Account/Login.aspx");
            routes.MapPageRoute("Register", "register", "~/Views/Account/Register.aspx");
        }
    }
}