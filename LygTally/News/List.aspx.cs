using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Leo;
using System.Data;
using System.Text.RegularExpressions;

namespace LygTally.News
{
    public partial class List : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            switch (Convert.ToUInt16(Request.Params["id"]))
            {
                case 20: tt = "集团新闻";
                    break;
                case 19: tt = "行业新闻";
                    break;
                case 2: tt = "通知公告";
                    break;
                default :;
                    break;
            }
            int page = Convert.ToInt16(Request.Params["page"]);
            //公司新闻-CompanyNewsFirst
            var sql = string.Format("select top 8 * FROM WL_News_Topic WHERE Class_ID = {0} and isnw =1 and id not in(select top {1} id from WL_News_Topic WHERE Class_ID = 1 and isnw =1 ORDER BY ID DESC) ORDER BY ID DESC", Request.Params["id"], (page - 1) * 8);
            var dt = new Leo.SqlServer.DataAccess(RegistryKey.KeyPathTally).ExecuteTable(sql);
            this.CompanyNewsDetail.DataSource = dt.DefaultView;
            this.DataBind();


            sql = string.Format("select count(*)/8 FROM WL_News_Topic WHERE Class_ID = {0} and isnw =1",Request.Params["id"]);
            dt = new Leo.SqlServer.DataAccess(RegistryKey.KeyPathTally).ExecuteTable(sql);
            count = Convert.ToString(dt.Rows[0][0]);
        }

        protected string tt = "新闻列表";
        protected string tt_en = "News";
        protected string count = "";

        protected string ClearHtml(string Content)
        {
            Content = Zxj_ReplaceHtml("&#[^>]*;", "", Content);
            Content = Zxj_ReplaceHtml("</?marquee[^>]*>", "", Content);
            Content = Zxj_ReplaceHtml("</?object[^>]*>", "", Content);
            Content = Zxj_ReplaceHtml("</?param[^>]*>", "", Content);
            Content = Zxj_ReplaceHtml("</?embed[^>]*>", "", Content);
            Content = Zxj_ReplaceHtml("</?table[^>]*>", "", Content);
            Content = Zxj_ReplaceHtml(" ", "", Content);
            Content = Zxj_ReplaceHtml("</?tr[^>]*>", "", Content);
            Content = Zxj_ReplaceHtml("</?th[^>]*>", "", Content);
            Content = Zxj_ReplaceHtml("</?p[^>]*>", "", Content);
            Content = Zxj_ReplaceHtml("</?a[^>]*>", "", Content);
            Content = Zxj_ReplaceHtml("</?img[^>]*>", "", Content);
            Content = Zxj_ReplaceHtml("</?tbody[^>]*>", "", Content);
            Content = Zxj_ReplaceHtml("</?li[^>]*>", "", Content);
            Content = Zxj_ReplaceHtml("</?span[^>]*>", "", Content);
            Content = Zxj_ReplaceHtml("</?div[^>]*>", "", Content);
            Content = Zxj_ReplaceHtml("</?th[^>]*>", "", Content);
            Content = Zxj_ReplaceHtml("</?td[^>]*>", "", Content);
            Content = Zxj_ReplaceHtml("</?script[^>]*>", "", Content);
            Content = Zxj_ReplaceHtml("(javascript|jscript|vbscript|vbs):", "", Content);
            Content = Zxj_ReplaceHtml("on(mouse|exit|error|click|key)", "", Content);
            Content = Zxj_ReplaceHtml("<\\?xml[^>]*>", "", Content);
            Content = Zxj_ReplaceHtml("<\\/?[a-z]+:[^>]*>", "", Content);
            Content = Zxj_ReplaceHtml("</?font[^>]*>", "", Content);
            Content = Zxj_ReplaceHtml("</?b[^>]*>", "", Content);
            Content = Zxj_ReplaceHtml("</?u[^>]*>", "", Content);
            Content = Zxj_ReplaceHtml("</?i[^>]*>", "", Content);
            Content = Zxj_ReplaceHtml("</?strong[^>]*>", "", Content);
            string clearHtml = Content;
            return clearHtml;
        }

        private string Zxj_ReplaceHtml(string patrn, string strRep, string content)
        {
            if (string.IsNullOrEmpty(content))
            {
                content = "";
            }
            Regex rgEx = new Regex(patrn, RegexOptions.IgnoreCase);
            string strTxt = rgEx.Replace(content, strRep);
            return strTxt;
        }

        public string GetHtmlimageUrlList(string sHtmlText)
        {
            // 定义正则表达式用来匹配 img 标签 
            Regex regImg = new Regex(@"<img\b[^<>]*?\bsrc[\s\t\r\n]*=[\s\t\r\n]*[""']?[\s\t\r\n]*(?<imgUrl>[^\s\t\r\n""'<>]*)[^<>]*?/?[\s\t\r\n]*>", RegexOptions.IgnoreCase);

            // 搜索匹配的字符串 
            MatchCollection matches = regImg.Matches(sHtmlText);
            int i = 0;
            string[] sUrlList = new string[matches.Count];

            // 取得匹配项列表 
            foreach (Match match in matches)
                sUrlList[i++] = match.Groups["imgUrl"].Value;
            if (sUrlList.Length == 0)
            {
                return "../images/newsimg.png";
            }

            sUrlList[0] = sUrlList[0].Replace("/old", "");
            return sUrlList[0].Replace("/admin", "../old/admin");
        }
    }
}