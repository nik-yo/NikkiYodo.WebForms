using MySql.Data.MySqlClient;
using NikkiYodo.Utility;
using System;
using System.Data;

namespace NikkiYodo.Pages
{
    public partial class CertificatesMobile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var categoriesTable = new DataTable();
                var dataTable = new DataTable();

                using (MySqlConnection connection = new MySqlConnection(WebConfigHelper.GetDefaultConnectionString()))
                {
                    connection.Open();

                    var command = new MySqlCommand("SELECT * FROM certificate_categories ORDER BY name", connection);
                    var adapter = new MySqlDataAdapter(command);
                    adapter.Fill(categoriesTable);

                    var firstCategoryId = categoriesTable.Rows[0].Field<int>("id");

                    command.CommandText = $"SELECT * FROM certificates WHERE categoryid={firstCategoryId} ORDER BY year DESC";
                    adapter = new MySqlDataAdapter(command);
                    adapter.Fill(dataTable);

                    connection.Close();
                }

                ddlCategory.DataTextField = "name";
                ddlCategory.DataValueField = "id";
                ddlCategory.DataSource = categoriesTable;
                ddlCategory.DataBind();

                rptCertificates.DataSource = dataTable;
                rptCertificates.DataBind();
            }     
        }

        protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            var categoryId = 0;
            if (int.TryParse(ddlCategory.SelectedValue, out categoryId) && categoryId > 0)
            {
                var dataTable = new DataTable();

                using (MySqlConnection connection = new MySqlConnection(WebConfigHelper.GetDefaultConnectionString()))
                {
                    connection.Open();

                    var command = new MySqlCommand($"SELECT * FROM certificates WHERE categoryid={categoryId} ORDER BY year DESC", connection);
                    var adapter = new MySqlDataAdapter(command);
                    adapter.Fill(dataTable);

                    connection.Close();
                }

                rptCertificates.DataSource = dataTable;
                rptCertificates.DataBind();
            }
        }
    }
}