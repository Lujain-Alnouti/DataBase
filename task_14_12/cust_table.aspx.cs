using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
//using System.Drawing;

namespace task_14_12
{
    public partial class cust_table : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void save_Click(object sender, EventArgs e)
             {
            string folderPath = Server.MapPath("~/Files/");

            if (!Directory.Exists(folderPath))
            {
                Directory.CreateDirectory(folderPath);
            }
            string image_URL= "~/Files/" + Path.GetFileName(FileUpload1.FileName);
            FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));
            SqlConnection connect = new SqlConnection("data source = DESKTOP-L7EOP8B\\SQLEXPRESS; database = task_14_12 ; integrated security=SSPI");
            connect.Open();
            string add_value = "insert into Customers values('"+ Cust_Name.Text+"','"+ image_URL+"') ";
            SqlCommand cmd = new SqlCommand(add_value, connect);
            cmd.ExecuteNonQuery();
            connect.Close();
            Label1.Text = "data inserted successfully";
            Getdatab();
        }

        private void Getdatab()
        {
            Label1.Text = "";
            SqlConnection connect2 = new SqlConnection("data source = DESKTOP-L7EOP8B\\SQLEXPRESS; database = task_14_12 ; integrated security=SSPI");
            SqlCommand comand = new SqlCommand("select * from Customers", connect2);
            connect2.Open();

            SqlDataReader reada = comand.ExecuteReader();
            //string image_URL = "~/Files/" + reada[2];
            string table = "<table class='table table-striped'> <tr><th>ID</th> <th>Customer_Name</th> <th>Image_Url</th>";

            while (reada.Read())
            {
                string image_URL =(string)reada[2];
                table += $"<tr><td>{reada[0]}</td><td>{reada[1]}</td><td>{reada[2]}</td></tr>";
                //Image1.ImageUrl = image_URL;
                Image img = new Image();
                this.Controls.Add(img);
                img.ImageUrl = image_URL;
                img.Height=150;
                img.Width = 150;



            }
            table += "</table>";
            Label2.Text = table;
            connect2.Close();
        }
    }
}