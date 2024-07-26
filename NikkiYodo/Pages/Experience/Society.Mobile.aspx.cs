using MySql.Data.MySqlClient;
using NikkiYodo.Utility;
using System;
using System.Data;
using System.Web.UI;

namespace NikkiYodo.Pages.Experience
{
    public partial class SocietyMobile : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var dataTable = new DataTable();

                using (MySqlConnection connection = new MySqlConnection(WebConfigHelper.GetDefaultConnectionString()))
                {
                    connection.Open();

                    var command = new MySqlCommand("SELECT * FROM societies", connection);
                    var adapter = new MySqlDataAdapter(command);
                    adapter.Fill(dataTable);

                    connection.Close();
                }

                rptSocieties.DataSource = dataTable;
                rptSocieties.DataBind();
            }
        }
    }
}