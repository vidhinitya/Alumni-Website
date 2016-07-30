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
using MultiplexTheater.ENT;

namespace MultiplexTheater.ENT
{
    public class MST_AdminENTBase
    {

        #region Private Variables

        protected Int32 _AdminID;
        protected String _AdminName;
        protected String _Pass;
        protected Int32 _DepartmentId;
        #endregion

        #region Constructor
        public MST_AdminENTBase()
        {
        }
        #endregion

        #region Public Properties

        public Int32 AdminID
        {
            get
            {
                return _AdminID;
            }
            set
            {
                _AdminID = value;
            }
        }
        public Int32 DepartmentId
        {
            get
            {
                return _DepartmentId;
            }
            set
            {
                _DepartmentId = value;
            }
        }

        public String AdminName
        {
            get
            {
                return _AdminName;
            }
            set
            {
                _AdminName = value;
            }

        }

        public String Pass
        {
            get
            {
                return _Pass;
            }
            set
            {
                _Pass = value;
            }

        }

        #endregion
    }
}
