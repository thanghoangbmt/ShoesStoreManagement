package sample.socialaccess;

public class Constants {
    public static String GOOGLE_CLIENT_ID = "636020098503-in0rvu06sde1bcicvbvh4s5m12rv7slt.apps.googleusercontent.com";
    public static String GOOGLE_CLIENT_SECRET = "rWOFfxOVcziKOWTCNsn3hOEp";
    public static String GOOGLE_REDIRECT_URI = "http://localhost:8080/ShoesStoreManagement/GoogleLoginController";
    public static String GOOGLE_LINK_GET_TOKEN = "https://accounts.google.com/o/oauth2/token";
    public static String GOOGLE_LINK_GET_USER_INFO = "https://www.googleapis.com/oauth2/v1/userinfo?access_token=";
    public static String GOOGLE_GRANT_TYPE = "authorization_code";
    
    public static String FACEBOOK_APP_ID = "798224377662570";
    public static String FACEBOOK_APP_SECRET = "be75c8e4ba4e111bd0f2dcfb63d67882";
    public static String FACEBOOK_REDIRECT_URL = "http://localhost:8080/ShoesStoreManagement/FacebookLoginController";
    public static String FACEBOOK_LINK_GET_TOKEN = "https://graph.facebook.com/oauth/access_token?client_id=%s&client_secret=%s&redirect_uri=%s&code=%s&fields=email";
}
