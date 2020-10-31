.class public Landroid/os/updater/MD5;
.super Ljava/lang/Object;
.source "MD5.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateMD5(Ljava/io/File;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    const/16 v3, 0x2000

    new-array v3, v3, [B

    const/4 v4, 0x0

    :goto_13
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v4, v5

    const/4 v6, 0x0

    if-lez v5, :cond_1f

    invoke-virtual {v2, v3, v6, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_13

    :cond_1f
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    new-instance v7, Ljava/math/BigInteger;

    const/4 v8, 0x1

    invoke-direct {v7, v8, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    const-string v9, "%32s"

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v10, 0x10

    invoke-virtual {v7, v10}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v6

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x20

    const/16 v9, 0x30

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6
    :try_end_41
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_41} :catch_6b
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_41} :catch_64
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_41} :catch_4e
    .catchall {:try_start_2 .. :try_end_41} :catchall_4c

    move-object v0, v6

    nop

    :try_start_43
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    :cond_46
    :goto_46
    goto :goto_72

    :catch_47
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_72

    :catchall_4c
    move-exception v2

    goto :goto_57

    :catch_4e
    move-exception v2

    :try_start_4f
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unable to process file for MD5"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_4c

    :goto_57
    if-eqz v1, :cond_62

    :try_start_59
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_62

    :catch_5d
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_63

    :cond_62
    :goto_62
    nop

    :goto_63
    throw v2

    :catch_64
    move-exception v2

    if-eqz v1, :cond_46

    :try_start_67
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_46

    :catch_6b
    move-exception v2

    if-eqz v1, :cond_46

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_71} :catch_47

    goto :goto_46

    :goto_72
    return-object v0
.end method

.method public static getMd5Digest(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, ""

    :try_start_2
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    const-string v3, "%1$032X"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3
    :try_end_24
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_24} :catch_26

    move-object v0, v3

    goto :goto_27

    :catch_26
    move-exception v1

    :goto_27
    return-object v0
.end method

.method public static getMd5Digest([B)Ljava/lang/String;
    .registers 7

    const-string v0, ""

    :try_start_2
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    const-string v3, "%1$032X"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_22

    move-object v0, v3

    goto :goto_23

    :catch_22
    move-exception v1

    :goto_23
    return-object v0
.end method
