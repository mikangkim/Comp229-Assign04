using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


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

            if (name != null && faction != null)
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

            modelimg.ImageUrl = statsLists.imageUrl;
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

        protected void Update_Click(object sender, EventArgs e)
        {
            string url = string.Format("~/Update.aspx?name={0}&faction={1}", vName, vFaction);
            Response.Redirect(url);
        }
        protected void Delete_Click(object sender, EventArgs e)
        {
            //remove based on vname and vfaction          
            Global.models.RemoveAll(tModel => tModel.name == vName && tModel.faction == vFaction);
            Response.Redirect("~/Default.aspx");
        }
    }
}