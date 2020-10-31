.class public Lcom/miui/enterprise/signature/EnterpriseVerifier;
.super Ljava/lang/Object;
.source "EnterpriseVerifier.java"


# static fields
.field private static final CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final ENTERPRISE_CER_ENTRY:Ljava/lang/String; = "entcert"

.field private static final ENTERPRISE_CER_FILE:Ljava/lang/String; = "META-INF/ENTERPRISE.CER"

.field private static final ENT_PUBLIC_KEY:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIIDXzCCAkegAwIBAgIEMgLUEDANBgkqhkiG9w0BAQsFADBgMQswCQYDVQQGEwI4\nNjEPMA0GA1UECBMGQmVpSmluMQ8wDQYDVQQHEwZCZWlKaW4xDzANBgNVBAoTBlhp\nYW9NaTENMAsGA1UECxMETUlVSTEPMA0GA1UEAxMGWGlhb01pMB4XDTE4MDIwNTEw\nNTUwM1oXDTQ4MDEyOTEwNTUwM1owYDELMAkGA1UEBhMCODYxDzANBgNVBAgTBkJl\naUppbjEPMA0GA1UEBxMGQmVpSmluMQ8wDQYDVQQKEwZYaWFvTWkxDTALBgNVBAsT\nBE1JVUkxDzANBgNVBAMTBlhpYW9NaTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCC\nAQoCggEBALE5VJgm5U7lzuEdK69+PXmjw43IwkOPKcZH5ygySuf1X9NJq1YteOoo\nSAYP1sOIr3gg/FauQSlFxmM1VPCXE3uLvDC9ko/vJtpzgfqD/tM/mZQmlFVlWFNW\n9+64Ri/15tO5La1oXW2ccsp0thYmVNDEQtJw/HK5G26l2PSMdGxcgZUAv61dFhbq\n9aAm9ZtvVxUJdlw9xOBE+N+fTxnteM60cY9lPsOXdloHuSo93FF/WlS+7NfyO0h1\n3zWD54OkYsLNBnefynuay33fxFqEK/OqpAHkolIRhxhy256RzoS5tC8aWBdvqZTQ\n6GEmxg3/tkK6dM40L5pFsPV6eJeEnj8CAwEAAaMhMB8wHQYDVR0OBBYEFNNMGSE0\nbeZUEt2r7beFWvvvfBoSMA0GCSqGSIb3DQEBCwUAA4IBAQBfRf59v1HFwPtjzRGA\nYjoR4Z8QdQ8Gu7fJMlm3MOaBPiVh/rTp5/PtDAAUyDjUZFUOTngmAIDk768FDNkY\nfBTn0RCZVI96FsdcA9dhCeCadnr7I6kpHX1LeqXkkVsrviV8vnqXcBIk29qu/M0s\ncBZy1SBP3YlN5ZOQXipWCdU7hNt4QdAYfeOZ8/A/DHZUmZsbPP+gq3I1u8rV1e5q\nPmF46bmuOXe4eXmqBiWNmJyGDOpP0YiT4N57kJOM2aiNWNGXMod4/896rDXUoCuM\n5xIsDV64/DorjbF4dZta94Q6KnE6JRWFl/i4ol7218EVA3ScHLRISDruJanMpU5V\nF3nx\n-----END CERTIFICATE-----"

