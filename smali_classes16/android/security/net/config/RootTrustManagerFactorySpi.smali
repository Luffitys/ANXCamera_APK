.class public Landroid/security/net/config/RootTrustManagerFactorySpi;
.super Ljavax/net/ssl/TrustManagerFactorySpi;
.source "RootTrustManagerFactorySpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/net/config/RootTrustManagerFactorySpi$ApplicationConfigParameters;
    }
.end annotation


# instance fields
.field private mApplicationConfig:Landroid/security/net/config/ApplicationConfig;

.field private mConfig:Landroid/security/net/config/NetworkSecurityConfig;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljavax/net/ssl/TrustManagerFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGetTrustManagers()[Ljavax/net/ssl/TrustManager;
    .registers 4

    iget-object v0, p0, Landroid/security/net/config/RootTrustManagerFactorySpi;->mApplicationConfig:Landroid/security/net/config/ApplicationConfig;

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/security/net/config/ApplicationConfig;->getTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    aput-object v0, v1, v2

    return-object v1

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TrustManagerFactory not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineInit(Ljava/security/KeyStore;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    if-eqz p1, :cond_f

    new-instance v0, Landroid/security/net/config/ApplicationConfig;

    new-instance v1, Landroid/security/net/config/KeyStoreConfigSource;

    invoke-direct {v1, p1}, Landroid/security/net/config/KeyStoreConfigSource;-><init>(Ljava/security/KeyStore;)V

    invoke-direct {v0, v1}, Landroid/security/net/config/ApplicationConfig;-><init>(Landroid/security/net/config/ConfigSource;)V

    iput-object v0, p0, Landroid/security/net/config/RootTrustManagerFactorySpi;->mApplicationConfig:Landroid/security/net/config/ApplicationConfig;

    goto :goto_15

    :cond_f
    invoke-static {}, Landroid/security/net/config/ApplicationConfig;->getDefaultInstance()Landroid/security/net/config/ApplicationConfig;

    move-result-object v0

    iput-object v0, p0, Landroid/security/net/config/RootTrustManagerFactorySpi;->mApplicationConfig:Landroid/security/net/config/ApplicationConfig;

    :goto_15
    return-void
.end method

.method public engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of v0, p1, Landroid/security/net/config/RootTrustManagerFactorySpi$ApplicationConfigParameters;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Landroid/security/net/config/RootTrustManagerFactorySpi$ApplicationConfigParameters;

    iget-object v0, v0, Landroid/security/net/config/RootTrustManagerFactorySpi$ApplicationConfigParameters;->config:Landroid/security/net/config/ApplicationConfig;

    iput-object v0, p0, Landroid/security/net/config/RootTrustManagerFactorySpi;->mApplicationConfig:Landroid/security/net/config/ApplicationConfig;

    return-void

    :cond_c
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported spec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Landroid/security/net/config/RootTrustManagerFactorySpi$ApplicationConfigParameters;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
