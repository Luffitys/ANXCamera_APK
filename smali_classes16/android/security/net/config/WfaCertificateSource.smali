.class public final Landroid/security/net/config/WfaCertificateSource;
.super Landroid/security/net/config/DirectoryCertificateSource;
.source "WfaCertificateSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/net/config/WfaCertificateSource$NoPreloadHolder;
    }
.end annotation


# static fields
.field private static final CACERTS_WFA_PATH:Ljava/lang/String; = "/apex/com.android.wifi/etc/security/cacerts_wfa"


# direct methods
.method private constructor <init>()V
    .registers 3

    new-instance v0, Ljava/io/File;

    const-string v1, "/apex/com.android.wifi/etc/security/cacerts_wfa"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/security/net/config/DirectoryCertificateSource;-><init>(Ljava/io/File;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/security/net/config/WfaCertificateSource$1;)V
    .registers 2

    invoke-direct {p0}, Landroid/security/net/config/WfaCertificateSource;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/security/net/config/WfaCertificateSource;
    .registers 1

    # getter for: Landroid/security/net/config/WfaCertificateSource$NoPreloadHolder;->INSTANCE:Landroid/security/net/config/WfaCertificateSource;
    invoke-static {}, Landroid/security/net/config/WfaCertificateSource$NoPreloadHolder;->access$100()Landroid/security/net/config/WfaCertificateSource;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .registers 2

    invoke-super {p0, p1}, Landroid/security/net/config/DirectoryCertificateSource;->findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 2

    invoke-super {p0, p1}, Landroid/security/net/config/DirectoryCertificateSource;->findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 2

    invoke-super {p0, p1}, Landroid/security/net/config/DirectoryCertificateSource;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getCertificates()Ljava/util/Set;
    .registers 2

    invoke-super {p0}, Landroid/security/net/config/DirectoryCertificateSource;->getCertificates()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic handleTrustStorageUpdate()V
    .registers 1

    invoke-super {p0}, Landroid/security/net/config/DirectoryCertificateSource;->handleTrustStorageUpdate()V

    return-void
.end method

.method protected isCertMarkedAsRemoved(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
