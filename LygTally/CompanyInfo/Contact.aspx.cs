﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Leo;

namespace LygTally.CompanyInfo
{
    public partial class Contact : System.Web.UI.Page
    {
        protected string tt = "联系我们";
        protected string tt_en = "Contact Us";
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = 390;
            //公司新闻-CompanyNews
            var sql = string.Format("select * from VIEW_WL_News where id={0}", id);
            var dt = new Leo.SqlServer.DataAccess(RegistryKey.KeyPathTally).ExecuteTable(sql);
            //this.LabBT.Text = dt.DefaultView[0]["topic"].ToString();
            string text = HttpUtility.UrlDecode(dt.DefaultView[0]["MESSAGE"].ToString());
            this.LabMessage.Text = text.Replace("/admin", "/old/admin");
            //this.Labtime.Text = " <font style='font-weight:normal'>" + (Convert.ToDateTime(dt.DefaultView[0]["POST_TIME"])).ToString("yyyy-MM-dd") + "</font>";
            if (!(dt.DefaultView[0]["newname"] == DBNull.Value) & dt.DefaultView[0]["newname"].ToString() != "")
            {
                var oldname = (dt.DefaultView[0]["oldname"].ToString()).Split('|');
                var newname = (dt.DefaultView[0]["newname"].ToString()).Split('|');
                if (newname.Length == 1)
                {
                    //this.Labfj.Text = Server.HtmlDecode("附件: <a href=http://www.lygtally.com/upload_archive/" + dt.DefaultView[0]["newname"] + " target=_blank>" + dt.DefaultView[0]["oldname"].ToString() + "</a>");
                }
                else
                {
                    for (int i = 0; i < oldname.Length; i++)
                    {
                        //this.Labfj.Text += "<li>" + "<a href=http://www.lygtally.com/upload_archive/" + newname[i] + " target=_blank>" + oldname[i] + "</a>";
                    }
                }

            }

        }

    }
}