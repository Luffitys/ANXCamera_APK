.class public Lmiui/os/CustVerifier;
.super Ljava/lang/Object;
.source "CustVerifier.java"


# static fields
.field private static final CUST_PATH:Ljava/lang/String;

.field private static final CUST_SIGNATURE_FILE:Ljava/lang/String;

.field private static final DEBUG:Z

.field private static final INT_SIZE:I = 0x4

.field public static final MODE_DELETE:I = 0x1

.field public static final MODE_NORMAL:I = 0x0

.field private static final RSANUMBYTES:I = 0x100

.field private static final TAG:Ljava/lang/String; = "CustVerifier"

.field private static final VERIFY_KEY_FILE:Ljava/lang/String; = "/verity_key"

.field private static sInstance:Lmiui/os/CustVerifier;


# instance fields
.field private mPubKey:Ljava/security/PublicKey;

.field private mSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lmiui/os/CustVerifier;->DEBUG:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/cust/cust/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmiui/os/Build;->getCustVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/os/CustVerifier;->CUST_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/os/CustVerifier;->CUST_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sign_customized_applist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/os/CustVerifier;->CUST_SIGNATURE_FILE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a2b(B)B
    .registers 3

    const/16 v0, 0x30

    if-lt p1, v0, :cond_c

    const/16 v0, 0x39

    if-gt p1, v0, :cond_c

    add-int/lit8 v0, p1, -0x30

    int-to-byte v0, v0

    return v0

    :cond_c
    const/16 v0, 0x61

    if-lt p1, v0, :cond_1a

    const/16 v0, 0x66

    if-gt p1, v0, :cond_1a

    add-int/lit8 v0, p1, -0x61

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    return v0

    :cond_1a
    const/16 v0, 0x41

    if-lt p1, v0, :cond_28

    const/16 v0, 0x46

    if-gt p1, v0, :cond_28

    add-int/lit8 v0, p1, -0x41

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    return v0

    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method private b2a(I)B
    .registers 3

    const/16 v0, 0xa

    if-ge p1, v0, :cond_8

    add-int/lit8 v0, p1, 0x30

    int-to-byte v0, v0

    return v0

    :cond_8
    add-int/lit8 v0, p1, -0xa

    add-int/lit8 v0, v0, 0x61

    int-to-byte v0, v0

    return v0
.end method

