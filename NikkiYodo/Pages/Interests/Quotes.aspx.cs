using MySql.Data.MySqlClient;
using NikkiYodo.Utility;
using System;
using System.Data;
using System.Web.UI;

namespace NikkiYodo.Pages.Interests
{
    public partial class Quotes : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var dataTable = new DataTable();

                using (var connection = new MySqlConnection(WebConfigHelper.GetDefaultConnectionString()))
                {
                    connection.Open();

                    var command = new MySqlCommand("SELECT * FROM quotes ORDER BY cite", connection);
                    var adapter = new MySqlDataAdapter(command);
                    adapter.Fill(dataTable);

                    connection.Close();
                }

                rptQuotes.DataSource = dataTable;
                rptQuotes.DataBind();
            }
        }
    }
}