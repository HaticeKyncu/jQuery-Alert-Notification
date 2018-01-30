using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JQueryProject
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //[System.Web.Services.WebMethod]
        //public static int jQueryPageMethod(string user, string password)
        //{
        //    OracleConnect DbConn = new OracleConnect();
        //    int kayit_sayisi = 0;
        //    string sql = "select count(FRMNUM) from URTTNM.USRTNM " + " WHERE URTTNM.USRTNM.USERNAME='" + user + "' AND URTTNM.USRTNM.SIFRE='" + password + "'";
        //    DbConn.Sayac(sql);
        //    kayit_sayisi = Convert.ToInt32(DbConn.GeriDonenRakam);
        //    if (kayit_sayisi > 0)
        //    {
        //        string sorgu = "SELECT * FROM URTTNM.USRTNM" + " WHERE URTTNM.USRTNM.USERNAME='" + user + "' AND URTTNM.USRTNM.SIFRE='" + password + "'";
        //        DbConn.RaporWhile(sorgu);
        //        while (DbConn.MyDataReader.Read())
        //        {
        //            HttpContext.Current.Session["kullanici"] = user;
        //            string yetki = DbConn.MyDataReader.GetValue(26).ToString();
        //            if (yetki == "E")
        //            {
        //                return 1;
        //            }
        //        }
        //        DbConn.Close();
        //        return 0;
        //    }
        //}
        //}
    }
}