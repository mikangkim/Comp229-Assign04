using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using System.IO;

namespace Comp229_Assign04
{
    public partial class Model : System.Web.UI.Page
    {
        private models.Models modelsState;

        protected void Page_Load(object sender, EventArgs e)
        {
            var vName = Request.QueryString["name"];
            var vFaction = Request.QueryString["faction"];

            if (name != null && faction != null)
            {
                modelsState = Global.models.FirstOrDefault(tModel => tModel.name == vName && tModel.faction == vFaction);
                pickModel();
            }
            else
            {
                Response.Redirect("Default.aspx");
            }
        }
        private void pickModel()
        {
            modelimg.ImageUrl = modelsState.imageUrl;
            name.Text = modelsState.name;
            faction.Text = modelsState.faction;
            rank.Text = modelsState.rank.ToString();
            _base.Text = modelsState._base.ToString();
            size.Text = modelsState.size.ToString();
            deployment.Text = modelsState.deploymentZone;
            traitsrep.DataSource = modelsState.traits;
            traitsrep.DataBind();
            typerep.DataSource = modelsState.defenseChart;
            typerep.DataBind();
            mobility.Text = modelsState.mobility.ToString();
            willpower.Text = modelsState.willpower.ToString();
            resiliance.Text = modelsState.resiliance.ToString();
            wounds.Text = modelsState.wounds.ToString();


        }
    }
}