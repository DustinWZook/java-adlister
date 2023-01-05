import java.sql.*;
import com.mysql.cj.jdbc.Driver;

import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads{
private Connection connectionObj;

public MySQLAdsDao(){

}
public MySQLAdsDao(Config configObj) throws SQLException {
    DriverManager.registerDriver(new Driver());
    this.connectionObj = DriverManager.getConnection(
            configObj.getUrl(),
            configObj.getUser(),
            configObj.getPassword()
    );
}
    @Override
    public List<Ad> all() throws SQLException {
        Statement statementObj = connectionObj.createStatement();
        ResultSet resultSetObj = statementObj.executeQuery("SELECT * from ads");

        List<Ads> myAds = new ArrayList<>();

        while (resultSetObj.next()){
            myAds.add(new Ad(resultSetObj.getLong("userId"),resultSetObj.getString("title"),resultSetObj.getString("description")));
        }
        return myAds;
    }

    @Override
    public long insert(Ad ad) {

        return 0;
    }
}
