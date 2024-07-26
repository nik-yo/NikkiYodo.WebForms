using MySql.Data.MySqlClient;
using NikkiYodo.Utility;
using System;
using System.Data;
using System.Web.UI;

namespace NikkiYodo.Pages.Interests
{
    public partial class Books : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var dataTable = new DataTable();

                using (MySqlConnection connection = new MySqlConnection(WebConfigHelper.GetDefaultConnectionString()))
                {
                    connection.Open();

                    var command = new MySqlCommand("SELECT * FROM books WHERE filename <> '' ORDER BY title", connection);
                    var adapter = new MySqlDataAdapter(command);
                    adapter.Fill(dataTable);

                    connection.Close();
                }

                rptBooks.DataSource = dataTable;
                rptBooks.DataBind();
            }
        }
    }
}