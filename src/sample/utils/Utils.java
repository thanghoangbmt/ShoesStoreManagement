package sample.utils;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Utils {
	public static String encriptPasswordBySHA256(String password) throws NoSuchAlgorithmException, NullPointerException {
        MessageDigest digest;
        byte[] encodedhash;
        StringBuffer hexString = new StringBuffer();
        digest = MessageDigest.getInstance("SHA-256");
        encodedhash = digest.digest(password.getBytes(StandardCharsets.UTF_8));
        for (int i = 0; i < encodedhash.length; i++) {
            String hex = Integer.toHexString(0xff & encodedhash[i]);
            if (hex.length() == 1) {
                hexString.append('0');
            }
            hexString.append(hex);
        }
        return hexString.toString();
    }
}
