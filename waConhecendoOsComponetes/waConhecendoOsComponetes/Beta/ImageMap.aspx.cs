using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace waConhecendoOsComponetes.Beta
{
    public partial class ImageMap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var hotspot = new RectangleHotSpot();
            hotspot.Right = 400;
            hotspot.Left = 0;
            hotspot.Top = 450;
            hotspot.Bottom = 700;
            hotspot.NavigateUrl = "http://www.dfilitto.com.br";
            hotspot.HotSpotMode = HotSpotMode.Navigate;
            ImageMap1.HotSpots.Add(hotspot);
        }

        protected void ImageMap1_Click(object sender, ImageMapEventArgs e)
        {
            Label1.Text = e.PostBackValue;
        }
    }
}