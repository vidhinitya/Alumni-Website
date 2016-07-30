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
    public class MST_EDocENTBase
    {
        #region Private Variables

        protected Int64 _EDocID;
        protected String _EDocTitle;
        protected DateTime _CreatedDate;
        protected String _UploadFileName;
        protected Int32 _DepartmentId;
        #endregion

        #region Constructor
        public MST_EDocENTBase()
        {

        }
        #endregion

        #region Public Properties
        public Int64 EDocID
        {
            get
            {
                return _EDocID;
            }
            set
            {
                _EDocID = value;
            }
        }

        public String EDocTitle
        {
            get
            {
                return _EDocTitle;
            }
            set
            {
                _EDocTitle = value;
            }
        }
        public String UploadFileName
        {
            get
            {
                return _UploadFileName;
            }
            set
            {
                _UploadFileName = value;
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

        public DateTime CreatedDate
        {
            get
            {
                return _CreatedDate;
            }
            set
            {
                _CreatedDate = value;
            }
        }

        #endregion
    }
}
