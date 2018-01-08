using System.Web.Optimization;

namespace NewsSystem
{
    public class BundleConfig
    {
        // For more information on Bundling, visit https://go.microsoft.com/fwlink/?LinkID=303951
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                "~/Scripts/modernizr-*"));

            bundles.Add(new StyleBundle("~/bundles/site").Include(
                "~/Styles/bootstrap.min.css",
                "~/Styles/Site.css"));
        }
    }
}