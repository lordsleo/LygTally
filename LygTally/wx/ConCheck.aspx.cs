using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Leo;

namespace LygTally.wx
{
    public partial class ConCheck : System.Web.UI.Page
    {
        protected void Button1_Click1(object sender, EventArgs e)
        {
            var sql = string.Format("SELECT CON_IMAGE.CONTAINER_NO,vessel.sign,sship.CHI_VESSEL+'/'+sship.VOYAGE as voyage,CON_IMAGE.work_date,sship.berthno,code_port.port_cha,CON_IMAGE.blno  FROM CON_IMAGE LEFT JOIN SSHIP on sship.ship_id = CON_IMAGE.ship_id  LEFT JOIN vessel  on sship.v_id = vessel.vessel_id  LEFT JOIN code_port  on CON_IMAGE.code_unload_port = code_port.code_port  where container_no = '{0}'  and inoutport = 1 order by  work_date desc", con_no.Text);
            var dt = new Leo.SqlServer.DataAccess(RegistryKey.KeyPathTally).ExecuteTable(sql);
            var ret = new Leo.Data.Table(dt).ToArray();
            Json = Leo.Json.JsonConvert.SerializeObject(ret);
        }

        protected string Json;
    }
}