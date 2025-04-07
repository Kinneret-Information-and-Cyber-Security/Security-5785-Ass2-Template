package il.ac.kinneret.hash.client.util;

/**
 * Constant values for the AES Hashing client
 * @author Michael J. May
 * @version 2.0
 */
public class Constants {

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
     * The encryption initialization vector
     */
    public static final String IV = "iv";
    /**
     * The file to send
     */
    public static final String IN_FILE = "infile";
    /**
     * IP address of the server
     */
    public static final String DEST = "dest";
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
    public static final String USAGE_CLIENT = "Usage: AES-Hashing-Client-5785 -dest=ip -port=p -hashalg=ha -cipher=c -key=k -iv=iv -infile=f -hmackey=hk -taglength=t\n" +
                                              "-taglength is required if using a GCM cipher suite\n" +
                                              "-hmackey is required if using an Hmac hash algorithm\n" +
                                              "iv, key, and hmackey must be in hexadecimal format";
    public static final String MISSING_PARAMETER = "Missing parameter.";
    public static final String MISSING_PARAMETER_HMACKEY = "Missing parameter: hmackey";
    public static final String ERROR_GCM_CIPHER_REQUIRES_A_TAG_LENGTH = "Error: GCM cipher requires a tag length";
    public static final String ERROR_PARSING_TAG_LENGTH = "Error parsing tag length: %s%n";
    public static final String ERROR_PARSING_DESTINATION_IP = "Error parsing destination IP: %s%n";
    public static final String ERROR_PARSING_PORT = "Error parsing port: %s%n";
    public static final String ERROR_PARSING_IV = "Error parsing IV: %s%n";
    public static final String ERROR_CREATING_TEMPORARY_FILE = "Error creating temporary file: %s%n";
    public static final String ERROR_UNSUPPORTED_CIPHER = "Error: Unsupported cipher: %s%n";
    public static final String ENCRYPTION_COMPLETED_ON_FILE = "Encryption completed on file %s%n";
    public static final String INVALID_PADDING_ALGORITHM = "Invalid padding algorithm: %s%n";
    public static final String INVALID_ALGORITHM_CHOSEN = "Invalid algorithm chosen: %s%n";
    public static final String ERROR_CREATING_KEY_OR_IV = "Error creating key or IV: %s%n";
    public static final String ERROR_READING_OR_WRITING_THE_FILES = "Error reading or writing the files: %s%n";
    public static final String FILE_ENCRYPTED_AND_HASHED_DIGEST = "File encrypted and hashed.  Digest: %s%n";
    public static final String ERROR_SENDING_DIGEST_IV_AND_FILE_TO_THE_SERVER = "Error sending digest, iv, and file to the server: %s%n";
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
}
