.class Landroid/util/apk/ApkSignatureVerifier$1;
.super Ljava/lang/Object;
.source "ApkSignatureVerifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/util/apk/ApkSignatureVerifier;->verifyV1Signature(Ljava/lang/String;Z)Landroid/content/pm/PackageParser$SigningDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$apkPath:Ljava/lang/String;

.field final synthetic val$entry:Ljava/util/zip/ZipEntry;

.field final synthetic val$jarFile:[Landroid/util/jar/StrictJarFile;

.field final synthetic val$lastSigs:[Landroid/content/pm/Signature;

.field final synthetic val$strictJarFiles:Landroid/util/ArrayMap;

.field final synthetic val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;


# direct methods
.method constructor <init>(Landroid/util/apk/ApkSignatureVerifier$1VerificationData;Landroid/util/ArrayMap;[Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;[Landroid/content/pm/Signature;)V
    .registers 7

    iput-object p1, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    iput-object p2, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$strictJarFiles:Landroid/util/ArrayMap;

    iput-object p3, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$jarFile:[Landroid/util/jar/StrictJarFile;

    iput-object p4, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$entry:Ljava/util/zip/ZipEntry;

    iput-object p5, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$apkPath:Ljava/lang/String;

    iput-object p6, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$lastSigs:[Landroid/content/pm/Signature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    :try_start_0
    iget-object v0, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    iget v0, v0, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    if-eqz v0, :cond_21

    const-string v0, "ApkSignatureVerifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VerifyV1 exit with exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    iget v2, v2, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_21
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$strictJarFiles:Landroid/util/ArrayMap;

    monitor-enter v1
    :try_end_30
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_30} :catch_e0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_30} :catch_cb

    :try_start_30
    iget-object v2, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$strictJarFiles:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/jar/StrictJarFile;

    if-nez v2, :cond_5b

    iget-object v3, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    iget v3, v3, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->index:I

    # getter for: Landroid/util/apk/ApkSignatureVerifier;->NUMBER_OF_CORES:I
    invoke-static {}, Landroid/util/apk/ApkSignatureVerifier;->access$000()I

    move-result v4

    if-lt v3, v4, :cond_49

    iget-object v3, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    const/4 v4, 0x0

    iput v4, v3, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->index:I

    :cond_49
    iget-object v3, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$jarFile:[Landroid/util/jar/StrictJarFile;

    iget-object v4, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    iget v5, v4, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v4, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->index:I

    aget-object v3, v3, v5

    move-object v2, v3

    iget-object v3, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$strictJarFiles:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5b
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_30 .. :try_end_5c} :catchall_c8

    :try_start_5c
    iget-object v1, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$entry:Ljava/util/zip/ZipEntry;

    # invokes: Landroid/util/apk/ApkSignatureVerifier;->loadCertificates(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;
    invoke-static {v2, v1}, Landroid/util/apk/ApkSignatureVerifier;->access$100(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9f

    # invokes: Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;
    invoke-static {v1}, Landroid/util/apk/ApkSignatureVerifier;->access$200([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v3

    iget-object v4, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$lastSigs:[Landroid/content/pm/Signature;

    invoke-static {v4, v3}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v4

    if-eqz v4, :cond_76

    goto/16 :goto_f1

    :cond_76
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v5, -0x68

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$apkPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " has mismatched certificates at entry "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v4

    :cond_9f
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v4, -0x67

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$apkPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has no certificates at entry "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_c8
    .catch Ljava/security/GeneralSecurityException; {:try_start_5c .. :try_end_c8} :catch_e0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_5c .. :try_end_c8} :catch_cb

    :catchall_c8
    move-exception v2

    :try_start_c9
    monitor-exit v1
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_c8

    :try_start_ca
    throw v2
    :try_end_cb
    .catch Ljava/security/GeneralSecurityException; {:try_start_ca .. :try_end_cb} :catch_e0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_ca .. :try_end_cb} :catch_cb

    :catch_cb
    move-exception v0

    iget-object v1, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    iget-object v1, v1, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->objWaitAll:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d1
    iget-object v2, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    const/16 v3, -0x66

    iput v3, v2, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    iget-object v2, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    iput-object v0, v2, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exception:Ljava/lang/Exception;

    monitor-exit v1

    goto :goto_f2

    :catchall_dd
    move-exception v2

    monitor-exit v1
    :try_end_df
    .catchall {:try_start_d1 .. :try_end_df} :catchall_dd

    throw v2

    :catch_e0
    move-exception v0

    iget-object v1, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    iget-object v1, v1, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->objWaitAll:Ljava/lang/Object;

    monitor-enter v1

    :try_start_e6
    iget-object v2, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    const/16 v3, -0x69

    iput v3, v2, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    iget-object v2, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    iput-object v0, v2, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exception:Ljava/lang/Exception;

    monitor-exit v1

    :goto_f1
    nop

    :goto_f2
    return-void

    :catchall_f3
    move-exception v2

    monitor-exit v1
    :try_end_f5
    .catchall {:try_start_e6 .. :try_end_f5} :catchall_f3

    throw v2
.end method
