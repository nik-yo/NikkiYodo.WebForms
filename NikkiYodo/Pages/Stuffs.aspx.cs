using MySql.Data.MySqlClient;
using System;
using System.Web.UI;

namespace NikkiYodo.Pages
{
    public partial class Stuffs : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //using (var connection = new MySqlConnection(WebConfigHelper.GetDefaultConnectionString()))
                //{
                //    connection.Open();

                //    using (var context = new NikkiYodoDbContext(connection, false))
                //    {
                //        rptStuffs.DataSource = context.Stuffs.AsNoTracking().Where(s => s.Available).ToList();
                //        rptStuffs.DataBind();
                //    }

                //    connection.Close();
                //}
            }
        }
    }
}