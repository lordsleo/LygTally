using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Leo;

namespace LygTally.Business
{
    public partial class WLShipDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var id = Request.Params["id"];
            var sql = string.Format("select * from view_sship_tan where ship_id ='{0}' ",id);
            var dt = new Leo.Oracle.DataAccess(RegistryKey.KeyPathBase).ExecuteTable(sql);
            CHI_vessel = dt.Rows[0]["CHI_VESSEL"].ToString();
            ENG_vessel = dt.Rows[0]["ENG_VESSEL"].ToString();
            NATURE = dt.Rows[0]["NATURE"].ToString();
            I_VOYAGE = dt.Rows[0]["I_VOYAGE"].ToString();
            O_VOYAGE = dt.Rows[0]["O_VOYAGE"].ToString();
            TRADE = dt.Rows[0]["TRADE"].ToString();
            LAST_PORT = dt.Rows[0]["LAST_PORT"].ToString();
            NEXT_PORT = dt.Rows[0]["NEXT_PORT"].ToString();
            YJDG = dt.Rows[0]["YJDG"].ToString();
            this_draft = dt.Rows[0]["this_draft"].ToString();
            chu_draft = dt.Rows[0]["chu_draft"].ToString();
            //速 / 滞  费
            Nation_CHA = dt.Rows[0]["Nation_CHA"].ToString();
            SIGN = dt.Rows[0]["SIGN"].ToString();
            //	航    速
            TON_GROS = dt.Rows[0]["TON_GROS"].ToString();
            Ton_Net = dt.Rows[0]["Ton_Net"].ToString();
            TON_DEAD = dt.Rows[0]["TON_DEAD"].ToString();
            loa = dt.Rows[0]["loa"].ToString();
            beam = dt.Rows[0]["beam"].ToString();
            tpc = dt.Rows[0]["tpc"].ToString();
            Ship_type = dt.Rows[0]["Ship_type"].ToString();
            hatch = dt.Rows[0]["hatch"].ToString();
            vessel_draft = dt.Rows[0]["vessel_draft"].ToString();
            OWNER_SHIP = dt.Rows[0]["OWNER_SHIP"].ToString();
            builed_date = dt.Rows[0]["builed_date"].ToString();

        }
        protected string CHI_vessel;
        protected string ENG_vessel;
        protected string NATURE;
        protected string I_VOYAGE;
        protected string O_VOYAGE;
        protected string TRADE;
        protected string LAST_PORT;
        protected string NEXT_PORT;
        protected string YJDG;
        protected string this_draft;
        protected string chu_draft;

        protected string Nation_CHA;
        protected string SIGN;
        protected string ship_speed;
        protected string TON_GROS;
        protected string Ton_Net;
        protected string TON_DEAD;
        protected string loa;
        protected string beam;
        protected string tpc;
        protected string Ship_type;
        protected string hatch;
        protected string vessel_draft;
        protected string OWNER_SHIP;
        protected string builed_date;

    }
}