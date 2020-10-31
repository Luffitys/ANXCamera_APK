.class Landroid/security/net/config/KeyStoreCertificateSource;
.super Ljava/lang/Object;
.source "KeyStoreCertificateSource.java"

# interfaces
.implements Landroid/security/net/config/CertificateSource;


# instance fields
.field private mCertificates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

.field private final mKeyStore:Ljava/security/KeyStore;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mKeyStore:Ljava/security/KeyStore;

    return-void
.end method

.method private ensureInitialized()V
    .registers 7

    iget-object v0, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mCertificates:Ljava/util/Set;

    if-eqz v1, :cond_9

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_4c

    return-void

    :cond_9
    :try_start_9
    new-instance v1, Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-direct {v1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;-><init>()V

    new-instance v2, Landroid/util/ArraySet;

    iget-object v3, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3}, Ljava/security/KeyStore;->size()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(I)V

    iget-object v3, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v5, v4}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    if-eqz v5, :cond_3b

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v5}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    :cond_3b
    goto :goto_1f

    :cond_3c
    iput-object v1, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    iput-object v2, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mCertificates:Ljava/util/Set;
    :try_end_40
    .catch Ljava/security/KeyStoreException; {:try_start_9 .. :try_end_40} :catch_43
    .catchall {:try_start_9 .. :try_end_40} :catchall_4c

    nop

    :try_start_41
    monitor-exit v0

    return-void

    :catch_43
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to load certificates from KeyStore"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_41 .. :try_end_4e} :catchall_4c

    throw v1
.end method


# virtual methods
.method public findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/security/net/config/KeyStoreCertificateSource;->ensureInitialized()V

    iget-object v0, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    :cond_14
    new-instance v1, Landroid/util/ArraySet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/TrustAnchor;

    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_35
    return-object v1
.end method

.method public findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 4

    invoke-direct {p0}, Landroid/security/net/config/KeyStoreCertificateSource;->ensureInitialized()V

    iget-object v0, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v0

    if-nez v0, :cond_d

    const/4 v1, 0x0

    return-object v1

    :cond_d
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1
.end method

.method public findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 4

    invoke-direct {p0}, Landroid/security/net/config/KeyStoreCertificateSource;->ensureInitialized()V

    iget-object v0, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v0

    if-nez v0, :cond_d

    const/4 v1, 0x0

    return-object v1

    :cond_d
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1
.end method

.method public getCertificates()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/security/net/config/KeyStoreCertificateSource;->ensureInitialized()V

    iget-object v0, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mCertificates:Ljava/util/Set;

    return-object v0
.end method

.method public handleTrustStorageUpdate()V
    .registers 1

    return-void
.end method