.method private bytesToHexString([B)Ljava/lang/String;
    .registers 7

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    array-length v3, p1

    if-ge v2, v3, :cond_27

    add-int/lit8 v3, v1, 0x1

    aget-byte v4, p1, v2

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-direct {p0, v4}, Lmiui/os/CustVerifier;->b2a(I)B

    move-result v4

    aput-byte v4, v0, v1

    add-int/lit8 v1, v3, 0x1

    aget-byte v4, p1, v2

    and-int/lit8 v4, v4, 0xf

    invoke-direct {p0, v4}, Lmiui/os/CustVerifier;->b2a(I)B

    move-result v4

    aput-byte v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_27
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method private checkCustSignature()V
    .registers 13

    const-string v0, "CustVerifier"

    const-string v1, "/verity_key"

    invoke-direct {p0, v1}, Lmiui/os/CustVerifier;->loadVerifyKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    new-instance v3, Ljava/io/File;

    sget-object v4, Lmiui/os/CustVerifier;->CUST_PATH:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_14
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_17
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_72

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    sget-boolean v6, Lmiui/os/CustVerifier;->DEBUG:Z

    if-eqz v6, :cond_32

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    array-length v6, v5

    const/4 v7, 0x0

    :goto_34
    if-ge v7, v6, :cond_71

    aget-object v8, v5, v7

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-boolean v10, Lmiui/os/CustVerifier;->DEBUG:Z

    if-eqz v10, :cond_59

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_63

    invoke-virtual {v2, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    :cond_63
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_6e

    const-string v10, ".apk"

    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_6e} :catch_73

    :cond_6e
    :goto_6e
    add-int/lit8 v7, v7, 0x1

    goto :goto_34

    :cond_71
    goto :goto_17

    :cond_72
    goto :goto_8c

    :catch_73
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkCustSignature occurs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8c
    return-void
.end method

.method private getCustApkSignatures(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "CustVerifier"

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v3, v0

    const/4 v4, 0x0

    :try_start_b
    new-instance v0, Ljava/io/File;

    move-object/from16 v5, p1

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, v6}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_18} :catch_103
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_18} :catch_f7
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_18} :catch_d1
    .catchall {:try_start_b .. :try_end_18} :catchall_cf

    move-object v7, v0

    :goto_19
    :try_start_19
    invoke-virtual {v7}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v0

    if-eqz v0, :cond_bb

    invoke-virtual {v7}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v0

    const-string v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-ne v9, v10, :cond_37

    aget-object v9, v8, v11

    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    :cond_37
    aget-object v9, v8, v11

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v12

    long-to-int v10, v12

    aget-object v12, v8, v11

    invoke-direct {v1, v12}, Lmiui/os/CustVerifier;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v12

    sub-int v13, v10, v9

    invoke-direct {v1, v6, v13, v12}, Lmiui/os/CustVerifier;->verifyFileBlockSignature(Ljava/io/File;I[B)Z

    move-result v13

    if-nez v13, :cond_54

    const-string v11, "cust signature file is cracked"

    move-object v4, v11

    goto :goto_bb

    :cond_54
    sget-boolean v14, Lmiui/os/CustVerifier;->DEBUG:Z

    if-eqz v14, :cond_ad

    const-string v14, "cust apk and signatures:"

    invoke-static {v2, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_65
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_aa

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    const-string v0, "\t"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x14

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catchall {:try_start_19 .. :try_end_a2} :catchall_c9

    move-object/from16 v1, p0

    move v11, v5

    move-object/from16 v0, v16

    move-object/from16 v5, p1

    goto :goto_65

    :cond_aa
    move-object/from16 v16, v0

    goto :goto_af

    :cond_ad
    move-object/from16 v16, v0

    :goto_af
    nop

    :try_start_b0
    invoke-virtual {v7}, Ljava/util/Scanner;->close()V
    :try_end_b3
    .catch Ljava/lang/NullPointerException; {:try_start_b0 .. :try_end_b3} :catch_103
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b3} :catch_f7
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b3} :catch_d1
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_cf

    if-nez v4, :cond_b7

    const-string v4, "Cust signature read finish."

    :cond_b7
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_bb
    :goto_bb
    :try_start_bb
    invoke-virtual {v7}, Ljava/util/Scanner;->close()V

    nop

    if-nez v4, :cond_c4

    const-string v0, "cust signature file is not signed"
    :try_end_c3
    .catch Ljava/lang/NullPointerException; {:try_start_bb .. :try_end_c3} :catch_103
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_c3} :catch_f7
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_c3} :catch_d1
    .catchall {:try_start_bb .. :try_end_c3} :catchall_cf

    move-object v4, v0

    :cond_c4
    if-nez v4, :cond_10f

    const-string v4, "Cust signature read finish."

    goto :goto_10f

    :catchall_c9
    move-exception v0

    :try_start_ca
    invoke-virtual {v7}, Ljava/util/Scanner;->close()V

    nop

    throw v0
    :try_end_cf
    .catch Ljava/lang/NullPointerException; {:try_start_ca .. :try_end_cf} :catch_103
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_cf} :catch_f7
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_cf} :catch_d1
    .catchall {:try_start_ca .. :try_end_cf} :catchall_cf

    :catchall_cf
    move-exception v0

    goto :goto_115

    :catch_d1
    move-exception v0

    :try_start_d2
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to read cust signature file: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_ee
    .catchall {:try_start_d2 .. :try_end_ee} :catchall_cf

    move-object v0, v1

    if-nez v0, :cond_f5

    const-string v0, "Cust signature read finish."

    move-object v4, v0

    goto :goto_10f

    :cond_f5
    move-object v4, v0

    goto :goto_10f

    :catch_f7
    move-exception v0

    :try_start_f8
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "failed to read cust signature file: IOException"

    move-object v4, v1

    goto :goto_10f

    :catch_103
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "cust signature file not found"
    :try_end_10d
    .catchall {:try_start_f8 .. :try_end_10d} :catchall_cf

    move-object v4, v1

    nop

    :cond_10f
    :goto_10f
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    const/4 v0, 0x0

    return-object v0

    :goto_115
    if-nez v4, :cond_119

    const-string v4, "Cust signature read finish."

    :cond_119
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method public static declared-synchronized getInstance()Lmiui/os/CustVerifier;
    .registers 3

    const-class v0, Lmiui/os/CustVerifier;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lmiui/os/CustVerifier;->sInstance:Lmiui/os/CustVerifier;

    if-nez v1, :cond_14

    new-instance v1, Lmiui/os/CustVerifier;

    invoke-direct {v1}, Lmiui/os/CustVerifier;-><init>()V

    invoke-direct {v1}, Lmiui/os/CustVerifier;->init()Z

    move-result v2

    if-eqz v2, :cond_14

    sput-object v1, Lmiui/os/CustVerifier;->sInstance:Lmiui/os/CustVerifier;

    :cond_14
    sget-object v1, Lmiui/os/CustVerifier;->sInstance:Lmiui/os/CustVerifier;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v0

    return-object v1

    :catchall_18
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getSignPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "\\/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    sget-object v2, Lmiui/os/CustVerifier;->CUST_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".apk"

    const-string v4, ".sig"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private hexStringToBytes(Ljava/lang/String;)[B
    .registers 11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    return-object v0

    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_19
    array-length v5, v2

    sub-int/2addr v5, v1

    if-ge v4, v5, :cond_37

    aget-byte v5, v2, v4

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v2, v6

    invoke-direct {p0, v5}, Lmiui/os/CustVerifier;->a2b(B)B

    move-result v7

    shl-int/lit8 v7, v7, 0x4

    invoke-direct {p0, v6}, Lmiui/os/CustVerifier;->a2b(B)B

    move-result v8

    or-int/2addr v7, v8

    int-to-byte v7, v7

    add-int/lit8 v8, v3, 0x1

    aput-byte v7, v0, v3

    add-int/lit8 v4, v4, 0x2

    move v3, v8

    goto :goto_19

    :cond_37
    return-object v0
.end method

.method private init()Z
    .registers 4

    const-string v0, "/verity_key"

    invoke-direct {p0, v0}, Lmiui/os/CustVerifier;->loadVerifyKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lmiui/os/CustVerifier;->mPubKey:Ljava/security/PublicKey;

    const/4 v1, 0x0

    if-nez v0, :cond_13

    const-string v0, "CustVerifier"

    const-string v2, "failed to load verify key"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_13
    sget-object v0, Lmiui/os/CustVerifier;->CUST_SIGNATURE_FILE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lmiui/os/CustVerifier;->getCustApkSignatures(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lmiui/os/CustVerifier;->mSignatures:Ljava/util/HashMap;

    if-eqz v0, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    return v1
.end method

.method private loadSignatureFromFile(Ljava/io/File;)Ljava/lang/String;
    .registers 8

    const/16 v0, 0x200

    :try_start_2
    new-array v0, v0, [B

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_29

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_b
    :try_start_b
    array-length v4, v0

    sub-int/2addr v4, v2

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    move v3, v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_19

    add-int/2addr v2, v3

    array-length v4, v0
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_23

    if-lt v2, v4, :cond_b

    :cond_19
    :try_start_19
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    nop

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    return-object v2

    :catchall_23
    move-exception v2

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    nop

    throw v2
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_29} :catch_29

    :catch_29
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CustVerifier"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private loadVerifyKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 19

    const-string v1, "CustVerifier"

    const/4 v2, 0x0

    :try_start_3
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v3, "r"
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_106

    move-object/from16 v4, p1

    :try_start_9
    invoke-direct {v0, v4, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_104

    move-object v3, v0

    const/4 v0, 0x4

    :try_start_e
    new-array v5, v0, [B

    invoke-virtual {v3, v5}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v6

    array-length v7, v5

    if-eq v6, v7, :cond_21

    const-string v0, "EOF when read len bytes"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_fe

    nop

    :try_start_1d
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_104

    return-object v2

    :cond_21
    const/4 v6, 0x0

    :try_start_22
    aget-byte v7, v5, v6

    const/4 v8, 0x1

    aget-byte v9, v5, v8

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v7, v9

    const/4 v9, 0x2

    aget-byte v10, v5, v9

    const/16 v11, 0x10

    shl-int/2addr v10, v11

    or-int/2addr v7, v10

    const/4 v10, 0x3

    aget-byte v12, v5, v10

    shl-int/lit8 v12, v12, 0x18

    or-int/2addr v7, v12

    mul-int/2addr v7, v0

    if-lez v7, :cond_f3

    const/16 v12, 0x100

    if-le v7, v12, :cond_40

    goto/16 :goto_f3

    :cond_40
    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v13

    if-eq v13, v0, :cond_50

    const-string v0, "can\'t skip n0inv bytes"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catchall {:try_start_22 .. :try_end_4b} :catchall_fe

    nop

    :try_start_4c
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_104

    return-object v2

    :cond_50
    :try_start_50
    new-array v0, v7, [B

    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v13

    array-length v14, v0

    if-eq v13, v14, :cond_63

    const-string v6, "EOF when read mod bytes"

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_50 .. :try_end_5e} :catchall_fe

    nop

    :try_start_5f
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_62} :catch_104

    return-object v2

    :cond_63
    const/4 v13, 0x0

    add-int/lit8 v14, v7, -0x1

    :goto_66
    if-ge v13, v14, :cond_75

    :try_start_68
    aget-byte v15, v0, v13

    aget-byte v16, v0, v14

    aput-byte v16, v0, v13

    aput-byte v15, v0, v14

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v14, v14, -0x1

    goto :goto_66

    :cond_75
    new-instance v13, Ljava/math/BigInteger;

    invoke-direct {v13, v8, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    rsub-int v14, v7, 0x100

    add-int/2addr v14, v12

    invoke-virtual {v3, v14}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v12

    if-eq v12, v14, :cond_8d

    const-string v6, "can\'t skip rr bytes"

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catchall {:try_start_68 .. :try_end_88} :catchall_fe

    nop

    :try_start_89
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8c} :catch_104

    return-object v2

    :cond_8d
    :try_start_8d
    invoke-virtual {v3, v5}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v12

    array-length v15, v5

    if-eq v12, v15, :cond_9e

    const-string v6, "EOF when read exp bytes"

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catchall {:try_start_8d .. :try_end_99} :catchall_fe

    nop

    :try_start_9a
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9d} :catch_104

    return-object v2

    :cond_9e
    :try_start_9e
    aget-byte v6, v5, v6

    aget-byte v8, v5, v8

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v6, v8

    aget-byte v8, v5, v9

    shl-int/2addr v8, v11

    or-int/2addr v6, v8

    aget-byte v8, v5, v10

    shl-int/lit8 v8, v8, 0x18

    or-int/2addr v6, v8

    int-to-long v8, v6

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    new-instance v9, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v9, v13, v8}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string v10, "RSA"

    invoke-static {v10}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v12

    sget-boolean v15, Lmiui/os/CustVerifier;->DEBUG:Z

    if-eqz v15, :cond_ee

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadVerifyKey: \n\tlen: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n\tmodulus: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\tpublic exponent: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ee
    .catchall {:try_start_9e .. :try_end_ee} :catchall_fe

    :cond_ee
    nop

    :try_start_ef
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_f2} :catch_104

    return-object v12

    :cond_f3
    :goto_f3
    :try_start_f3
    const-string v0, "invalid len bytes"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f8
    .catchall {:try_start_f3 .. :try_end_f8} :catchall_fe

    nop

    :try_start_f9
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    const/4 v1, 0x0

    return-object v1

    :catchall_fe
    move-exception v0

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    nop

    throw v0
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_104} :catch_104

    :catch_104
    move-exception v0

    goto :goto_109

    :catch_106
    move-exception v0

    move-object/from16 v4, p1

    :goto_109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occur when load verify key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private verifyFileBlockSignature(Ljava/io/File;I[B)Z
    .registers 15

    const-string v0, " "

    const/4 v1, 0x0

    const-string v2, "CustVerifier"

    if-nez p2, :cond_d

    const-string v0, "verifyFileBlockSignature get 0-sized block"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_d
    :try_start_d
    const-string v3, "SHA256withRSA"

    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3

    iget-object v4, p0, Lmiui/os/CustVerifier;->mPubKey:Ljava/security/PublicKey;

    invoke-virtual {v3, v4}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    const/16 v4, 0x1000

    new-array v4, v4, [B

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_21} :catch_81

    const/4 v6, 0x0

    :cond_22
    :try_start_22
    invoke-virtual {v5, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    move v8, v7

    const/4 v9, -0x1

    if-eq v7, v9, :cond_4a

    add-int v7, v8, v6

    if-le v7, p2, :cond_30

    sub-int v8, p2, v6

    :cond_30
    invoke-virtual {v3, v4, v1, v8}, Ljava/security/Signature;->update([BII)V

    add-int/2addr v6, v8

    if-ne v6, p2, :cond_22

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "total: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    invoke-virtual {v3, p3}, Ljava/security/Signature;->verify([B)Z

    move-result v7

    sget-boolean v9, Lmiui/os/CustVerifier;->DEBUG:Z

    if-eqz v9, :cond_76

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "verify "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catchall {:try_start_22 .. :try_end_76} :catchall_7b

    :cond_76
    nop

    :try_start_77
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    return v7

    :catchall_7b
    move-exception v0

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    nop

    throw v0
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_81} :catch_81

    :catch_81
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occurs when verify file block: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private verifyFileSignature(Ljava/lang/String;[B)Z
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "CustVerifier"

    const-string v1, "verifyFileSignature get null file"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_f
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {p0, v0, v1, p2}, Lmiui/os/CustVerifier;->verifyFileBlockSignature(Ljava/io/File;I[B)Z

    move-result v2

    return v2
.end method

.method private verifyPathSignature(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    :try_start_0
    const-string v0, "SHA256withRSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    iget-object v1, p0, Lmiui/os/CustVerifier;->mPubKey:Ljava/security/PublicKey;

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    invoke-direct {p0, p2}, Lmiui/os/CustVerifier;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    return v1

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CustVerifier"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public verifyApkSignatue(Ljava/lang/String;I)Z
    .registers 11

    invoke-direct {p0, p1}, Lmiui/os/CustVerifier;->getSignPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Sig path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CustVerifier"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    if-nez p2, :cond_7f

    const/4 v5, 0x0

    if-eqz v3, :cond_42

    invoke-direct {p0, v1}, Lmiui/os/CustVerifier;->loadSignatureFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "has sig File1 : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    :cond_42
    iget-object v6, p0, Lmiui/os/CustVerifier;->mSignatures:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "has sig File2 : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5f
    if-nez v5, :cond_76

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no signature found for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_76
    invoke-direct {p0, v5}, Lmiui/os/CustVerifier;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lmiui/os/CustVerifier;->verifyFileSignature(Ljava/lang/String;[B)Z

    move-result v2

    return v2

    :cond_7f
    const/4 v2, 0x1

    if-ne p2, v2, :cond_8e

    if-eqz v3, :cond_8d

    invoke-direct {p0, v1}, Lmiui/os/CustVerifier;->loadSignatureFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lmiui/os/CustVerifier;->verifyPathSignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    return v4

    :cond_8d
    return v4

    :cond_8e
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "not supported mode"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
