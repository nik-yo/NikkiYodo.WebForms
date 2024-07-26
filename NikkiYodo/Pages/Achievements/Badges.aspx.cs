using MySql.Data.MySqlClient;
using NikkiYodo.Utility;
using System;
using System.Data;
using System.Web.UI;

namespace NikkiYodo.Pages.Achievements
{
    public partial class Badges : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var dataTable = new DataTable();

                using (var connection = new MySqlConnection(WebConfigHelper.GetDefaultConnectionString()))
                {
                    connection.Open();
                    
                    var command = new MySqlCommand("SELECT * FROM badges", connection);
                    var adapter = new MySqlDataAdapter(command);                    
                    adapter.Fill(dataTable);

                    connection.Close();          
                }

                rptBadges.DataSource = dataTable;
                rptBadges.DataBind();
            }
        }
    }
}