.field private static final HEX_DIGITS:[C

.field private static final MIUI_SIGNATURE:Ljava/lang/String; = "3082046c30820354a0030201020209008d64f55b5ca4ef25300d06092a864886f70d0101050500308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d301e170d3131313230363033323733305a170d3339303432333033323733305a308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100cfb201f02792657970678db7ae5476d6050534be0c0f308370f0b0f8f08ed8f62a39f804ac4e9dd6262759f2545abcc7aa04fa0226d0029bacab42a970806023bd740c73fad30c56b286037eb1663e79f6c4196ed04d41c92c125d130c29d801a1db681af2d89de2d46e7af218385580186eaf7b68d789574e826cc1762190d70aac565b94cf7812d7a90b7d045f3da952a9c585cf437ced4857675c859d3808a882fec9401dc6ce05140e94c918e381223aa69f7df2ded90767505cbfb1c0a8371e9886b56e85925fafccf312aeea6a892e55fda66957f0dd245e6541e188bd0388d880478557591f16a2e2fdf01b83c6d75298f2e27bf3eb0c12ab7ccac68b020103a381e83081e5301d0603551d0e041604142438de5c93ae19065adbdcb82033744bd89d25663081b50603551d230481ad3081aa80142438de5c93ae19065adbdcb82033744bd89d2566a18186a48183308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d8209008d64f55b5ca4ef25300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100ccdf3afa17e8aa4abbf30cd193853ed324ba06a18af56b6aee1b2f96f16bf426406b851d76dc4b1d2f150590e6013fc64d7440f400b59af6b225ae6bd3409b0dec19331365077612e6298dd2323ae0bdb14c774df3e9cc3502841204f248d32971fc4d4b9fb98e830f95f71f5f4b31f94f33a4ac2b1ef5eeb1ecb78a71f5333a7f003c454f4bf4e633626ce330f48df62a9396324da15e676a29d8f563408b7822abf25d2d372f91e43f4dccb17ba8a248b475b71c936755efe1387e2d0511c13f85eed4d12bae3d004ae631c963f9fbf4fc1319f0ffa7de2af9f02f00dec902eb88be20e7ce3d9d3392f338adb8d79392318e057f3110c173af20d5ed1094d6"

.field private static final TAG:Ljava/lang/String; = "EnterpriseVerifier"

.field private static final TEMP_FILE:Ljava/lang/String; = "/data/system/ent_temp"

.field private static sBuffer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Lcom/miui/enterprise/signature/EnterpriseVerifier;->HEX_DIGITS:[C

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/miui/enterprise/signature/EnterpriseVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    nop

    :array_12
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

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static collectSignature(Ljava/util/jar/JarFile;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_9
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/jar/JarEntry;

    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_9

    :cond_1c
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "META-INF/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    goto :goto_9

    :cond_29
    invoke-virtual {p0, v3}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_31
    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_36
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_67

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    const/4 v5, 0x0

    :try_start_43
    invoke-virtual {p0, v4}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    move-object v5, v6

    invoke-static {v5}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->readFullyIgnoringContents(Ljava/io/InputStream;)J

    if-nez v2, :cond_5a

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v6
    :try_end_59
    .catchall {:try_start_43 .. :try_end_59} :catchall_60

    move-object v2, v6

    :cond_5a
    if-eqz v5, :cond_5f

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_5f
    goto :goto_36

    :catchall_60
    move-exception v3

    if-eqz v5, :cond_66

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_66
    throw v3

    :cond_67
    if-eqz v2, :cond_79

    array-length v3, v2

    if-nez v3, :cond_6d

    goto :goto_79

    :cond_6d
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->toHexReadable([B)Ljava/lang/String;

    move-result-object v3

    goto :goto_7a

    :cond_79
    :goto_79
    const/4 v3, 0x0

    :goto_7a
    return-object v3
.end method

.method private static deleteTempFileIfExist()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/ent_temp"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete temp file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EnterpriseVerifier"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static getSignatureAlgorithm(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "SHA256withRSA"

    return-object v1

    :cond_19
    const-string v1, "EC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    const-string v1, "SHA256withECDSA"

    return-object v1

    :cond_24
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported key type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static readFullyIgnoringContents(Ljava/io/InputStream;)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/miui/enterprise/signature/EnterpriseVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

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
    sget-object v3, Lcom/miui/enterprise/signature/EnterpriseVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    int-to-long v3, v2

    return-wide v3
.end method

.method private static readPublicKey()Ljava/security/cert/X509Certificate;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string v1, "-----BEGIN CERTIFICATE-----\nMIIDXzCCAkegAwIBAgIEMgLUEDANBgkqhkiG9w0BAQsFADBgMQswCQYDVQQGEwI4\nNjEPMA0GA1UECBMGQmVpSmluMQ8wDQYDVQQHEwZCZWlKaW4xDzANBgNVBAoTBlhp\nYW9NaTENMAsGA1UECxMETUlVSTEPMA0GA1UEAxMGWGlhb01pMB4XDTE4MDIwNTEw\nNTUwM1oXDTQ4MDEyOTEwNTUwM1owYDELMAkGA1UEBhMCODYxDzANBgNVBAgTBkJl\naUppbjEPMA0GA1UEBxMGQmVpSmluMQ8wDQYDVQQKEwZYaWFvTWkxDTALBgNVBAsT\nBE1JVUkxDzANBgNVBAMTBlhpYW9NaTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCC\nAQoCggEBALE5VJgm5U7lzuEdK69+PXmjw43IwkOPKcZH5ygySuf1X9NJq1YteOoo\nSAYP1sOIr3gg/FauQSlFxmM1VPCXE3uLvDC9ko/vJtpzgfqD/tM/mZQmlFVlWFNW\n9+64Ri/15tO5La1oXW2ccsp0thYmVNDEQtJw/HK5G26l2PSMdGxcgZUAv61dFhbq\n9aAm9ZtvVxUJdlw9xOBE+N+fTxnteM60cY9lPsOXdloHuSo93FF/WlS+7NfyO0h1\n3zWD54OkYsLNBnefynuay33fxFqEK/OqpAHkolIRhxhy256RzoS5tC8aWBdvqZTQ\n6GEmxg3/tkK6dM40L5pFsPV6eJeEnj8CAwEAAaMhMB8wHQYDVR0OBBYEFNNMGSE0\nbeZUEt2r7beFWvvvfBoSMA0GCSqGSIb3DQEBCwUAA4IBAQBfRf59v1HFwPtjzRGA\nYjoR4Z8QdQ8Gu7fJMlm3MOaBPiVh/rTp5/PtDAAUyDjUZFUOTngmAIDk768FDNkY\nfBTn0RCZVI96FsdcA9dhCeCadnr7I6kpHX1LeqXkkVsrviV8vnqXcBIk29qu/M0s\ncBZy1SBP3YlN5ZOQXipWCdU7hNt4QdAYfeOZ8/A/DHZUmZsbPP+gq3I1u8rV1e5q\nPmF46bmuOXe4eXmqBiWNmJyGDOpP0YiT4N57kJOM2aiNWNGXMod4/896rDXUoCuM\n5xIsDV64/DorjbF4dZta94Q6KnE6JRWFl/i4ol7218EVA3ScHLRISDruJanMpU5V\nF3nx\n-----END CERTIFICATE-----"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_d
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_1d

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    return-object v2

    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    throw v1
.end method

.method private static sha256([B)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->toHexReadable([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static toHexReadable([B)Ljava/lang/String;
    .registers 9

    if-nez p0, :cond_5

    const-string v0, ""

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_2a

    aget-byte v3, p0, v2

    move v4, v3

    if-gez v4, :cond_15

    add-int/lit16 v4, v4, 0x100

    :cond_15
    shr-int/lit8 v5, v4, 0x4

    and-int/lit8 v6, v4, 0xf

    sget-object v7, Lcom/miui/enterprise/signature/EnterpriseVerifier;->HEX_DIGITS:[C

    aget-char v7, v7, v5

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/miui/enterprise/signature/EnterpriseVerifier;->HEX_DIGITS:[C

    aget-char v7, v7, v6

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static verify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, "enterprise_licence"

    const-string v3, "UTF-8"

    const-string v4, "/data/system/ent_temp"

    const-string v5, "META-INF/ENTERPRISE.CER"

    const-string v6, "EnterpriseVerifier"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_11
    new-instance v10, Ljava/util/jar/JarFile;

    new-instance v11, Ljava/io/File;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_15} :catch_1f8
    .catch Ljava/security/GeneralSecurityException; {:try_start_11 .. :try_end_15} :catch_1f8
    .catchall {:try_start_11 .. :try_end_15} :catchall_1f3

    move-object/from16 v12, p1

    :try_start_17
    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x1

    invoke-direct {v10, v11, v13}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;Z)V

    move-object v7, v10

    invoke-virtual {v7, v5}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v10

    if-nez v10, :cond_3d

    const-string v0, "Verify failed, no enterprise cert found"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_2a} :catch_1f1
    .catch Ljava/security/GeneralSecurityException; {:try_start_17 .. :try_end_2a} :catch_1f1
    .catchall {:try_start_17 .. :try_end_2a} :catchall_1ef

    nop

    nop

    :try_start_2c
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V

    if-eqz v8, :cond_34

    invoke-virtual {v8}, Ljava/util/jar/JarFile;->close()V

    :cond_34
    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_37} :catch_38

    goto :goto_3c

    :catch_38
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3c
    return v9

    :cond_3d
    :try_start_3d
    invoke-virtual {v7, v5}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->writeFile(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v5, Ljava/util/jar/JarFile;

    invoke-direct {v5, v4, v13}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;Z)V

    move-object v8, v5

    invoke-static {v8}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->collectSignature(Ljava/util/jar/JarFile;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1d5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5e

    move-object/from16 v16, v4

    goto/16 :goto_1d7

    :cond_5e
    const-string v5, "3082046c30820354a0030201020209008d64f55b5ca4ef25300d06092a864886f70d0101050500308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d301e170d3131313230363033323733305a170d3339303432333033323733305a308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100cfb201f02792657970678db7ae5476d6050534be0c0f308370f0b0f8f08ed8f62a39f804ac4e9dd6262759f2545abcc7aa04fa0226d0029bacab42a970806023bd740c73fad30c56b286037eb1663e79f6c4196ed04d41c92c125d130c29d801a1db681af2d89de2d46e7af218385580186eaf7b68d789574e826cc1762190d70aac565b94cf7812d7a90b7d045f3da952a9c585cf437ced4857675c859d3808a882fec9401dc6ce05140e94c918e381223aa69f7df2ded90767505cbfb1c0a8371e9886b56e85925fafccf312aeea6a892e55fda66957f0dd245e6541e188bd0388d880478557591f16a2e2fdf01b83c6d75298f2e27bf3eb0c12ab7ccac68b020103a381e83081e5301d0603551d0e041604142438de5c93ae19065adbdcb82033744bd89d25663081b50603551d230481ad3081aa80142438de5c93ae19065adbdcb82033744bd89d2566a18186a48183308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d8209008d64f55b5ca4ef25300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100ccdf3afa17e8aa4abbf30cd193853ed324ba06a18af56b6aee1b2f96f16bf426406b851d76dc4b1d2f150590e6013fc64d7440f400b59af6b225ae6bd3409b0dec19331365077612e6298dd2323ae0bdb14c774df3e9cc3502841204f248d32971fc4d4b9fb98e830f95f71f5f4b31f94f33a4ac2b1ef5eeb1ecb78a71f5333a7f003c454f4bf4e633626ce330f48df62a9396324da15e676a29d8f563408b7822abf25d2d372f91e43f4dccb17ba8a248b475b71c936755efe1387e2d0511c13f85eed4d12bae3d004ae631c963f9fbf4fc1319f0ffa7de2af9f02f00dec902eb88be20e7ce3d9d3392f338adb8d79392318e057f3110c173af20d5ed1094d6"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7d

    const-string v0, "Verify failed, miss match signature"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_6b} :catch_1f1
    .catch Ljava/security/GeneralSecurityException; {:try_start_3d .. :try_end_6b} :catch_1f1
    .catchall {:try_start_3d .. :try_end_6b} :catchall_1ef

    nop

    nop

    :try_start_6d
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V

    nop

    invoke-virtual {v8}, Ljava/util/jar/JarFile;->close()V

    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_77} :catch_78

    goto :goto_7c

    :catch_78
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_7c
    return v9

    :cond_7d
    :try_start_7d
    new-instance v5, Lcom/miui/enterprise/signature/EnterpriseCer;

    const-string v10, "entcert"

    invoke-virtual {v8, v10}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v5, v10}, Lcom/miui/enterprise/signature/EnterpriseCer;-><init>(Ljava/io/InputStream;)V

    iget-object v10, v5, Lcom/miui/enterprise/signature/EnterpriseCer;->signature:Ljava/lang/String;

    invoke-static {v10, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v10

    invoke-virtual {v5}, Lcom/miui/enterprise/signature/EnterpriseCer;->getUnSignedRaw()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->readPublicKey()Ljava/security/cert/X509Certificate;

    move-result-object v14

    invoke-static {v14}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->getSignatureAlgorithm(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v15

    invoke-virtual {v14}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {v15, v11}, Ljava/security/Signature;->update([B)V

    invoke-virtual {v15, v10}, Ljava/security/Signature;->verify([B)Z

    move-result v13

    if-eqz v13, :cond_194

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Verify signature success for package "

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->verifyDate(Lcom/miui/enterprise/signature/EnterpriseCer;)Z

    move-result v9

    if-nez v9, :cond_e8

    const-string v0, "Verify failed,  cert out of date"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_d5} :catch_1f1
    .catch Ljava/security/GeneralSecurityException; {:try_start_7d .. :try_end_d5} :catch_1f1
    .catchall {:try_start_7d .. :try_end_d5} :catchall_1ef

    nop

    nop

    :try_start_d7
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V

    nop

    invoke-virtual {v8}, Ljava/util/jar/JarFile;->close()V

    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_e1} :catch_e2

    goto :goto_e6

    :catch_e2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_e6
    const/4 v3, 0x0

    return v3

    :cond_e8
    :try_start_e8
    invoke-static {v7, v5}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->verifyApk(Ljava/util/jar/JarFile;Lcom/miui/enterprise/signature/EnterpriseCer;)Z

    move-result v9

    if-nez v9, :cond_106

    const-string v0, "Verify failed, miss match apk/device"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_f3} :catch_1f1
    .catch Ljava/security/GeneralSecurityException; {:try_start_e8 .. :try_end_f3} :catch_1f1
    .catchall {:try_start_e8 .. :try_end_f3} :catchall_1ef

    nop

    nop

    :try_start_f5
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V

    nop

    invoke-virtual {v8}, Ljava/util/jar/JarFile;->close()V

    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_ff} :catch_100

    goto :goto_104

    :catch_100
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_104
    const/4 v3, 0x0

    return v3

    :cond_106
    :try_start_106
    invoke-static {v1, v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_124

    const-string v13, "enterprise_agency"

    move-object/from16 v16, v4

    iget-object v4, v5, Lcom/miui/enterprise/signature/EnterpriseCer;->agencyCode:Ljava/lang/String;

    invoke-static {v1, v13, v4}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v5, Lcom/miui/enterprise/signature/EnterpriseCer;->licenceCode:Ljava/lang/String;

    invoke-static {v1, v0, v4}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "enterprise_package"

    invoke-static {v1, v0, v2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_146

    :cond_124
    move-object/from16 v16, v4

    iget-object v0, v5, Lcom/miui/enterprise/signature/EnterpriseCer;->licenceCode:Ljava/lang/String;

    invoke-static {v9, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_146

    const-string v0, "Verify failed, miss match licence code"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_133
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_133} :catch_1f1
    .catch Ljava/security/GeneralSecurityException; {:try_start_106 .. :try_end_133} :catch_1f1
    .catchall {:try_start_106 .. :try_end_133} :catchall_1ef

    nop

    nop

    :try_start_135
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V

    nop

    invoke-virtual {v8}, Ljava/util/jar/JarFile;->close()V

    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_13f
    .catch Ljava/io/IOException; {:try_start_135 .. :try_end_13f} :catch_140

    goto :goto_144

    :catch_140
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_144
    const/4 v3, 0x0

    return v3

    :cond_146
    :goto_146
    :try_start_146
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.miui.enterprise.ACTION_CERT_UPDATE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x1a

    if-lt v0, v13, :cond_159

    const/high16 v0, 0x1000000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_159
    const-string v0, "extra_ent_cert"

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v13, "com.miui.enterprise.permission.ACTIVE_ENTERPRISE_MODE"

    invoke-virtual {v1, v4, v0, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v5}, Lcom/miui/enterprise/signature/EnterpriseCer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v13, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const-string v1, "/data/system/entcert"

    invoke-static {v0, v1}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->writeFile(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v0, "persist cert file"

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_181
    .catch Ljava/io/IOException; {:try_start_146 .. :try_end_181} :catch_1f1
    .catch Ljava/security/GeneralSecurityException; {:try_start_146 .. :try_end_181} :catch_1f1
    .catchall {:try_start_146 .. :try_end_181} :catchall_1ef

    nop

    nop

    :try_start_183
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V

    nop

    invoke-virtual {v8}, Ljava/util/jar/JarFile;->close()V

    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_18d
    .catch Ljava/io/IOException; {:try_start_183 .. :try_end_18d} :catch_18e

    goto :goto_192

    :catch_18e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_192
    const/4 v1, 0x1

    return v1

    :cond_194
    move-object/from16 v16, v4

    :try_start_196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Verify signature failed for package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cert: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/miui/enterprise/signature/EnterpriseCer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c2
    .catch Ljava/io/IOException; {:try_start_196 .. :try_end_1c2} :catch_1f1
    .catch Ljava/security/GeneralSecurityException; {:try_start_196 .. :try_end_1c2} :catch_1f1
    .catchall {:try_start_196 .. :try_end_1c2} :catchall_1ef

    nop

    nop

    :try_start_1c4
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V

    nop

    invoke-virtual {v8}, Ljava/util/jar/JarFile;->close()V

    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_1ce
    .catch Ljava/io/IOException; {:try_start_1c4 .. :try_end_1ce} :catch_1cf

    goto :goto_1d3

    :catch_1cf
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1d3
    const/4 v1, 0x0

    return v1

    :cond_1d5
    move-object/from16 v16, v4

    :goto_1d7
    :try_start_1d7
    const-string v0, "Verify failed, failed to load enterprise cert signature"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1dc
    .catch Ljava/io/IOException; {:try_start_1d7 .. :try_end_1dc} :catch_1f1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1d7 .. :try_end_1dc} :catch_1f1
    .catchall {:try_start_1d7 .. :try_end_1dc} :catchall_1ef

    nop

    nop

    :try_start_1de
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V

    nop

    invoke-virtual {v8}, Ljava/util/jar/JarFile;->close()V

    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_1e8
    .catch Ljava/io/IOException; {:try_start_1de .. :try_end_1e8} :catch_1e9

    goto :goto_1ed

    :catch_1e9
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1ed
    const/4 v1, 0x0

    return v1

    :catchall_1ef
    move-exception v0

    goto :goto_1f6

    :catch_1f1
    move-exception v0

    goto :goto_1fb

    :catchall_1f3
    move-exception v0

    move-object/from16 v12, p1

    :goto_1f6
    move-object v1, v0

    goto :goto_227

    :catch_1f8
    move-exception v0

    move-object/from16 v12, p1

    :goto_1fb
    move-object v1, v0

    :try_start_1fc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Verify failed"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_210
    .catchall {:try_start_1fc .. :try_end_210} :catchall_1ef

    nop

    if-eqz v7, :cond_219

    :try_start_213
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V

    goto :goto_219

    :catch_217
    move-exception v0

    goto :goto_222

    :cond_219
    :goto_219
    if-eqz v8, :cond_21e

    invoke-virtual {v8}, Ljava/util/jar/JarFile;->close()V

    :cond_21e
    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_221
    .catch Ljava/io/IOException; {:try_start_213 .. :try_end_221} :catch_217

    goto :goto_225

    :goto_222
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_225
    const/4 v3, 0x0

    return v3

    :goto_227
    if-eqz v7, :cond_22f

    :try_start_229
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V

    goto :goto_22f

    :catch_22d
    move-exception v0

    goto :goto_238

    :cond_22f
    :goto_22f
    if-eqz v8, :cond_234

    invoke-virtual {v8}, Ljava/util/jar/JarFile;->close()V

    :cond_234
    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_237
    .catch Ljava/io/IOException; {:try_start_229 .. :try_end_237} :catch_22d

    goto :goto_23b

    :goto_238
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_23b
    throw v1
.end method

.method private static verifyApk(Ljava/util/jar/JarFile;Lcom/miui/enterprise/signature/EnterpriseCer;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    iget-object v0, p1, Lcom/miui/enterprise/signature/EnterpriseCer;->deviceIds:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "EnterpriseVerifier"

    if-eqz v0, :cond_2b

    iget-object v0, p1, Lcom/miui/enterprise/signature/EnterpriseCer;->deviceIds:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_2b

    invoke-static {}, Lmiui/telephony/TelephonyManagerUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/miui/enterprise/signature/EnterpriseCer;->deviceIds:[Ljava/lang/String;

    array-length v5, v4

    :goto_14
    if-ge v1, v5, :cond_23

    aget-object v6, v4, v1

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_20

    const/4 v3, 0x1

    goto :goto_23

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_23
    :goto_23
    if-nez v3, :cond_2a

    const-string v1, "Verify failed, device not authorized"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    return v3

    :cond_2b
    iget-object v0, p1, Lcom/miui/enterprise/signature/EnterpriseCer;->apkNewHash:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->verifyApkHashForP(Ljava/lang/String;Ljava/util/jar/JarFile;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_3a

    const-string v0, "Verify failed, new apk hash"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3a
    iget-object v0, p1, Lcom/miui/enterprise/signature/EnterpriseCer;->apkHash:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->verifyApkHash(Ljava/lang/String;Ljava/util/jar/JarFile;)Z

    move-result v0

    if-eqz v0, :cond_48

    const-string v0, "Verify failed, old apk hash"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_48
    return v1
.end method

.method private static verifyApkHash(Ljava/lang/String;Ljava/util/jar/JarFile;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "META-INF/MANIFEST.MF"

    invoke-virtual {p1, v1}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_27

    invoke-static {v1}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->sha256([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_21} :catch_31
    .catchall {:try_start_1 .. :try_end_21} :catchall_2f

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_26
    return v2

    :cond_27
    :try_start_27
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to read META-INF/MANIFEST.MF"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2f} :catch_31
    .catchall {:try_start_27 .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception v1

    goto :goto_41

    :catch_31
    move-exception v1

    :try_start_32
    const-string v2, "EnterpriseVerifier"

    const-string v3, "Verify failed, new apk hash"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_2f

    nop

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_3f
    const/4 v1, 0x0

    return v1

    :goto_41
    if-eqz v0, :cond_46

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_46
    throw v1
.end method

.method private static verifyApkHashForP(Ljava/lang/String;Ljava/util/jar/JarFile;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    const-string v2, "META-INF/MANIFEST.MF"

    invoke-virtual {p1, v2}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    move-object v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x800

    new-array v4, v3, [B

    :goto_16
    invoke-virtual {v0, v4, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    move v6, v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_27

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4, v1, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :cond_27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "UTF-8"

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->sha256([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_39} :catch_41
    .catchall {:try_start_2 .. :try_end_39} :catchall_3f

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_3e
    return v1

    :catchall_3f
    move-exception v1

    goto :goto_50

    :catch_41
    move-exception v2

    :try_start_42
    const-string v3, "EnterpriseVerifier"

    const-string v4, "Verify failed, new apk hash"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_42 .. :try_end_49} :catchall_3f

    nop

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_4f
    return v1

    :goto_50
    if-eqz v0, :cond_55

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_55
    throw v1
.end method

.method private static verifyDate(Lcom/miui/enterprise/signature/EnterpriseCer;)Z
    .registers 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/enterprise/signature/EnterpriseCer;->getValidFrom()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {p0}, Lcom/miui/enterprise/signature/EnterpriseCer;->getValidTo()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    return v1
.end method

.method public static verifyPlatformSign(Ljava/lang/String;)Z
    .registers 7

    const-string v0, "Failed to close jar"

    const-string v1, "EnterpriseVerifier"

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_6
    new-instance v4, Ljava/util/jar/JarFile;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;Z)V

    move-object v2, v4

    invoke-static {v2}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->collectSignature(Ljava/util/jar/JarFile;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2a

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1a

    goto :goto_2a

    :cond_1a
    const-string v5, "3082046c30820354a0030201020209008d64f55b5ca4ef25300d06092a864886f70d0101050500308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d301e170d3131313230363033323733305a170d3339303432333033323733305a308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100cfb201f02792657970678db7ae5476d6050534be0c0f308370f0b0f8f08ed8f62a39f804ac4e9dd6262759f2545abcc7aa04fa0226d0029bacab42a970806023bd740c73fad30c56b286037eb1663e79f6c4196ed04d41c92c125d130c29d801a1db681af2d89de2d46e7af218385580186eaf7b68d789574e826cc1762190d70aac565b94cf7812d7a90b7d045f3da952a9c585cf437ced4857675c859d3808a882fec9401dc6ce05140e94c918e381223aa69f7df2ded90767505cbfb1c0a8371e9886b56e85925fafccf312aeea6a892e55fda66957f0dd245e6541e188bd0388d880478557591f16a2e2fdf01b83c6d75298f2e27bf3eb0c12ab7ccac68b020103a381e83081e5301d0603551d0e041604142438de5c93ae19065adbdcb82033744bd89d25663081b50603551d230481ad3081aa80142438de5c93ae19065adbdcb82033744bd89d2566a18186a48183308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d8209008d64f55b5ca4ef25300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100ccdf3afa17e8aa4abbf30cd193853ed324ba06a18af56b6aee1b2f96f16bf426406b851d76dc4b1d2f150590e6013fc64d7440f400b59af6b225ae6bd3409b0dec19331365077612e6298dd2323ae0bdb14c774df3e9cc3502841204f248d32971fc4d4b9fb98e830f95f71f5f4b31f94f33a4ac2b1ef5eeb1ecb78a71f5333a7f003c454f4bf4e633626ce330f48df62a9396324da15e676a29d8f563408b7822abf25d2d372f91e43f4dccb17ba8a248b475b71c936755efe1387e2d0511c13f85eed4d12bae3d004ae631c963f9fbf4fc1319f0ffa7de2af9f02f00dec902eb88be20e7ce3d9d3392f338adb8d79392318e057f3110c173af20d5ed1094d6"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_20} :catch_3c
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_20} :catch_3c
    .catchall {:try_start_6 .. :try_end_20} :catchall_3a

    nop

    :try_start_21
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_29

    :catch_25
    move-exception v5

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_29
    return v3

    :cond_2a
    :goto_2a
    :try_start_2a
    const-string v5, "Verify failed, failed to load enterprise cert signature"

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2f} :catch_3c
    .catch Ljava/security/cert/CertificateException; {:try_start_2a .. :try_end_2f} :catch_3c
    .catchall {:try_start_2a .. :try_end_2f} :catchall_3a

    nop

    nop

    :try_start_31
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_39

    :catch_35
    move-exception v5

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_39
    return v3

    :catchall_3a
    move-exception v3

    goto :goto_50

    :catch_3c
    move-exception v4

    :try_start_3d
    const-string v5, "Verify failed"

    invoke-static {v1, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_3a

    nop

    if-eqz v2, :cond_4e

    :try_start_45
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_4e

    :catch_49
    move-exception v5

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    :cond_4e
    :goto_4e
    nop

    :goto_4f
    return v3

    :goto_50
    if-eqz v2, :cond_5b

    :try_start_52
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_5b

    :catch_56
    move-exception v4

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    :cond_5b
    :goto_5b
    nop

    :goto_5c
    throw v3
.end method

.method private static writeFile(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_2d

    :cond_12
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filed to create temp file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2d
    :goto_2d
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x2000

    new-array v2, v2, [B

    :goto_3b
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_48

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_3b

    :cond_48
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void
.end method
