.class Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;
.super Ljava/security/Provider;
.source "AndroidKeyStoreBCWorkaroundProvider.java"


# static fields
.field private static final DESEDE_SYSTEM_PROPERTY:Ljava/lang/String; = "ro.hardware.keystore_desede"

.field private static final KEYSTORE_PRIVATE_KEY_CLASS_NAME:Ljava/lang/String; = "android.security.keystore.AndroidKeyStorePrivateKey"

.field private static final KEYSTORE_PUBLIC_KEY_CLASS_NAME:Ljava/lang/String; = "android.security.keystore.AndroidKeyStorePublicKey"

.field private static final KEYSTORE_SECRET_KEY_CLASS_NAME:Ljava/lang/String; = "android.security.keystore.AndroidKeyStoreSecretKey"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "android.security.keystore"


# direct methods
.method constructor <init>()V
    .registers 5

    const-string v0, "AndroidKeyStoreBCWorkaround"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-string v3, "Android KeyStore security provider to work around Bouncy Castle"

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    const-string v0, "HmacSHA1"

    const-string v1, "android.security.keystore.AndroidKeyStoreHmacSpi$HmacSHA1"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putMacImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Mac.1.2.840.113549.2.7"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Mac.HMAC-SHA1"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Mac.HMAC/SHA1"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "HmacSHA224"

    const-string v1, "android.security.keystore.AndroidKeyStoreHmacSpi$HmacSHA224"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putMacImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Mac.1.2.840.113549.2.9"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Alg.Alias.Mac.HMAC-SHA224"

    invoke-virtual {p0, v2, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Alg.Alias.Mac.HMAC/SHA224"

    invoke-virtual {p0, v2, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "HmacSHA256"

    const-string v2, "android.security.keystore.AndroidKeyStoreHmacSpi$HmacSHA256"

    invoke-direct {p0, v0, v2}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putMacImpl(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Mac.HMAC-SHA256"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Mac.HMAC/SHA256"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "HmacSHA384"

    const-string v1, "android.security.keystore.AndroidKeyStoreHmacSpi$HmacSHA384"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putMacImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Mac.1.2.840.113549.2.10"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Mac.HMAC-SHA384"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Mac.HMAC/SHA384"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "HmacSHA512"

    const-string v1, "android.security.keystore.AndroidKeyStoreHmacSpi$HmacSHA512"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putMacImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Mac.1.2.840.113549.2.11"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Mac.HMAC-SHA512"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Mac.HMAC/SHA512"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AES/ECB/NoPadding"

    const-string v1, "android.security.keystore.AndroidKeyStoreUnauthenticatedAESCipherSpi$ECB$NoPadding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AES/ECB/PKCS7Padding"

    const-string v1, "android.security.keystore.AndroidKeyStoreUnauthenticatedAESCipherSpi$ECB$PKCS7Padding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AES/CBC/NoPadding"

    const-string v1, "android.security.keystore.AndroidKeyStoreUnauthenticatedAESCipherSpi$CBC$NoPadding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AES/CBC/PKCS7Padding"

    const-string v1, "android.security.keystore.AndroidKeyStoreUnauthenticatedAESCipherSpi$CBC$PKCS7Padding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AES/CTR/NoPadding"

    const-string v1, "android.security.keystore.AndroidKeyStoreUnauthenticatedAESCipherSpi$CTR$NoPadding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ro.hardware.keystore_desede"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    const-string v0, "DESede/CBC/NoPadding"

    const-string v1, "android.security.keystore.AndroidKeyStore3DESCipherSpi$CBC$NoPadding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DESede/CBC/PKCS7Padding"

    const-string v1, "android.security.keystore.AndroidKeyStore3DESCipherSpi$CBC$PKCS7Padding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DESede/ECB/NoPadding"

    const-string v1, "android.security.keystore.AndroidKeyStore3DESCipherSpi$ECB$NoPadding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DESede/ECB/PKCS7Padding"

    const-string v1, "android.security.keystore.AndroidKeyStore3DESCipherSpi$ECB$PKCS7Padding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c4
    const-string v0, "AES/GCM/NoPadding"

    const-string v1, "android.security.keystore.AndroidKeyStoreAuthenticatedAESCipherSpi$GCM$NoPadding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RSA/ECB/NoPadding"

    const-string v1, "android.security.keystore.AndroidKeyStoreRSACipherSpi$NoPadding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Cipher.RSA/None/NoPadding"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "RSA/ECB/PKCS1Padding"

    const-string v1, "android.security.keystore.AndroidKeyStoreRSACipherSpi$PKCS1Padding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Cipher.RSA/None/PKCS1Padding"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "RSA/ECB/OAEPPadding"

    const-string v1, "android.security.keystore.AndroidKeyStoreRSACipherSpi$OAEPWithSHA1AndMGF1Padding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.Cipher.RSA/None/OAEPPadding"

    invoke-virtual {p0, v2, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "RSA/ECB/OAEPWithSHA-1AndMGF1Padding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-1AndMGF1Padding"

    const-string v1, "RSA/ECB/OAEPWithSHA-1AndMGF1Padding"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "RSA/ECB/OAEPWithSHA-224AndMGF1Padding"

    const-string v1, "android.security.keystore.AndroidKeyStoreRSACipherSpi$OAEPWithSHA224AndMGF1Padding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-224AndMGF1Padding"

    const-string v1, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.security.keystore.AndroidKeyStoreRSACipherSpi$OAEPWithSHA256AndMGF1Padding"

    invoke-direct {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-256AndMGF1Padding"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "RSA/ECB/OAEPWithSHA-384AndMGF1Padding"

    const-string v1, "android.security.keystore.AndroidKeyStoreRSACipherSpi$OAEPWithSHA384AndMGF1Padding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-384AndMGF1Padding"

    const-string v1, "RSA/ECB/OAEPWithSHA-384AndMGF1Padding"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "RSA/ECB/OAEPWithSHA-512AndMGF1Padding"

    const-string v1, "android.security.keystore.AndroidKeyStoreRSACipherSpi$OAEPWithSHA512AndMGF1Padding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-512AndMGF1Padding"

    const-string v1, "RSA/ECB/OAEPWithSHA-512AndMGF1Padding"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "NONEwithRSA"

    const-string v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$NONEWithPKCS1Padding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MD5withRSA"

    const-string v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$MD5WithPKCS1Padding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Signature.MD5WithRSAEncryption"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Signature.MD5/RSA"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Signature.1.2.840.113549.1.1.4"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Signature.1.2.840.113549.2.5with1.2.840.113549.1.1.1"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SHA1withRSA"

    const-string v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA1WithPKCS1Padding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Signature.SHA1WithRSAEncryption"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Signature.SHA1/RSA"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Signature.SHA-1/RSA"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Signature.1.2.840.113549.1.1.5"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.113549.1.1.1"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.113549.1.1.5"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Signature.1.3.14.3.2.29"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SHA224withRSA"

    const-string v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA224WithPKCS1Padding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Signature.SHA224WithRSAEncryption"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Signature.1.2.840.113549.1.1.11"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.113549.1.1.1"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.113549.1.1.11"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SHA256withRSA"

    const-string v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA256WithPKCS1Padding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Signature.SHA256WithRSAEncryption"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Signature.1.2.840.113549.1.1.11"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.113549.1.1.1"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.113549.1.1.11"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SHA384withRSA"

    const-string v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA384WithPKCS1Padding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Signature.SHA384WithRSAEncryption"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Signature.1.2.840.113549.1.1.12"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.2with1.2.840.113549.1.1.1"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SHA512withRSA"

    const-string v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA512WithPKCS1Padding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Signature.SHA512WithRSAEncryption"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Signature.1.2.840.113549.1.1.13"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.3with1.2.840.113549.1.1.1"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SHA1withRSA/PSS"

    const-string v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA1WithPSSPadding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SHA224withRSA/PSS"

    const-string v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA224WithPSSPadding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SHA256withRSA/PSS"

    const-string v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA256WithPSSPadding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SHA384withRSA/PSS"

    const-string v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA384WithPSSPadding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SHA512withRSA/PSS"

    const-string v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA512WithPSSPadding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "NONEwithECDSA"

    const-string v1, "android.security.keystore.AndroidKeyStoreECDSASignatureSpi$NONE"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SHA1withECDSA"

    const-string v1, "android.security.keystore.AndroidKeyStoreECDSASignatureSpi$SHA1"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Signature.ECDSA"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Signature.ECDSAwithSHA1"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Signature.1.2.840.10045.4.1"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.10045.2.1"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SHA224withECDSA"

    const-string v1, "android.security.keystore.AndroidKeyStoreECDSASignatureSpi$SHA224"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Signature.1.2.840.10045.4.3.1"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.10045.2.1"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SHA256withECDSA"

    const-string v1, "android.security.keystore.AndroidKeyStoreECDSASignatureSpi$SHA256"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Signature.1.2.840.10045.4.3.2"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.10045.2.1"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SHA384withECDSA"

    const-string v1, "android.security.keystore.AndroidKeyStoreECDSASignatureSpi$SHA384"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Signature.1.2.840.10045.4.3.3"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.2with1.2.840.10045.2.1"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SHA512withECDSA"

    const-string v1, "android.security.keystore.AndroidKeyStoreECDSASignatureSpi$SHA512"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Signature.1.2.840.10045.4.3.4"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.3with1.2.840.10045.2.1"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getSupportedEcdsaSignatureDigests()[Ljava/lang/String;
    .registers 6

    const-string v0, "NONE"

    const-string v1, "SHA-1"

    const-string v2, "SHA-224"

    const-string v3, "SHA-256"

    const-string v4, "SHA-384"

    const-string v5, "SHA-512"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportedRsaSignatureWithPkcs1PaddingDigests()[Ljava/lang/String;
    .registers 7

    const-string v0, "NONE"

    const-string v1, "MD5"

    const-string v2, "SHA-1"

    const-string v3, "SHA-224"

    const-string v4, "SHA-256"

    const-string v5, "SHA-384"

    const-string v6, "SHA-512"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cipher."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " SupportedKeyClasses"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.security.keystore.AndroidKeyStorePrivateKey|android.security.keystore.AndroidKeyStorePublicKey"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private putMacImpl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mac."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " SupportedKeyClasses"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.security.keystore.AndroidKeyStoreSecretKey"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Signature."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " SupportedKeyClasses"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.security.keystore.AndroidKeyStorePrivateKey|android.security.keystore.AndroidKeyStorePublicKey"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private putSymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cipher."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " SupportedKeyClasses"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.security.keystore.AndroidKeyStoreSecretKey"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
