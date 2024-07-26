using MySql.Data.MySqlClient;
using NikkiYodo.Utility;
using System;
using System.Web.UI.WebControls;
using System.Web.UI;
using System.Data;

namespace NikkiYodo.Pages.Experience
{
    public partial class Technology : Page
    {
        DataTable techDataTable = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var dataTable = new DataTable();

                using (MySqlConnection connection = new MySqlConnection(WebConfigHelper.GetDefaultConnectionString()))
                {
                    connection.Open();

                    var command = new MySqlCommand("SELECT * FROM technology ORDER BY name", connection);
                    var adapter = new MySqlDataAdapter(command);
                    adapter.Fill(dataTable);

                    //command.CommandText = "SELECT * FROM technology";
                    //adapter.Fill(techDataTable);

                    connection.Close();
                }

                rptTechnology.DataSource = dataTable;
                rptTechnology.DataBind();
            }            
        }

        protected void rptTechnology_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            //if (e.Item.DataItem is TechnologyCategoryModel)
            //{
            //    DataRowView category = e.Item.DataItem as DataRowView;
            //    if (category != null && techDataTable.Rows.Count > 0)
            //    {
            //        var catId = category.Row.Field<int>("id");
            //        var dataView = techDataTable.AsDataView();
            //        dataView.RowFilter = $"categoryid = {catId}";

            //        var dlTechnology = e.Item.FindControl("dlTechnology") as DataList;
            //        if (dlTechnology != null)
            //        {
            //            dlTechnology.DataSource = dataView;
            //            dlTechnology.DataBind();
            //        }
            //    }
            //}
        }
    }
}