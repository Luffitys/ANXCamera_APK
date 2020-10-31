.class public Landroid/util/apk/ApkSignatureSchemeV4Verifier;
.super Ljava/lang/Object;
.source "ApkSignatureSchemeV4Verifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractCertificates(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    nop

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/incremental/IncrementalManager;->unsafeGetFileSignature(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_5f

    array-length v2, v1

    if-eqz v2, :cond_5f

    :try_start_13
    invoke-static {v1}, Landroid/os/incremental/V4Signature;->readFrom([B)Landroid/os/incremental/V4Signature;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/incremental/V4Signature;->isVersionSupported()Z

    move-result v3

    if-eqz v3, :cond_37

    iget-object v3, v2, Landroid/os/incremental/V4Signature;->hashingInfo:[B

    invoke-static {v3}, Landroid/os/incremental/V4Signature$HashingInfo;->fromByteArray([B)Landroid/os/incremental/V4Signature$HashingInfo;

    move-result-object v3

    iget-object v4, v2, Landroid/os/incremental/V4Signature;->signingInfo:[B

    invoke-static {v4}, Landroid/os/incremental/V4Signature$SigningInfo;->fromByteArray([B)Landroid/os/incremental/V4Signature$SigningInfo;

    move-result-object v4
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_29} :catch_56

    nop

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6, v3, v4}, Landroid/os/incremental/V4Signature;->getSigningData(JLandroid/os/incremental/V4Signature$HashingInfo;Landroid/os/incremental/V4Signature$SigningInfo;)[B

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/apk/ApkSignatureSchemeV4Verifier;->verifySigner(Landroid/os/incremental/V4Signature$SigningInfo;[B)Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;

    move-result-object v6

    return-object v6

    :cond_37
    :try_start_37
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "v4 signature version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/os/incremental/V4Signature;->version:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is not supported"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_56} :catch_56

    :catch_56
    move-exception v2

    new-instance v3, Landroid/util/apk/SignatureNotFoundException;

    const-string v4, "Failed to read V4 signature."

    invoke-direct {v3, v4, v2}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_5f
    new-instance v2, Landroid/util/apk/SignatureNotFoundException;

    const-string v3, "Failed to obtain signature bytes from IncFS."

    invoke-direct {v2, v3}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static verifySigner(Landroid/os/incremental/V4Signature$SigningInfo;[B)Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    move-object/from16 v1, p0

    iget v0, v1, Landroid/os/incremental/V4Signature$SigningInfo;->signatureAlgorithmId:I

    invoke-static {v0}, Landroid/util/apk/ApkSigningBlockUtils;->isSupportedSignatureAlgorithm(I)Z

    move-result v0

    if-eqz v0, :cond_d9

    iget v2, v1, Landroid/os/incremental/V4Signature$SigningInfo;->signatureAlgorithmId:I

    iget-object v3, v1, Landroid/os/incremental/V4Signature$SigningInfo;->signature:[B

    iget-object v4, v1, Landroid/os/incremental/V4Signature$SigningInfo;->publicKey:[B

    iget-object v5, v1, Landroid/os/incremental/V4Signature$SigningInfo;->certificate:[B

    invoke-static {v2}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmJcaKeyAlgorithm(I)Ljava/lang/String;

    move-result-object v6

    nop

    invoke-static {v2}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmJcaSignatureAlgorithm(I)Landroid/util/Pair;

    move-result-object v7

    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    iget-object v0, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Ljava/security/spec/AlgorithmParameterSpec;

    nop

    :try_start_26
    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v10, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v10, v4}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v10}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {v8}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    if-eqz v9, :cond_3f

    invoke-virtual {v10, v9}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_3f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_26 .. :try_end_3f} :catch_ba
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_26 .. :try_end_3f} :catch_ba
    .catch Ljava/security/InvalidKeyException; {:try_start_26 .. :try_end_3f} :catch_ba
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_26 .. :try_end_3f} :catch_ba
    .catch Ljava/security/SignatureException; {:try_start_26 .. :try_end_3f} :catch_ba

    :cond_3f
    move-object/from16 v11, p1

    :try_start_41
    invoke-virtual {v10, v11}, Ljava/security/Signature;->update([B)V

    invoke-virtual {v10, v3}, Ljava/security/Signature;->verify([B)Z

    move-result v12
    :try_end_48
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_41 .. :try_end_48} :catch_b8
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_41 .. :try_end_48} :catch_b8
    .catch Ljava/security/InvalidKeyException; {:try_start_41 .. :try_end_48} :catch_b8
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_41 .. :try_end_48} :catch_b8
    .catch Ljava/security/SignatureException; {:try_start_41 .. :try_end_48} :catch_b8

    move v10, v12

    nop

    if-eqz v10, :cond_a1

    :try_start_4c
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0
    :try_end_52
    .catch Ljava/security/cert/CertificateException; {:try_start_4c .. :try_end_52} :catch_98

    move-object v12, v0

    nop

    :try_start_54
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v12, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_5f
    .catch Ljava/security/cert/CertificateException; {:try_start_54 .. :try_end_5f} :catch_8f

    nop

    new-instance v13, Landroid/util/apk/VerbatimX509Certificate;

    invoke-direct {v13, v0, v5}, Landroid/util/apk/VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    move-object v0, v13

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v13

    invoke-interface {v13}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v13

    invoke-static {v4, v13}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v14

    if-eqz v14, :cond_85

    new-instance v14, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/security/cert/Certificate;

    const/16 v16, 0x0

    aput-object v0, v15, v16

    move-object/from16 v16, v0

    iget-object v0, v1, Landroid/os/incremental/V4Signature$SigningInfo;->apkDigest:[B

    invoke-direct {v14, v15, v0}, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;-><init>([Ljava/security/cert/Certificate;[B)V

    return-object v14

    :cond_85
    move-object/from16 v16, v0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v14, "Public key mismatch between certificate and signature record"

    invoke-direct {v0, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_8f
    move-exception v0

    new-instance v13, Ljava/lang/SecurityException;

    const-string v14, "Failed to decode certificate"

    invoke-direct {v13, v14, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    :catch_98
    move-exception v0

    new-instance v12, Ljava/lang/RuntimeException;

    const-string v13, "Failed to obtain X.509 CertificateFactory"

    invoke-direct {v12, v13, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    :cond_a1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " signature did not verify"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_b8
    move-exception v0

    goto :goto_bd

    :catch_ba
    move-exception v0

    move-object/from16 v11, p1

    :goto_bd
    new-instance v10, Ljava/lang/SecurityException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to verify "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " signature"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    :cond_d9
    move-object/from16 v11, p1

    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "No supported signatures found"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
