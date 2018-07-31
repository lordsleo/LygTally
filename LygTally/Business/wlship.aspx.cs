using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Leo;

namespace LygTally.Business
{
    public partial class wlship : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ybcb = select("select  ship_id,CHI_VESSEL,NATION_CHA,I_VOYAGE||'/'||O_VOYAGE as voyage,trade,this_draft||'/'||chu_draft as draft,xhmc,xhsl,zhmc,zhsl,yjdg,name from view_sship_tan where SHIP_STATU = 0");

            qbcb = select("select  ship_id,CHI_VESSEL,NATION_CHA,I_VOYAGE||'/'||O_VOYAGE as voyage,trade,this_draft||'/'||chu_draft as draft,xhmc,xhsl,zhmc,zhsl,yjdg,name from view_sship_tan where SHIP_STATU = 7");

            mdcb = select("select  ship_id,CHI_VESSEL,NATION_CHA,I_VOYAGE||'/'||O_VOYAGE as voyage,trade,this_draft||'/'||chu_draft as draft,xhmc,xhsl,zhmc,zhsl,yjdg,berthno,name from view_sship_tan where SHIP_STATU = 1");

            bwcb = select("select ship_id,berthno,CHI_VESSEL,I_VOYAGE||'/'||O_VOYAGE as voyage,xhmc,xhsl,zhmc,zhsl,BerTH_time,SHIPSTATUS,name,DepartMent from view_sship_tan where  ship_statu=2 or ship_statu=4 or ship_statu=5 or ship_statu=3 order by berthno");

            hgcb = select("select ship_id,dqbw||' '||bwwz as bw,CHI_VESSEL,GJ,CZ||'/'||this_draft||'/'||chu_draft as draft,YJJG,YJLG,CBDL,PC,pilotage,remark from ywcplan where hgnh=0 order by px,dqbw,bwwz");

            hgyb = select("select ship_id,dqbw||' '||bwwz as bw,CHI_VESSEL,yjyb,ybbw||' '||ybbwwz as ybbw,yblg,pc,remark from  YwcPlanYB where hgnh=0 order by dqbw");

            ghcb = select("select  ship_id,dqbw||' '||bwwz as bw,CHI_VESSEL,GJ,CZ||'/'||this_draft||'/'||chu_draft as draft,YJJG,YJLG,CBDL,PC,pilotage,remark from ywcplan where hgnh=25384 or hgnh=25385 order by dqbw ");

            ghyb = select("select ship_id,dqbw||' '||bwwz as bw,CHI_VESSEL,yjyb,ybbw||' '||ybbwwz as ybbw,yblg,pc,remark from  YwcPlanYB where hgnh=25384 or hgnh=25385 order by dqbw");

            fbsj = select("select plandate from ywcplan where hgnh=0 and rownum = 1 order by px,dqbw,bwwz");
        }

        protected string select(string sql)
        {
            var dt = new Leo.Oracle.DataAccess(RegistryKey.KeyPathBase).ExecuteTable(sql);
            var ret = new Leo.Data.Table(dt).ToArray();
            return Leo.Json.JsonConvert.SerializeObject(ret);
        }

        protected string ybcb;
        protected string qbcb;
        protected string mdcb;
        protected string bwcb;
        protected string hgcb;
        protected string hgyb;
        protected string ghcb;
        protected string ghyb;
        protected string fbsj;
    }
}