.class public Landroid/util/apk/ApkSignatureVerifier;
.super Ljava/lang/Object;
.source "ApkSignatureVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/apk/ApkSignatureVerifier$Result;
    }
.end annotation


# static fields
.field private static final NUMBER_OF_CORES:I

.field private static final TAG:Ljava/lang/String; = "ApkSignatureVerifier"

.field private static final sBuffer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field

.field private static sIsPerfLockAcquired:Z

.field private static sPerfBoost:Landroid/util/BoostFramework;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Landroid/util/apk/ApkSignatureVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_13

    goto :goto_1b

    :cond_13
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    :goto_1b
    sput v1, Landroid/util/apk/ApkSignatureVerifier;->NUMBER_OF_CORES:I

    const/4 v0, 0x0

    sput-object v0, Landroid/util/apk/ApkSignatureVerifier;->sPerfBoost:Landroid/util/BoostFramework;

    const/4 v0, 0x0

    sput-boolean v0, Landroid/util/apk/ApkSignatureVerifier;->sIsPerfLockAcquired:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    sget v0, Landroid/util/apk/ApkSignatureVerifier;->NUMBER_OF_CORES:I

    return v0
.end method

.method static synthetic access$100(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/util/apk/ApkSignatureVerifier;->loadCertificates(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    invoke-static {p0}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v0

    return-object v0
.end method

.method private static closeQuietly(Landroid/util/jar/StrictJarFile;)V
    .registers 2

    if-eqz p0, :cond_7

    :try_start_2
    invoke-virtual {p0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    move-exception v0

    :cond_7
    :goto_7
    return-void
.end method

.method private static convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    array-length v0, p0

    new-array v0, v0, [Landroid/content/pm/Signature;

    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_13

    new-instance v2, Landroid/content/pm/Signature;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>([Ljava/security/cert/Certificate;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_13
    return-object v0
.end method

.method public static generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/security/DigestException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B

    move-result-object v0
    :try_end_4
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    invoke-static {p0, p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B

    move-result-object v0

    return-object v0
.end method

.method public static generateApkVerityRootHash(Ljava/lang/String;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->generateApkVerityRootHash(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_4
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    :try_start_6
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->generateApkVerityRootHash(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_a
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_6 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public static getMinimumSignatureSchemeVersionForTargetSdk(I)I
    .registers 2

    const/16 v0, 0x1e

    if-lt p0, v0, :cond_6

    const/4 v0, 0x2

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public static getVerityRootHash(Ljava/lang/String;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->getVerityRootHash(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_4
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    :try_start_6
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getVerityRootHash(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_a
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_6 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method private static loadCertificates(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    invoke-static {v0}, Landroid/util/apk/ApkSignatureVerifier;->readFullyIgnoringContents(Ljava/io/InputStream;)V

    invoke-virtual {p0, p1}, Landroid/util/jar/StrictJarFile;->getCertificateChains(Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;

    move-result-object v1
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_d} :catch_13
    .catchall {:try_start_1 .. :try_end_d} :catchall_11

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v1

    :catchall_11
    move-exception v1

    goto :goto_39

    :catch_13
    move-exception v1

    :try_start_14
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v3, -0x66

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed reading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_39
    .catchall {:try_start_14 .. :try_end_39} :catchall_11

    :goto_39
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method private static readFullyIgnoringContents(Ljava/io/InputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/util/apk/ApkSignatureVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_f

    const/16 v1, 0x1000

    new-array v0, v1, [B

    :cond_f
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_11
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {p0, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    move v1, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1d

    add-int/2addr v2, v1

    goto :goto_11

    :cond_1d
    sget-object v3, Landroid/util/apk/ApkSignatureVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static unsafeGetCertsWithoutVerification(Ljava/lang/String;I)Landroid/content/pm/PackageParser$SigningDetails;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/util/apk/ApkSignatureVerifier;->verifySignatures(Ljava/lang/String;IZ)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v0

    return-object v0
.end method

.method public static verify(Ljava/lang/String;I)Landroid/content/pm/PackageParser$SigningDetails;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/util/apk/ApkSignatureVerifier;->verifySignatures(Ljava/lang/String;IZ)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v0

    return-object v0
.end method

.method private static verifySignatures(Ljava/lang/String;IZ)Landroid/content/pm/PackageParser$SigningDetails;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    const-string v0, " or newer for package "

    const-string v1, "No signature found in package of version "

    const/4 v2, 0x4

    const/16 v3, -0x67

    if-gt p1, v2, :cond_4b

    :try_start_9
    invoke-static {p0, p1, p2}, Landroid/util/apk/ApkSignatureVerifier;->verifyV4Signature(Ljava/lang/String;IZ)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v0
    :try_end_d
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_9 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v4

    if-ge p1, v2, :cond_34

    const/4 v2, 0x3

    if-gt p1, v2, :cond_19

    invoke-static {p0, p1, p2}, Landroid/util/apk/ApkSignatureVerifier;->verifyV3AndBelowSignatures(Ljava/lang/String;IZ)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v0

    return-object v0

    :cond_19
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_34
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No APK Signature Scheme v4 signature in package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1, v4}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_4b
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method private static verifyV1Signature(Ljava/lang/String;Z)Landroid/content/pm/PackageParser$SigningDetails;
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    move-object/from16 v8, p0

    move/from16 v9, p1

    const/4 v10, 0x1

    if-eqz v9, :cond_a

    sget v1, Landroid/util/apk/ApkSignatureVerifier;->NUMBER_OF_CORES:I

    goto :goto_b

    :cond_a
    move v1, v10

    :goto_b
    move v11, v1

    new-array v12, v11, [Landroid/util/jar/StrictJarFile;

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    const-wide/32 v14, 0x40000

    const/16 v16, 0x0

    :try_start_18
    const-string/jumbo v1, "strictJarFileCtor"

    invoke-static {v14, v15, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    sget-object v1, Landroid/util/apk/ApkSignatureVerifier;->sPerfBoost:Landroid/util/BoostFramework;

    if-nez v1, :cond_29

    new-instance v1, Landroid/util/BoostFramework;

    invoke-direct {v1}, Landroid/util/BoostFramework;-><init>()V

    sput-object v1, Landroid/util/apk/ApkSignatureVerifier;->sPerfBoost:Landroid/util/BoostFramework;

    :cond_29
    sget-object v1, Landroid/util/apk/ApkSignatureVerifier;->sPerfBoost:Landroid/util/BoostFramework;

    if-eqz v1, :cond_48

    sget-boolean v1, Landroid/util/apk/ApkSignatureVerifier;->sIsPerfLockAcquired:Z

    if-nez v1, :cond_48

    if-eqz v9, :cond_48

    sget-object v1, Landroid/util/apk/ApkSignatureVerifier;->sPerfBoost:Landroid/util/BoostFramework;

    const/16 v2, 0x1088

    const/4 v4, 0x0

    const v5, 0x7fffffff

    const/4 v6, -0x1

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    const-string v1, "ApkSignatureVerifier"

    const-string v2, "Perflock acquired for PackageInstall "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v10, Landroid/util/apk/ApkSignatureVerifier;->sIsPerfLockAcquired:Z

    :cond_48
    const/4 v1, 0x0

    :goto_49
    if-ge v1, v11, :cond_55

    new-instance v2, Landroid/util/jar/StrictJarFile;

    invoke-direct {v2, v8, v10, v9}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V

    aput-object v2, v12, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    :cond_55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v1

    aget-object v1, v12, v16

    const-string v2, "AndroidManifest.xml"

    invoke-virtual {v1, v2}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    move-object v6, v1

    if-eqz v6, :cond_1de

    aget-object v1, v12, v16

    invoke-static {v1, v6}, Landroid/util/apk/ApkSignatureVerifier;->loadCertificates(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;

    move-result-object v1

    move-object/from16 v17, v1

    invoke-static/range {v17 .. v17}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b7

    invoke-static/range {v17 .. v17}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v1

    move-object v4, v1

    if-eqz v9, :cond_184

    aget-object v1, v12, v16

    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object/from16 v18, v1

    :goto_83
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_96

    goto :goto_83

    :cond_96
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "META-INF/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a3

    goto :goto_83

    :cond_a3
    const-string v5, "AndroidManifest.xml"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ac

    goto :goto_83

    :cond_ac
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_83

    :cond_b1
    new-instance v1, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    invoke-direct {v1}, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;-><init>()V

    move-object v2, v1

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->objWaitAll:Ljava/lang/Object;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v20, Landroid/util/apk/ApkSignatureVerifier;->NUMBER_OF_CORES:I

    sget v21, Landroid/util/apk/ApkSignatureVerifier;->NUMBER_OF_CORES:I

    const-wide/16 v22, 0x1

    sget-object v24, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v25, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v25 .. v25}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object/from16 v19, v1

    invoke-direct/range {v19 .. v25}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_d6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_112

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    new-instance v20, Landroid/util/apk/ApkSignatureVerifier$1;

    move-object v13, v1

    move-object/from16 v1, v20

    move-object/from16 v22, v2

    move-object/from16 v23, v4

    move-object v4, v12

    move-object/from16 v24, v6

    move-object/from16 v6, p0

    move-object/from16 v25, v7

    move-object/from16 v7, v23

    invoke-direct/range {v1 .. v7}, Landroid/util/apk/ApkSignatureVerifier$1;-><init>(Landroid/util/apk/ApkSignatureVerifier$1VerificationData;Landroid/util/ArrayMap;[Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;[Landroid/content/pm/Signature;)V

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    iget-object v4, v2, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->objWaitAll:Ljava/lang/Object;

    monitor-enter v4
    :try_end_fe
    .catch Ljava/security/GeneralSecurityException; {:try_start_18 .. :try_end_fe} :catch_21e
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_fe} :catch_203
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_fe} :catch_203
    .catchall {:try_start_18 .. :try_end_fe} :catchall_200

    :try_start_fe
    iget v6, v2, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    if-nez v6, :cond_105

    invoke-virtual {v13, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_105
    monitor-exit v4

    move-object v1, v13

    move-object/from16 v4, v23

    move-object/from16 v6, v24

    move-object/from16 v7, v25

    goto :goto_d6

    :catchall_10e
    move-exception v0

    move-object v6, v0

    monitor-exit v4
    :try_end_111
    .catchall {:try_start_fe .. :try_end_111} :catchall_10e

    :try_start_111
    throw v6

    :cond_112
    move-object v13, v1

    move-object/from16 v23, v4

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    iput-boolean v10, v2, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->wait:Z

    invoke-virtual {v13}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :goto_11e
    iget-boolean v1, v2, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->wait:Z
    :try_end_120
    .catch Ljava/security/GeneralSecurityException; {:try_start_111 .. :try_end_120} :catch_21e
    .catch Ljava/io/IOException; {:try_start_111 .. :try_end_120} :catch_203
    .catch Ljava/lang/RuntimeException; {:try_start_111 .. :try_end_120} :catch_203
    .catchall {:try_start_111 .. :try_end_120} :catchall_200

    if-eqz v1, :cond_164

    :try_start_122
    iget v1, v2, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    if-eqz v1, :cond_148

    iget-boolean v1, v2, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->shutDown:Z

    if-nez v1, :cond_148

    const-string v1, "ApkSignatureVerifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "verifyV1 Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    iput-boolean v10, v2, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->shutDown:Z

    :cond_148
    const-wide/16 v4, 0x32

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v13, v4, v5, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_154

    move v1, v10

    goto :goto_156

    :cond_154
    move/from16 v1, v16

    :goto_156
    iput-boolean v1, v2, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->wait:Z
    :try_end_158
    .catch Ljava/lang/InterruptedException; {:try_start_122 .. :try_end_158} :catch_159
    .catch Ljava/security/GeneralSecurityException; {:try_start_122 .. :try_end_158} :catch_21e
    .catch Ljava/io/IOException; {:try_start_122 .. :try_end_158} :catch_203
    .catch Ljava/lang/RuntimeException; {:try_start_122 .. :try_end_158} :catch_203
    .catchall {:try_start_122 .. :try_end_158} :catchall_200

    goto :goto_11e

    :catch_159
    move-exception v0

    move-object v1, v0

    :try_start_15b
    const-string v4, "ApkSignatureVerifier"

    const-string v5, "VerifyV1 interrupted while awaiting all threads done..."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_11e

    :cond_164
    iget v1, v2, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    if-nez v1, :cond_169

    goto :goto_18a

    :cond_169
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    iget v4, v2, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to collect certificates from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exception:Ljava/lang/Exception;

    invoke-direct {v1, v4, v5, v6}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_184
    move-object/from16 v23, v4

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    :goto_18a
    new-instance v1, Landroid/content/pm/PackageParser$SigningDetails;

    move-object/from16 v2, v23

    invoke-direct {v1, v2, v10}, Landroid/content/pm/PackageParser$SigningDetails;-><init>([Landroid/content/pm/Signature;I)V
    :try_end_191
    .catch Ljava/security/GeneralSecurityException; {:try_start_15b .. :try_end_191} :catch_21e
    .catch Ljava/io/IOException; {:try_start_15b .. :try_end_191} :catch_203
    .catch Ljava/lang/RuntimeException; {:try_start_15b .. :try_end_191} :catch_203
    .catchall {:try_start_15b .. :try_end_191} :catchall_200

    sget-boolean v4, Landroid/util/apk/ApkSignatureVerifier;->sIsPerfLockAcquired:Z

    if-eqz v4, :cond_1a5

    sget-object v4, Landroid/util/apk/ApkSignatureVerifier;->sPerfBoost:Landroid/util/BoostFramework;

    if-eqz v4, :cond_1a5

    invoke-virtual {v4}, Landroid/util/BoostFramework;->perfLockRelease()I

    sput-boolean v16, Landroid/util/apk/ApkSignatureVerifier;->sIsPerfLockAcquired:Z

    const-string v4, "ApkSignatureVerifier"

    const-string v5, "Perflock released for PackageInstall "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a5
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v4, 0x0

    :goto_1ac
    if-ge v4, v11, :cond_1b6

    aget-object v5, v12, v4

    invoke-static {v5}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1ac

    :cond_1b6
    return-object v1

    :cond_1b7
    move-object/from16 v24, v6

    move-object/from16 v25, v7

    :try_start_1bb
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has no certificates at entry "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "AndroidManifest.xml"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, -0x67

    invoke-direct {v1, v4, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_1de
    move-object/from16 v24, v6

    move-object/from16 v25, v7

    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v2, -0x65

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " has no manifest"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_200
    .catch Ljava/security/GeneralSecurityException; {:try_start_1bb .. :try_end_200} :catch_21e
    .catch Ljava/io/IOException; {:try_start_1bb .. :try_end_200} :catch_203
    .catch Ljava/lang/RuntimeException; {:try_start_1bb .. :try_end_200} :catch_203
    .catchall {:try_start_1bb .. :try_end_200} :catchall_200

    :catchall_200
    move-exception v0

    move-object v1, v0

    goto :goto_239

    :catch_203
    move-exception v0

    move-object v1, v0

    :try_start_205
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to collect certificates from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, -0x67

    invoke-direct {v2, v5, v4, v1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_21e
    move-exception v0

    move-object v1, v0

    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v4, -0x69

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to collect certificates from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5, v1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_239
    .catchall {:try_start_205 .. :try_end_239} :catchall_200

    :goto_239
    sget-boolean v2, Landroid/util/apk/ApkSignatureVerifier;->sIsPerfLockAcquired:Z

    if-eqz v2, :cond_24d

    sget-object v2, Landroid/util/apk/ApkSignatureVerifier;->sPerfBoost:Landroid/util/BoostFramework;

    if-eqz v2, :cond_24d

    invoke-virtual {v2}, Landroid/util/BoostFramework;->perfLockRelease()I

    sput-boolean v16, Landroid/util/apk/ApkSignatureVerifier;->sIsPerfLockAcquired:Z

    const-string v2, "ApkSignatureVerifier"

    const-string v4, "Perflock released for PackageInstall "

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24d
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v2, 0x0

    :goto_254
    if-ge v2, v11, :cond_25e

    aget-object v4, v12, v2

    invoke-static {v4}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_254

    :cond_25e
    throw v1
.end method

.method private static verifyV2Signature(Ljava/lang/String;Z)Landroid/content/pm/PackageParser$SigningDetails;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    if-eqz p1, :cond_6

    const-string/jumbo v0, "verifyV2"

    goto :goto_8

    :cond_6
    const-string v0, "certsOnlyV2"

    :goto_8
    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    if-eqz p1, :cond_15

    :try_start_10
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/lang/String;)[[Ljava/security/cert/X509Certificate;

    move-result-object v0

    goto :goto_19

    :cond_15
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->unsafeGetCertsWithoutVerification(Ljava/lang/String;)[[Ljava/security/cert/X509Certificate;

    move-result-object v0

    :goto_19
    nop

    invoke-static {v0}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v3

    new-instance v4, Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v5, 0x2

    invoke-direct {v4, v3, v5}, Landroid/content/pm/PackageParser$SigningDetails;-><init>([Landroid/content/pm/Signature;I)V
    :try_end_24
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_10 .. :try_end_24} :catch_49
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_24} :catch_2a
    .catchall {:try_start_10 .. :try_end_24} :catchall_28

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v4

    :catchall_28
    move-exception v0

    goto :goto_4c

    :catch_2a
    move-exception v0

    :try_start_2b
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v4, -0x67

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to collect certificates from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " using APK Signature Scheme v2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_49
    move-exception v0

    nop

    throw v0
    :try_end_4c
    .catchall {:try_start_2b .. :try_end_4c} :catchall_28

    :goto_4c
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private static verifyV3AndBelowSignatures(Ljava/lang/String;IZ)Landroid/content/pm/PackageParser$SigningDetails;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p2}, Landroid/util/apk/ApkSignatureVerifier;->verifyV3Signature(Ljava/lang/String;Z)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v0
    :try_end_4
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    const/4 v1, 0x3

    const/16 v2, -0x67

    if-ge p1, v1, :cond_6f

    const-string v0, " or newer for package "

    const-string v1, "No signature found in package of version "

    const/4 v3, 0x2

    if-gt p1, v3, :cond_54

    :try_start_12
    invoke-static {p0, p2}, Landroid/util/apk/ApkSignatureVerifier;->verifyV2Signature(Ljava/lang/String;Z)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v0
    :try_end_16
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_12 .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v4

    if-ge p1, v3, :cond_3d

    const/4 v3, 0x1

    if-gt p1, v3, :cond_22

    invoke-static {p0, p2}, Landroid/util/apk/ApkSignatureVerifier;->verifyV1Signature(Ljava/lang/String;Z)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v0

    return-object v0

    :cond_22
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3

    :cond_3d
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No APK Signature Scheme v2 signature in package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1, v4}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_54
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3

    :cond_6f
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No APK Signature Scheme v3 signature in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static verifyV3Signature(Ljava/lang/String;Z)Landroid/content/pm/PackageParser$SigningDetails;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    if-eqz p1, :cond_6

    const-string/jumbo v0, "verifyV3"

    goto :goto_8

    :cond_6
    const-string v0, "certsOnlyV3"

    :goto_8
    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    if-eqz p1, :cond_15

    :try_start_10
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verify(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v0

    goto :goto_19

    :cond_15
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->unsafeGetCertsWithoutVerification(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v0

    :goto_19
    nop

    const/4 v3, 0x1

    new-array v3, v3, [[Ljava/security/cert/Certificate;

    const/4 v4, 0x0

    iget-object v5, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->certs:[Ljava/security/cert/X509Certificate;

    aput-object v5, v3, v4

    invoke-static {v3}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;

    if-eqz v6, :cond_65

    iget-object v6, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;

    iget-object v6, v6, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Landroid/content/pm/Signature;

    move-object v5, v6

    const/4 v6, 0x0

    :goto_37
    array-length v7, v5

    if-ge v6, v7, :cond_65

    new-instance v7, Landroid/content/pm/Signature;

    iget-object v8, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;

    iget-object v8, v8, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v7, v5, v6

    aget-object v7, v5, v6

    iget-object v8, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;

    iget-object v8, v8, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;->flagsList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/pm/Signature;->setFlags(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    :cond_65
    new-instance v6, Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v7, 0x3

    invoke-direct {v6, v4, v7, v5}, Landroid/content/pm/PackageParser$SigningDetails;-><init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;)V
    :try_end_6b
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_10 .. :try_end_6b} :catch_90
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_6b} :catch_71
    .catchall {:try_start_10 .. :try_end_6b} :catchall_6f

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v6

    :catchall_6f
    move-exception v0

    goto :goto_93

    :catch_71
    move-exception v0

    :try_start_72
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v4, -0x67

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to collect certificates from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " using APK Signature Scheme v3"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_90
    move-exception v0

    nop

    throw v0
    :try_end_93
    .catchall {:try_start_72 .. :try_end_93} :catchall_6f

    :goto_93
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private static verifyV4Signature(Ljava/lang/String;IZ)Landroid/content/pm/PackageParser$SigningDetails;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    if-eqz p2, :cond_6

    const-string/jumbo v0, "verifyV4"

    goto :goto_8

    :cond_6
    const-string v0, "certsOnlyV4"

    :goto_8
    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    nop

    :try_start_f
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV4Verifier;->extractCertificates(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;

    move-result-object v0

    const/4 v3, 0x1

    new-array v4, v3, [[Ljava/security/cert/Certificate;

    iget-object v5, v0, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;->certs:[Ljava/security/cert/Certificate;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v4}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v5
    :try_end_1f
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_f .. :try_end_1f} :catch_cf
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1f} :catch_b0
    .catchall {:try_start_f .. :try_end_1f} :catchall_ae

    if-eqz p2, :cond_a4

    const/4 v7, 0x0

    const/4 v8, 0x0

    nop

    :try_start_24
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->unsafeGetCertsWithoutVerification(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v9

    iget-object v10, v9, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->digest:[B

    move-object v7, v10

    new-array v3, v3, [[Ljava/security/cert/Certificate;

    iget-object v10, v9, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->certs:[Ljava/security/cert/X509Certificate;

    aput-object v10, v3, v6
    :try_end_31
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_24 .. :try_end_31} :catch_32
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_31} :catch_b0
    .catchall {:try_start_24 .. :try_end_31} :catchall_ae

    goto :goto_3f

    :catch_32
    move-exception v3

    nop

    :try_start_34
    invoke-static {p0, v6}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object v6

    iget-object v9, v6, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->digest:[B

    move-object v7, v9

    iget-object v9, v6, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->certs:[[Ljava/security/cert/X509Certificate;
    :try_end_3d
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_34 .. :try_end_3d} :catch_8c
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3d} :catch_b0
    .catchall {:try_start_34 .. :try_end_3d} :catchall_ae

    move-object v8, v9

    move-object v3, v8

    :goto_3f
    :try_start_3f
    invoke-static {v3}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v6

    array-length v8, v6

    array-length v9, v5

    if-ne v8, v9, :cond_74

    const/4 v8, 0x0

    array-length v9, v5

    :goto_49
    if-ge v8, v9, :cond_60

    aget-object v10, v6, v8

    aget-object v11, v5, v8

    invoke-virtual {v10, v11}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_58

    add-int/lit8 v8, v8, 0x1

    goto :goto_49

    :cond_58
    new-instance v10, Ljava/lang/SecurityException;

    const-string v11, "V4 signature certificate does not match V2/V3"

    invoke-direct {v10, v11}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_60
    iget-object v8, v0, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;->apkDigest:[B

    iget-object v9, v0, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;->apkDigest:[B

    array-length v9, v9

    invoke-static {v8, v7, v9}, Lcom/android/internal/util/ArrayUtils;->equals([B[BI)Z

    move-result v8

    if-eqz v8, :cond_6c

    goto :goto_a4

    :cond_6c
    new-instance v8, Ljava/lang/SecurityException;

    const-string v9, "APK digest in V4 signature does not match V2/V3"

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_74
    new-instance v8, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid number of certificates: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    :catch_8c
    move-exception v6

    new-instance v9, Ljava/lang/SecurityException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "V4 verification failed to collect V2/V3 certificates from : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    :cond_a4
    :goto_a4
    new-instance v3, Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v6, 0x4

    invoke-direct {v3, v5, v6}, Landroid/content/pm/PackageParser$SigningDetails;-><init>([Landroid/content/pm/Signature;I)V
    :try_end_aa
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_3f .. :try_end_aa} :catch_cf
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_aa} :catch_b0
    .catchall {:try_start_3f .. :try_end_aa} :catchall_ae

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :catchall_ae
    move-exception v0

    goto :goto_d2

    :catch_b0
    move-exception v0

    :try_start_b1
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v4, -0x67

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to collect certificates from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " using APK Signature Scheme v4"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_cf
    move-exception v0

    nop

    throw v0
    :try_end_d2
    .catchall {:try_start_b1 .. :try_end_d2} :catchall_ae

    :goto_d2
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method
