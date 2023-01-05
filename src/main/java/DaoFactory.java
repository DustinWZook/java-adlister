import java.sql.SQLException;

public class DaoFactory {
    private static Ads adsDao;

    public static Ads getAdsDao() throws SQLException {
        Config configObj = new Config();
        if (adsDao == null) {
            adsDao = new MySQLAdsDao(configObj);
        }
        return adsDao;
    }
}
