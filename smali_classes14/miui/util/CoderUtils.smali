.class public Lmiui/util/CoderUtils;
.super Ljava/lang/Object;
.source "CoderUtils.java"


# static fields
.field public static final AES_ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final hexDigits:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    const-string v0, "0"

    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    const-string v4, "4"

    const-string v5, "5"

    const-string v6, "6"

    const-string v7, "7"

    const-string v8, "8"

    const-string v9, "9"

    const-string v10, "a"

    const-string v11, "b"

    const-string v12, "c"

    const-string v13, "d"

    const-string v14, "e"

    const-string v15, "f"

    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/CoderUtils;->hexDigits:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final base64AesEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    if-eqz p0, :cond_51

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_51

    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    if-eqz v1, :cond_50

    array-length v2, v1

    const/16 v3, 0x10

    if-eq v2, v3, :cond_16

    goto :goto_50

    :cond_16
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :try_start_1d
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    const-string v5, "0102030405060708"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v2, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v5, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    invoke-static {v6}, Lmiui/util/CoderUtils;->encodeBase64([B)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_43
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1d .. :try_end_43} :catch_4e
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1d .. :try_end_43} :catch_4c
    .catch Ljava/security/InvalidKeyException; {:try_start_1d .. :try_end_43} :catch_4a
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1d .. :try_end_43} :catch_48
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1d .. :try_end_43} :catch_46
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1d .. :try_end_43} :catch_44

    return-object v5

    :catch_44
    move-exception v3

    return-object v0

    :catch_46
    move-exception v3

    return-object v0

    :catch_48
    move-exception v3

    return-object v0

    :catch_4a
    move-exception v3

    return-object v0

    :catch_4c
    move-exception v3

    return-object v0

    :catch_4e
    move-exception v3

    return-object v0

    :cond_50
    :goto_50
    return-object v0

    :cond_51
    :goto_51
    return-object v0
.end method

.method public static final base6AesDecode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    if-eqz p0, :cond_50

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_50

    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    if-eqz v1, :cond_4f

    array-length v2, v1

    const/16 v3, 0x10

    if-eq v2, v3, :cond_16

    goto :goto_4f

    :cond_16
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :try_start_1d
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    const-string v5, "0102030405060708"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v2, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-static {p0}, Lmiui/util/CoderUtils;->decodeBase64Bytes(Ljava/lang/String;)[B

    move-result-object v5

    if-nez v5, :cond_39

    return-object v0

    :cond_39
    invoke-virtual {v3, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_42
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1d .. :try_end_42} :catch_4d
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1d .. :try_end_42} :catch_4b
    .catch Ljava/security/InvalidKeyException; {:try_start_1d .. :try_end_42} :catch_49
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1d .. :try_end_42} :catch_47
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1d .. :try_end_42} :catch_45
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1d .. :try_end_42} :catch_43

    return-object v7

    :catch_43
    move-exception v3

    return-object v0

    :catch_45
    move-exception v3

    return-object v0

    :catch_47
    move-exception v3

    return-object v0

    :catch_49
    move-exception v3

    return-object v0

    :catch_4b
    move-exception v3

    return-object v0

    :catch_4d
    move-exception v3

    return-object v0

    :cond_4f
    :goto_4f
    return-object v0

    :cond_50
    :goto_50
    return-object v0
.end method

.method private static byteArrayToString([B)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_15

    aget-byte v2, p0, v1

    invoke-static {v2}, Lmiui/util/CoderUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_15
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static byteToHexString(B)Ljava/lang/String;
    .registers 6

    move v0, p0

    if-gez v0, :cond_5

    add-int/lit16 v0, v0, 0x100

    :cond_5
    div-int/lit8 v1, v0, 0x10

    rem-int/lit8 v2, v0, 0x10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lmiui/util/CoderUtils;->hexDigits:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lmiui/util/CoderUtils;->hexDigits:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static final decodeBase64(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static final decodeBase64Bytes(Ljava/lang/String;)[B
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static final encodeBase64(Ljava/lang/String;)[B
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static final encodeBase64([B)[B
    .registers 2

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static final encodeBase64Bytes(Ljava/lang/String;)[B
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static final encodeMD5(Ljava/io/File;)Ljava/lang/String;
    .registers 7

    const/16 v0, 0x400

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_6
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_b} :catch_57

    nop

    :try_start_c
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    :goto_12
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v1, v5

    if-lez v5, :cond_1e

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v1}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_1d} :catch_40
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1d} :catch_32
    .catchall {:try_start_c .. :try_end_1d} :catchall_30

    goto :goto_12

    :cond_1e
    :try_start_1e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_27

    :catch_22
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    nop

    :goto_27
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lmiui/util/CoderUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :catchall_30
    move-exception v2

    goto :goto_4e

    :catch_32
    move-exception v4

    :try_start_33
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_30

    nop

    :try_start_37
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_3f

    :catch_3b
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    :goto_3f
    return-object v2

    :catch_40
    move-exception v4

    :try_start_41
    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_30

    nop

    :try_start_45
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_4d

    :catch_49
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    :goto_4d
    return-object v2

    :goto_4e
    :try_start_4e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_56

    :catch_52
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :goto_56
    throw v2

    :catch_57
    move-exception v3

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-object v2
.end method

.method public static final encodeMD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_27

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_27

    :cond_a
    const/4 v1, 0x0

    :try_start_b
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_11
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_11} :catch_22

    nop

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lmiui/util/CoderUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :catch_22
    move-exception v2

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    return-object v0

    :cond_27
    :goto_27
    return-object v0
.end method

.method public static final encodeSHA(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_27

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_27

    :cond_a
    const/4 v1, 0x0

    :try_start_b
    const-string v2, "SHA"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_11
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_11} :catch_22

    nop

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lmiui/util/CoderUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :catch_22
    move-exception v2

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    return-object v0

    :cond_27
    :goto_27
    return-object v0
.end method

.method public static final encodeSHABytes(Ljava/lang/String;)[B
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_23

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_23

    :cond_a
    const/4 v1, 0x0

    :try_start_b
    const-string v2, "SHA"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_11
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_11} :catch_1e

    nop

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    return-object v1

    :catch_1e
    move-exception v2

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    return-object v0

    :cond_23
    :goto_23
    return-object v0
.end method
