using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Hosting;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Script.Serialization;
using System.Web.Security;
using System.Web.SessionState;

namespace Comp229_Assign04
{
    public class Global : HttpApplication
    {
        public static List<models.StatsLists> models;
        void Application_Start(object sender, EventArgs e)
        {

            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            generateList();

        }

        private void generateList()
        {

            using (StreamReader reader = new StreamReader(HostingEnvironment.MapPath("~/Assign04.json")))
            {
                var jsonstring = reader.ReadToEnd();
                models = JsonConvert.DeserializeObject<List<models.StatsLists>>(jsonstring);
            }


        }

    }
}