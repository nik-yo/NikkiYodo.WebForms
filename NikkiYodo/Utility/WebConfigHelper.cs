using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.Configuration;

namespace NikkiYodo.Utility
{
    class WebConfigHelper
    {
        public static string GetDefaultConnectionString() {
            return WebConfigurationManager.OpenWebConfiguration(VirtualPathUtility.ToAbsolute("~")).ConnectionStrings.ConnectionStrings["NikkiYodoDB"].ConnectionString;
        }
    }
}
