using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Leo;

namespace LygTally.wx
{
    public partial class TallyBoat1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var sql = "SELECT  *  FROM view_new_remaintons where not worktime_begin is null and worktime_end is null and goods='件杂货' ";
            var dt = new Leo.SqlServer.DataAccess(RegistryKey.KeyPathTally).ExecuteTable(sql);
            var ret = new Leo.Data.Table(dt).ToArray();
            Json = Leo.Json.JsonConvert.SerializeObject(ret);
        }

        protected string Json;
    }
}