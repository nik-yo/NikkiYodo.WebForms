using MySql.Data.MySqlClient;
using NikkiYodo.Utility;
using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace NikkiYodo.Pages.Experience
{
    public partial class Job : Page
    {
        DataTable detailsDataTable = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var dataTable = new DataTable();

                using (MySqlConnection connection = new MySqlConnection(WebConfigHelper.GetDefaultConnectionString()))
                {
                    connection.Open();

                    var command = new MySqlCommand("SELECT * FROM jobs ORDER BY id DESC", connection);
                    var adapter = new MySqlDataAdapter(command);
                    adapter.Fill(dataTable);

                    command.CommandText = "SELECT * FROM jobdetails";
                    adapter.Fill(detailsDataTable);

                    connection.Close();
                }

                rptJobs.DataSource = dataTable;
                rptJobs.DataBind();
            }            
        }

        protected void rptJobs_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.DataItem != null) {
                DataRowView job = e.Item.DataItem as DataRowView;
                if (job != null && detailsDataTable.Rows.Count > 0) {
                    var jobId = job.Row.Field<int>("id");
                    var dataView = detailsDataTable.AsDataView();
                    dataView.RowFilter = $"jobid = {jobId}";

                    var rptJobDetails = e.Item.FindControl("rptJobDetails") as Repeater;
                    if (rptJobDetails != null)
                    {
                        rptJobDetails.DataSource = dataView;
                        rptJobDetails.DataBind();
                    }
                }
            }            
        }        
    }
}