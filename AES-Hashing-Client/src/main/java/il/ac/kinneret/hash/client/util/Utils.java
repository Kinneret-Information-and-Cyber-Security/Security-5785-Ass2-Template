package il.ac.kinneret.hash.client.util;

import java.util.HashMap;
import java.util.Map;

/**
 * Basic utilities for the parameter parsing and algorithm handling
 * @author Michael J. May
 * @version 2.0
 */
public class Utils {
    /**
     * Take the arguments list from the command line and converts it into parameters in a Map based on the format -flag=value
     * @param args The arguments
     * @return A map of the flags and values (removing the - and = characters)
     */
    public static Map<String, String> parseArguments(String[] args) {

        HashMap<String, String> properties = new HashMap<>();
        for (String part : args) {
            try {
                // parse this by =
                String[] parts = part.split("=");
                // put the part after the - in the key value
                properties.put(parts[0].substring(parts[0].indexOf("-")+1), parts[1]);
            } catch (ArrayIndexOutOfBoundsException | NullPointerException e) {
                throw new IllegalArgumentException("Parameter provided is not in the correct format: " + part);
            }
        }
        return properties;
    }
}
