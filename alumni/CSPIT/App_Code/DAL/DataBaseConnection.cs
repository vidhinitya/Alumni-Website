using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using MultiPlexTheater;
using System.Configuration;
using System.Collections;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using MultiPlexTheater.DAL;
using MultiPlexTheater.ENT;

namespace MultiPlexTheater.DAL
{
    public class DataBaseConnection : System.Web.UI.Page
    {
        public DataBaseConnection()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        public string myConnectionString = ConfigurationManager.ConnectionStrings["TheaterConnectionString"].ConnectionString;
        //public string myConnectionString = "PROVIDER=Microsoft.Jet.OLEDB.4.0;" +"Data Source=DataBase/Theater.mdb";

    }
}