using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using MultiPlexTheater;

/// <summary>
/// Summary description for MST_DepartmentENTBase
/// </summary>
namespace MultiPlexTheater.ENT
{
    public class MST_NewsENTBase
    {
        #region Private Variables

        protected Int64 _NewsID;
        protected String _Description;
        protected String _Title;
        protected DateTime _PublishDate;
        
        #endregion

        #region Constructor
        public MST_NewsENTBase()
        {

        }
        #endregion

        #region Public Properties
        public Int64 NewsID
        {
            get
            {
                return _NewsID;
            }
            set
            {
                _NewsID = value;
            }
        }

        public String Description
        {
            get
            {
                return _Description;
            }
            set
            {
                _Description = value;
            }
        }
        public String Title
        {
            get
            {
                return _Title;
            }
            set
            {
                _Title = value;
            }
        }
        public DateTime PublishDate
        {
            get
            {
                return _PublishDate;
            }
            set
            {
                _PublishDate = value;
            }
        }

        #endregion
    }
}
