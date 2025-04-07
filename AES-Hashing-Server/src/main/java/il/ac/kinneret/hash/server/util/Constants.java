package il.ac.kinneret.hash.server.util;

/**
 * Constant values for the AES Hashing server
 * @author Michael J. May
 * @version 2.0
 */
public class Constants {
    /**
     * The file to write the decrypted bytes out to
     */
    public static final String OUT_FILE = "outfile";
    /**
     * The IP address to listen on
     */
    public static final String IP = "ip";
    /**
     * The hash algorithm to use
     */
    public static final String HASH_ALG = "hashalg";
    /**
     * The cipher suite to use
     */
    public static final String CIPHER = "cipher";
    /**
     * The encryption key
     */
    public static final String KEY = "key";
    /**
     * Port of the server
     */
    public static final String PORT = "port";
    /**
     * The key use for HMAC calcualtions
     */
    public static final String HMAC_KEY = "hmackey";
    /**
     * The length of the tag for GCM calculations
     */
    public static final String TAG_LENGTH = "taglength";
    /**
     * The cipher block chaining algorithm
     */
    public static final String CBC = "cbc";
    /**
     * The Galois counter mode algorithm
     */
    public static final String GCM = "gcm";
    /**
     * The counter algorithm
     */
    public static final String CTR = "ctr";
    public static final String MISSING_PARAMETER_HASH_ALGORITHM = "Missing parameter hash algorithm";
    public static final String MISSING_PARAMETER_CIPHER = "Missing parameter cipher.";
    public static final String MISSING_PARAMETER_KEY = "Missing parameter key";
    public static final String MISSING_PARAMETER_OUTFILE = "Missing parameter outfile";
    public static final String MISSING_PARAMETER = "Missing parameter.";
    public static final String MISSING_PARAMETER_HMACKEY = "Missing parameter hmackey";
    public static final String ERROR_GCM_CIPHER_REQUIRES_A_TAG_LENGTH = "Error: GCM cipher requires a tag length";
    public static final String ERROR_PARSING_TAG_LENGTH = "Error parsing tag length: %s%n";
    public static final String ERROR_PARSING_IP = "Error parsing IP: %s%n";
    public static final String ERROR_PARSING_PORT = "Error parsing port: %s%n";
    public static final String UNRECOGNIZED_ALGORITHM = "Unrecognized algorithm: %s%n";
    public static final String ERROR_CREATING_TEMPORARY_FILE = "Error creating temporary file: %s%n";
    public static final String ERROR_ACCEPTING_INCOMING_CONNECTIONS = "Error accepting incoming connections: %s%n";
    public static final String ERROR_READ_LESS_THAN_THE_DIGEST_LENGTH_REQUIRED = "Error: Read less than the digest length required: %s%n";
    public static final String ERROR_DIDN_T_READ_WHOLE_IV = "Error: Didn't read whole IV: %s%n";
    public static final String ERROR_RECEIVING_DIGEST_IV_AND_FILE_FROM_THE_CLIENT = "Error receiving digest, iv, and file from the client: %s%n";
    public static final String IS_VALID_RECEIVED_DIGEST_COMPUTED_DIGEST = "%s is valid received digest %s computed digest %s%n";
    public static final String IS_BAD_RECEIVED_DIGEST_COMPUTED_DIGEST = "%s is bad received digest %s computed digest %s%n";
    public static final String USAGE_AES_HASHING_SERVER =
            "Usage: AES-Hashing-Server-5785 -ip=ip -port=p -hashalg=ha -cipher=c -key=k -outfile=f -hmackey=hk -taglength=t\n" +
            "-taglength is required if using a GCM cipher suite\n" +
            "-hmackey is required if using an Hmac hash algorithm\n" +
            "key and hmackey must be in hexadecimal format";
    public static final String ERROR_UNSUPPORTED_CIPHER = "Error: Unsupported cipher: %s%n";
    public static final String DECRYPTION_COMPLETED_ON_FILE = "Decryption completed on file %s%n";
    public static final String INVALID_PADDING_ALGORITHM = "Invalid padding algorithm: %s%n";
    public static final String INVALID_ALGORITHM_CHOSEN = "Invalid algorithm chosen: %s%n";
    public static final String ERROR_CREATING_KEY_OR_IV = "Error creating key or IV: %s%n";
    public static final String ERROR_READING_OR_WRITING_THE_FILES = "Error reading or writing the files: %s%n";
    public static final String ERROR_CANT_HASH_WITH_ALGORITHM = "Error: Can't hash with algorithm %s: %s%n";
    public static final String ERROR_CANT_FIND_FILE = "Error: Can't find file: %s%n";
    public static final String ERROR_READING_FILE = "Error reading file: %s%n";
    public static final String ERROR_COMPUTING_HMAC_ON_THE_FILE = "Error computing HMAC on the file: %s%n";
    public static final String ERROR_CANT_FIND_ALGORITHM = "Error: Can't find algorithm %s: %s%n";
    public static final String ERROR_INVALID_HMAC_KEY = "Error: Invalid HMAC key %s: %s%n";
    public static final String ERROR_INVALID_KEY_WHEN_ENCRYPTING = "Error: Invalid key when encrypting: %s%n";
    public static final String ERROR_IN_PADDING_WHEN_ENCRYPTING = "Error in padding when encrypting: %s%n";
    public static final String ERROR_IN_BLOCK_SIZE_WHEN_ENCRYPTING = "Error in block size when encrypting: %s%n";
    public static final String ERROR_IN_IV_WHEN_ENCRYPTING = "Error in IV when encrypting: %s%n";
    public static final String ERROR_INVALID_KEY_WHEN_DECRYPTING = "Error: Invalid key when decrypting: %s%n";
    public static final String ERROR_IN_PADDING_WHEN_DECRYPTING = "Error in padding when decrypting: %s%n";
    public static final String ERROR_IN_BLOCK_SIZE_WHEN_DECRYPTING = "Error in block size when decrypting: %s%n";
    public static final String ERROR_IN_IV_WHEN_DECRYPTING = "Error in IV when decrypting: %s%n";
    public static final String ERROR_DECRYPTING = "Error decrypting: %s%n";
    public static final String ERROR_IN_FINISHING_DECRYPTION = "Error in finishing decryption: %s%n";
    public static final String ERROR_PROCESSING_FILE_DURING_ENCRYPTION = "Error processing file during encryption: %s%n";
    public static final String ERROR_ENCRYPTING = "Error encrypting: %s%n";
    public static final String DECRYPTION_FAILED = "Decryption failed.%n";
}
