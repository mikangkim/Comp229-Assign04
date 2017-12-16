using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Hosting;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Comp229_Assign04
{
    public partial class Update : System.Web.UI.Page
    {
        private models.StatsLists statsLists;

        protected string vName;
        protected string vFaction;
        Global update = new Global();
        protected void Page_Load(object sender, EventArgs e)
        {
            var vName = Request.QueryString["name"];
            var vFaction = Request.QueryString["faction"];

            if (name != null && faction != null)
            {
                statsLists = Global.models.FirstOrDefault(tModel => tModel.name == vName && tModel.faction == vFaction);
                pickedModels();
            }
            else
            {
                Response.Redirect("Default.aspx");
            }
        }
        private void pickedModels()
        {

            name.Text = statsLists.name;
            faction.Text = statsLists.faction;
            rank.Text = statsLists.rank.ToString();
            _base.Text = statsLists._base.ToString();
            size.Text = statsLists.size.ToString();
            deployment.Text = statsLists.deploymentZone;
            traitsrep.DataSource = statsLists.traits;
            traitsrep.DataBind();
            typerep.DataSource = statsLists.defenseChart;
            typerep.DataBind();
            mobility.Text = statsLists.mobility.ToString();
            willpower.Text = statsLists.willpower.ToString();
            resiliance.Text = statsLists.resiliance.ToString();
            wounds.Text = statsLists.wounds.ToString();


        }

        protected void updatechanges_Click(object sender, EventArgs e)
        {

            statsLists.name = Convert.ToString(name.Text);
            statsLists.faction = Convert.ToString(faction.Text);
            statsLists.rank = Convert.ToInt32(rank.Text);
            statsLists._base = Convert.ToInt32(_base.Text);
            statsLists.size = Convert.ToInt32(size.Text);
            statsLists.deploymentZone = Convert.ToString(deployment.Text);
            statsLists.mobility = Convert.ToInt32(mobility.Text);
            statsLists.willpower = Convert.ToInt32(willpower.Text);
            statsLists.resiliance = Convert.ToInt32(resiliance.Text);
            statsLists.wounds = Convert.ToInt32(wounds.Text);



            using (StreamWriter writer = File.CreateText(HostingEnvironment.MapPath("~/updatedmodels.json")))
            {

                writer.WriteLine(JsonConvert.SerializeObject(statsLists));
            }

            Response.Redirect("~/Default.aspx");
        }


    }
}