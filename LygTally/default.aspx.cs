using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Leo;
using System.Data;
using System.Text.RegularExpressions;

namespace LygTally
{
    public partial class _default : System.Web.UI.Page
    {
        protected string sql;
        protected DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            //公司新闻-CompanyNewsFirst
            sql = "select top 1 * FROM WL_News_Topic WHERE Class_ID = 1 and isnw =1 ORDER BY ID DESC";
            dt = new Leo.SqlServer.DataAccess(RegistryKey.KeyPathTally).ExecuteTable(sql);
            this.CompanyNewsFirst.DataSource = dt.DefaultView;
            this.DataBind();
            //公司新闻-CompanyNews
            sql = "select top 5 * FROM WL_News_Topic WHERE Class_ID = 1 and isnw =1 and id<>(select max(id) from WL_News_Topic where Class_ID = 1 and isnw =1) ORDER BY ID DESC";
            dt = new Leo.SqlServer.DataAccess(RegistryKey.KeyPathTally).ExecuteTable(sql);
            this.CompanyNews.DataSource = dt.DefaultView;
            this.DataBind();
            //公司新闻-CompanyNewsFirstimage
            sql = "select top 1 * FROM WL_News_Topic WHERE Class_ID = 1 and isnw =1 ORDER BY ID DESC";
            dt = new Leo.SqlServer.DataAccess(RegistryKey.KeyPathTally).ExecuteTable(sql);
            this.CompanyNewsFirstimage.DataSource = dt.DefaultView;
            this.DataBind();
            //公司新闻-CompanyNewsimage
            sql = "select top 5 * FROM WL_News_Topic WHERE Class_ID = 1 and isnw =1 and id<>(select max(id) from WL_News_Topic) ORDER BY ID DESC";
            dt = new Leo.SqlServer.DataAccess(RegistryKey.KeyPathTally).ExecuteTable(sql);
            this.CompanyNewsimage.DataSource = dt.DefaultView;
            this.DataBind();

            //外理状元-WLZY
            sql = "SELECT top 8 * FROM WL_News_Topic WHERE Class_ID = 10 and isnw =1 ORDER BY ID DESC";
            dt = new Leo.SqlServer.DataAccess(RegistryKey.KeyPathTally).ExecuteTable(sql);
            this.WLZY.DataSource = dt.DefaultView;
            this.DataBind();
            //外理亮点WLLD
            sql = "SELECT top 8 * FROM WL_News_Topic WHERE Class_ID = 11 and isnw =1 ORDER BY ID DESC";
            dt = new Leo.SqlServer.DataAccess(RegistryKey.KeyPathTally).ExecuteTable(sql);
            this.WLLD.DataSource = dt.DefaultView;
            this.DataBind();

            //工作感悟-GZGW
            sql = "SELECT top 8 * FROM WL_News_Topic WHERE Class_ID = 12 and isnw =1 ORDER BY ID DESC";
            dt = new Leo.SqlServer.DataAccess(RegistryKey.KeyPathTally).ExecuteTable(sql);
            this.GZGW.DataSource = dt.DefaultView;
            this.DataBind();
            //行业资讯-HYZX
            sql = "SELECT top 8 * FROM WL_News_Topic WHERE Class_ID = 4 and isnw =1 ORDER BY ID DESC";
            dt = new Leo.SqlServer.DataAccess(RegistryKey.KeyPathTally).ExecuteTable(sql);
            this.HYZX.DataSource = dt.DefaultView;
            this.DataBind();

            //学习资料-XXZL
            sql = "SELECT top 8 * FROM WL_News_Topic WHERE Class_ID = 14 and isnw =1 ORDER BY ID DESC";
            dt = new Leo.SqlServer.DataAccess(RegistryKey.KeyPathTally).ExecuteTable(sql);
            this.XXZL.DataSource = dt.DefaultView;
            this.DataBind();
            //我的作品-WDZP
            sql = "SELECT top 8 * FROM WL_News_Topic WHERE Class_ID = 15 and isnw =1 ORDER BY ID DESC";
            dt = new Leo.SqlServer.DataAccess(RegistryKey.KeyPathTally).ExecuteTable(sql);
            this.WDZP.DataSource = dt.DefaultView;
            this.DataBind();

            //管理启示-GLQS
            sql = "SELECT top 8 * FROM WL_News_Topic WHERE Class_ID = 16 and isnw =1 ORDER BY ID DESC";
            dt = new Leo.SqlServer.DataAccess(RegistryKey.KeyPathTally).ExecuteTable(sql);
            this.GLQS.DataSource = dt.DefaultView;
            this.DataBind();
            //安全警示-AQJS
            sql = "SELECT top 8 * FROM WL_News_Topic WHERE Class_ID = 17 and isnw =1 ORDER BY ID DESC";
            dt = new Leo.SqlServer.DataAccess(RegistryKey.KeyPathTally).ExecuteTable(sql);
            this.AQJS.DataSource = dt.DefaultView;
            this.DataBind();
        }

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
                return "images/newsimg.png";
            }

            if (sUrlList[0].Contains("/old"))
            {
                return sUrlList[0];
            }
            else
            {
                return sUrlList[0].Replace("/admin", "/old/admin");
            }
        }

    }
}