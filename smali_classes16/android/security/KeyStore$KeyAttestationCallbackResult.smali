.class Landroid/security/KeyStore$KeyAttestationCallbackResult;
.super Ljava/lang/Object;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyAttestationCallbackResult"
.end annotation


# instance fields
.field private certificateChain:Landroid/security/keymaster/KeymasterCertificateChain;

.field private keystoreResponse:Landroid/security/keystore/KeystoreResponse;

.field final synthetic this$0:Landroid/security/KeyStore;


# direct methods
.method public constructor <init>(Landroid/security/KeyStore;Landroid/security/keystore/KeystoreResponse;Landroid/security/keymaster/KeymasterCertificateChain;)V
    .registers 4

    iput-object p1, p0, Landroid/security/KeyStore$KeyAttestationCallbackResult;->this$0:Landroid/security/KeyStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/security/KeyStore$KeyAttestationCallbackResult;->keystoreResponse:Landroid/security/keystore/KeystoreResponse;

    iput-object p3, p0, Landroid/security/KeyStore$KeyAttestationCallbackResult;->certificateChain:Landroid/security/keymaster/KeymasterCertificateChain;

    return-void
.end method


# virtual methods
.method public getCertificateChain()Landroid/security/keymaster/KeymasterCertificateChain;
    .registers 2

    iget-object v0, p0, Landroid/security/KeyStore$KeyAttestationCallbackResult;->certificateChain:Landroid/security/keymaster/KeymasterCertificateChain;

    return-object v0
.end method

.method public getKeystoreResponse()Landroid/security/keystore/KeystoreResponse;
    .registers 2

    iget-object v0, p0, Landroid/security/KeyStore$KeyAttestationCallbackResult;->keystoreResponse:Landroid/security/keystore/KeystoreResponse;

    return-object v0
.end method

.method public setCertificateChain(Landroid/security/keymaster/KeymasterCertificateChain;)V
    .registers 2

    iput-object p1, p0, Landroid/security/KeyStore$KeyAttestationCallbackResult;->certificateChain:Landroid/security/keymaster/KeymasterCertificateChain;

    return-void
.end method

.method public setKeystoreResponse(Landroid/security/keystore/KeystoreResponse;)V
    .registers 2

    iput-object p1, p0, Landroid/security/KeyStore$KeyAttestationCallbackResult;->keystoreResponse:Landroid/security/keystore/KeystoreResponse;

    return-void
.end method
