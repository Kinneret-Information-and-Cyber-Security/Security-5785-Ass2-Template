package il.ac.kinneret.hash.client;

import il.ac.kinneret.hash.client.util.Utils;

import java.util.Map;

/**
 * Performs the client side of an encrypt then hash file sending setup.
 */
public class AesHashingClient {

    /**
     * Performs the sending of the file
     * @param args Command line parameters. They are detailed in the usage message.
     */
    public static void main(String[] args) {
        Map<String, String> arguments = Utils.parseArguments(args);
        System.out.printf("Hello world!");
    }

    /**
     * Prints a usage message for the tool
     */
    private static void showUsage() {
        System.out.printf("Hello world!");
    }
}