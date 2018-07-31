using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Leo.Json;

namespace LygTally.Contract
{
    public partial class upload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Json = "asd";
            try
            {

                foreach (string f in Request.Files.AllKeys)
                {
                    string pathT = HttpRuntime.AppDomainAppPath.ToString() + "/Contract/";
                    string pathD = DateTime.Now.ToString("yyyyMMdd") + "/" + DateTime.Now.ToString("HHmm") + "/";
                    string sPath = pathT + pathD;
                    if (!Directory.Exists(sPath))
                    {
                        Directory.CreateDirectory(sPath);
                    }
                    HttpPostedFile file = Request.Files[f];
                    Random seed = new Random();
                    int randomNum = seed.Next(10, 99);
                    string fileName = DateTime.Now.ToString("HHmmss") + randomNum.ToString() + ".pdf";
                    file.SaveAs(sPath + fileName);
                    
                    string[] aa = new string[2];
                    aa[0] = "YES";
                    aa[1] = pathD + fileName;
                    Json = JsonConvert.SerializeObject(aa); 
                }
            }
            catch (Exception ex)
            {
                string[] aa = new string[2];
                aa[0] = "NO";
                aa[1] =  ex.Message;
                Json = JsonConvert.SerializeObject(aa); 
            }

        }
        protected string Json;
    }
}