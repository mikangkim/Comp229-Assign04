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

        public const string Assign04JsonFilePath = "~/Assign04.json";
        public const string UpdateAssign04JsonFilePath = "~/updateAssign04.json";

        void Application_Start(object sender, EventArgs e)
        {

            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            UpdateAssign04JsonFile();
            generateList();


        }

        public static void UpdateAssign04JsonFile()
        {
            using (StreamWriter streamWriter = File.CreateText(System.Web.Hosting.HostingEnvironment.MapPath(UpdateAssign04JsonFilePath)))
            {
                streamWriter.WriteLine(JsonConvert.SerializeObject(models));
            }
        }

        private void generateList()
        {

            using (StreamReader reader = new StreamReader(HostingEnvironment.MapPath(Assign04JsonFilePath)))
            {
                var jsonstring = reader.ReadToEnd();
                models = JsonConvert.DeserializeObject<List<models.StatsLists>>(jsonstring);
            }


        }

    }
}