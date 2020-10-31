.class public Lorg/egret/plugin/mi/android/util/launcher/Md5Util;
.super Ljava/lang/Object;
.source "Md5Util.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkMd5(Ljava/io/File;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_14

    if-nez p1, :cond_6

    goto :goto_14

    :cond_6
    invoke-static {p0}, Lorg/egret/plugin/mi/android/util/launcher/Md5Util;->md5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0

    :cond_14
    :goto_14
    return v0
.end method

.method private static getMd5String([B)Ljava/lang/String;
    .registers 8

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_2e

    array-length v1, p0

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [C

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v1, :cond_28

    aget-byte v4, p0, v3

    mul-int/lit8 v5, v3, 0x2

    ushr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v0, v6

    aput-char v6, v2, v5

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    and-int/lit8 v6, v4, 0xf

    aget-char v6, v0, v6

    aput-char v6, v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_28
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    return-object v3

    :array_2e
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static md5(Ljava/io/File;)Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    const/4 v0, 0x0

    :try_start_9
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v3

    const/16 v3, 0x400

    new-array v3, v3, [B

    :goto_19
    invoke-virtual {v0, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    move v5, v4

    if-lez v4, :cond_25

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_19

    :cond_25
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-static {v4}, Lorg/egret/plugin/mi/android/util/launcher/Md5Util;->getMd5String([B)Ljava/lang/String;

    move-result-object v1
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2d} :catch_39
    .catchall {:try_start_9 .. :try_end_2d} :catchall_37

    nop

    :try_start_2e
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_36

    :catch_32
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :goto_36
    return-object v1

    :catchall_37
    move-exception v1

    goto :goto_4b

    :catch_39
    move-exception v2

    :try_start_3a
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_37

    nop

    if-eqz v0, :cond_49

    :try_start_40
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_49

    :catch_44
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4a

    :cond_49
    :goto_49
    nop

    :goto_4a
    return-object v1

    :goto_4b
    if-eqz v0, :cond_56

    :try_start_4d
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_56

    :catch_51
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_57

    :cond_56
    :goto_56
    nop

    :goto_57
    throw v1
.end method
