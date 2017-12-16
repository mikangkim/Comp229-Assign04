using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Newtonsoft.Json;


namespace Comp229_Assign04
{
    public partial class Model : System.Web.UI.Page
    {
        private models.StatsLists statsLists;
        protected string vName;
        protected string vFaction;
        protected void Page_Load(object sender, EventArgs e)
        {
            var vName = Request.QueryString["name"];
            var vFaction = Request.QueryString["faction"];

            if (modelName != null && modelFaction != null)
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

            modelImg.ImageUrl = statsLists.imageUrl;
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

        protected void Update_Click(object sender, EventArgs e)
        {
            Save.Visible = true;
            Update.Visible = false;

            modelName.Enabled = true;
            modelFaction.Enabled = true;
            modelRank.Enabled = true;
        }
        private void updateModels()
        {
            statsLists.name = modelName.Text;
            statsLists.faction = modelFaction.Text;
            statsLists.rank = int.Parse(modelRank.Text);
        }
        protected void Save_Click(object sender, EventArgs e)
        {
            Save.Visible = false;
            Update.Visible = true;

            modelName.Enabled = false;
            modelFaction.Enabled = false;
            modelRank.Enabled = false;

            updateModels();

            Global.UpdateAssign04JsonFile();
        }
        protected void Delete_Click(object sender, EventArgs e)
        {
        
            Global.models.RemoveAll(tModel => tModel.name == vName && tModel.faction == vFaction);
            Response.Redirect("~/Default.aspx");
        }
    }
}