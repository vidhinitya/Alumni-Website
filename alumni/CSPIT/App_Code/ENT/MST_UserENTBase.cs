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
    public class MST_UserENTBase
    {

        #region Private Variables

        protected Int32 _UserID;
        protected String _Email;
        protected String _Password;
        protected String _Quest;
        protected String _Answer;
        protected String _Name;
        protected String _Address;
        protected String _City;
        protected String _AEmail;
        protected String _Mobile;
        protected Int32 _DepartmentID;
        protected String _ClgID;
        protected String _YOA;
        protected String _YOG;
        protected String _Percentage;
        protected String _Entrance;
        protected String _OExam;
        protected String _Obtained;
        protected String _Outof;
        protected String _YOAEdu;
        protected String _YOGEdu;
        protected String _PercentageEdu;
        protected String _NOI;
        protected String _NOC;
        protected Int32 _Status;
        protected Int32 _Placement;
        protected String _YPlacement;
        protected String _Companyname;
        protected String _Companytype;
        protected String _DOJ;
        protected String _Designation;
        protected String _Annual;
        protected Int32 _Experience;
        protected Int32 _Teaching;
        protected Int32 _Library;
        protected Int32 _Laboratory;
        protected Int32 _Sports;
        protected Int32 _Hostel;
        protected String _Feed;
        protected DateTime _Created;
        protected DateTime _Modified;
        #endregion

        #region Constructor
        public MST_UserENTBase()
        {
        }
        #endregion

        #region Public Properties

        public Int32 UserID
        {
            get
            {
                return _UserID;
            }
            set
            {
                _UserID = value;
            }
        }

        public String Email
        {
            get
            {
                return _Email;
            }
            set
            {
                _Email = value;
            }

        }

        public String Password
        {
            get
            {
                return _Password;
            }
            set
            {
                _Password = value;
            }

        }

        public String Quest
        {
            get
            {
                return _Quest;
            }
            set
            {
                _Quest = value;
            }
        }

        public String Answer
        {
            get
            {
                return _Answer;
            }
            set
            {
                _Answer = value;
            }
        }
        
        public String Name
        {
            get
            {
                return _Name;
            }
            set
            {
                _Name = value;
            }
        }

        public String Address
        {
            get
            {
                return _Address;
            }
            set
            {
                _Address = value;
            }
        }

        public String City
        {
            get
            {
                return _City;
            }
            set
            {
                _City = value;
            }
        }

        public String AEmail
        {
            get
            {
                return _AEmail;
            }
            set
            {
                _AEmail = value;
            }
        }
        
        public String Mobile
        {
            get
            {
                return _Mobile;
            }
            set
            {
                _Mobile = value;
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

        public String ClgID
        {
            get
            {
                return _ClgID;
            }
            set
            {
                _ClgID = value;
            }
        }

        public String YOA
        {
            get
            {
                return _YOA;
            }
            set
            {
                _YOA = value;
            }
        }

        public String YOG
        {
            get
            {
                return _YOG;
            }
            set
            {
                _YOG = value;
            }
        }

        public String Percentage
        {
            get
            {
                return _Percentage;
            }
            set
            {
                _Percentage = value;
            }
        }

        public String Entrance
        {
            get
            {
                return _Entrance;
            }
            set
            {
                _Entrance = value;
            }
        }

        public String OExam
        {
            get
            {
                return _OExam;
            }
            set
            {
                _OExam = value;
            }
        }

        public String Obtained
        {
            get
            {
                return _Obtained;
            }
            set
            {
                _Obtained = value;
            }
        }

        public String Outof
        {
            get
            {
                return _Outof;
            }
            set
            {
                _Outof = value;
            }
        }

        public String YOAEdu
        {
            get
            {
                return _YOAEdu;
            }
            set
            {
                _YOAEdu = value;
            }
        }

        public String YOGEdu
        {
            get
            {
                return _YOGEdu;
            }
            set
            {
                _YOGEdu = value;
            }
        }

        public String PercentageEdu
        {
            get
            {
                return _PercentageEdu;
            }
            set
            {
                _PercentageEdu = value;
            }
        }

        public String NOI
        {
            get
            {
                return _NOI;
            }
            set
            {
                _NOI = value;
            }
        }

        public String NOC
        {
            get
            {
                return _NOC;
            }
            set
            {
                _NOC = value;
            }
        }

        public Int32 Status
        {
            get
            {
                return _Status;
            }
            set
            {
                _Status = value;
            }
        }

        public Int32 Placement
        {
            get
            {
                return _Placement;
            }
            set
            {
                _Placement = value;
            }
        }

        public String YPlacement
        {
            get
            {
                return _YPlacement;
            }
            set
            {
                _YPlacement = value;
            }
        }

        public String Companyname
        {
            get
            {
                return _Companyname;
            }
            set
            {
                _Companyname = value;
            }
        }

        public String Companytype
        {
            get
            {
                return _Companytype;
            }
            set
            {
                _Companytype = value;
            }
        }

        public String DOJ
        {
            get
            {
                return _DOJ;
            }
            set
            {
                _DOJ = value;
            }
        }

        public String Designation
        {
            get
            {
                return _Designation;
            }
            set
            {
                _Designation = value;
            }
        }

        public String Annual
        {
            get
            {
                return _Annual;
            }
            set
            {
                _Annual = value;
            }
        }

        public Int32 Experience
        {
            get
            {
                return _Experience;
            }
            set
            {
                _Experience = value;
            }
        }

        public Int32 Teaching
        {
            get
            {
                return _Teaching;
            }
            set
            {
                _Teaching = value;
            }
        }

        public Int32 Library
        {
            get
            {
                return _Library;
            }
            set
            {
                _Library = value;
            }
        }

        public Int32 Laborartory
        {
            get
            {
                return _Laboratory;
            }
            set
            {
                _Laboratory = value;
            }
        }

        public Int32 Sports
        {
            get
            {
                return _Sports;
            }
            set
            {
                _Sports = value;
            }
        }

        public Int32 Hostel
        {
            get
            {
                return _Hostel;
            }
            set
            {
                _Hostel = value;
            }
        }

        public String Feed
        {
            get
            {
                return _Feed;
            }
            set
            {
                _Feed = value;
            }
        }

        public DateTime Created
        {
            get
            {
                return _Created;
            }
            set
            {
                _Created = value;
            }
        }

        public DateTime Modified
        {
            get
            {
                return _Modified;
            }
            set
            {
                _Modified = value;
            }
        }

        #endregion
    }
}
