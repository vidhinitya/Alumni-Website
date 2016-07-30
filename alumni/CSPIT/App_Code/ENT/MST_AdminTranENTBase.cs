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
    public class MST_AdminTranENTBase
    {

        #region Private Variables

        protected Int32 _AdminTranID;
        protected Int32 _DepartmentID;
        protected Int32 _AdminID;
        
        #endregion

        #region Constructor
        public MST_AdminTranENTBase()
        {
        }
        #endregion

        #region Public Properties

        public Int32 AdminTranID
        {
            get
            {
                return _AdminTranID;
            }
            set
            {
                _AdminTranID = value;
            }
        }

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

        #endregion
    }
}
