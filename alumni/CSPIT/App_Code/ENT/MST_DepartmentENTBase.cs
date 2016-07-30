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
    public class MST_DepartmentENTBase
    {
        #region Private Variables

        protected Int32 _DepartmentID;
        protected String _DepartmentName;
        
        #endregion

        #region Constructor
        public MST_DepartmentENTBase()
        {

        }
        #endregion

        #region Public Properties
        public Int32 DepartmentID
        {
            get
            {
                return _DepartmentID;
            }
            set
            {
                _DepartmentID = value;
            }
        }

        public String DepartmentName
        {
            get
            {
                return _DepartmentName;
            }
            set
            {
                _DepartmentName = value;
            }
        }

        #endregion
    }
}
