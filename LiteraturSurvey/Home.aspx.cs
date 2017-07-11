using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;


namespace LiteraturSurvey
{
    public class Items
    {
        public string Title { get; set; }
        public string Authors { get; set; }
        public string Contents { get; set; }
        public string Link { get; set; }
        public string Id { get; set; }




    }


    public partial class Home : System.Web.UI.Page
    {
        protected string MyProperty { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            DataClasses1DataContext dc = new DataClasses1DataContext();
            var result = from x in dc.PapersTables
                         select new{ Title = x.Title, Authors = x.Authors, Contents =x.Contents, Link =x.Link};

            var json = new JavaScriptSerializer().Serialize(result);
            MyProperty = json;
            hdf_Test.Value = MyProperty;

        }
    }
}