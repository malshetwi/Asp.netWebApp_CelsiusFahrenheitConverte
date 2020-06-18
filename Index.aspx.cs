using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CelsiusFahrenheit_Converter
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_2C_Click(object sender, EventArgs e)
        {
            double F;
            F = Int32.Parse(txt_2convert.Text);
            F = (F - 32) / 1.8000;
            lbl_Msg.Text = "= " + F + "°C";
            

            if (F >= 34) {
                img_sun.Visible = true;
                img_snow.Visible = false;
                img_cloudy.Visible = false;
            }
            else if (F <= 15) { 
            
                img_snow.Visible = true;
                img_sun.Visible = false;
                img_cloudy.Visible = false;
            }
            else {
                img_sun.Visible = false;
                img_snow.Visible = false;
                img_cloudy.Visible = true;
            }
        }

        protected void btn_2F_Click(object sender, EventArgs e)
        {
            double C;
            C = Int32.Parse(txt_2convert.Text);
            C = C * 1.8000 + 32;
            lbl_Msg.Text = "= " + C + "°F";

            if (C >= 93.2)
            {
                img_sun.Visible = true;
                img_snow.Visible = false;
                img_cloudy.Visible = false;
            }
            else if (C <= 59)
            {

                img_snow.Visible = true;
                img_sun.Visible = false;
                img_cloudy.Visible = false;
            }
            else
            {
                img_sun.Visible = false;
                img_snow.Visible = false;
                img_cloudy.Visible = true;
            }
        }
    }
}