using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LiteraturSurvey
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataClasses1DataContext dc = new DataClasses1DataContext();
            var result = from x in dc.PapersTables
                         select new{ Title = x.Title, Authors = x.Authors, Contents =x.Contents, Link =x.Link};

        }
    }
}