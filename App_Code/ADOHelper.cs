using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for ADOHelper
/// </summary>
public class ADOHelper
{
    string str;

	public ADOHelper()
	{
        str = "Data Source=ICHARION;Initial Catalog=dbLogin;Integrated Security=True;";
	}

    public SqlDataReader GetDataReader(string sql)
    {
        SqlConnection cn = new SqlConnection(str);
        cn.Open();

        SqlCommand cmd = new SqlCommand(sql, cn);

        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();

        return dr;
    }
}