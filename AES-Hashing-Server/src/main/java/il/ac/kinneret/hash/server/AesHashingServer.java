package il.ac.kinneret.hash.server;

import il.ac.kinneret.hash.server.util.Utils;

import java.util.Map;

public class AesHashingServer {

    public static void main(String[] args) {
        Map<String, String> arguments = Utils.parseArguments(args);
        System.out.println("Hello world!");
    }

    /**
     * Prints a usage message for the tool
     */
    private static void showUsage() {
        System.out.println("Hello world!");
    }
}