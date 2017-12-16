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

            if (modelName != null && modelFaction != null)
            {
                statsLists = Global.models.FirstOrDefault(tModel => tModel.name == vName && tModel.faction == vFaction);
                selectedmodel();
            }
            else
            {
                Response.Redirect("Default.aspx");
            }
        }
        private void selectedmodel()
        {

            modelName.Text = statsLists.name;
            modelFaction.Text = statsLists.faction;
            modelRank.Text = statsLists.rank.ToString();
            modelBase.Text = statsLists._base.ToString();
            modelSize.Text = statsLists.size.ToString();
            modelDeploymentZone.Text = statsLists.deploymentZone;
            traitsrep.DataSource = statsLists.traits;
            traitsrep.DataBind();
            typerep.DataSource = statsLists.defenseChart;
            typerep.DataBind();
            modelMobility.Text = statsLists.mobility.ToString();
            modelWillpower.Text = statsLists.willpower.ToString();
            modelResiliance.Text = statsLists.resiliance.ToString();
            modelWounds.Text = statsLists.wounds.ToString();


        }

        protected void updatechanges_Click(object sender, EventArgs e)
        {

            statsLists.name = Convert.ToString(modelName.Text);
            statsLists.faction = Convert.ToString(modelFaction.Text);
            statsLists.rank = Convert.ToInt32(modelRank.Text);
            statsLists._base = Convert.ToInt32(modelBase.Text);
            statsLists.size = Convert.ToInt32(modelSize.Text);
            statsLists.deploymentZone = Convert.ToString(modelDeploymentZone.Text);
            statsLists.mobility = Convert.ToInt32(modelMobility.Text);
            statsLists.willpower = Convert.ToInt32(modelWillpower.Text);
            statsLists.resiliance = Convert.ToInt32(modelResiliance.Text);
            statsLists.wounds = Convert.ToInt32(modelWounds.Text);



            using (StreamWriter writer = File.CreateText(HostingEnvironment.MapPath("~/updateAssign04.json")))
            {

                writer.WriteLine(JsonConvert.SerializeObject(statsLists));
            }

            Response.Redirect("~/Default.aspx");
        }


    }
}