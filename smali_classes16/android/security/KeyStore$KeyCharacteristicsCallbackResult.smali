.class Landroid/security/KeyStore$KeyCharacteristicsCallbackResult;
.super Ljava/lang/Object;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyCharacteristicsCallbackResult"
.end annotation


# instance fields
.field private keyCharacteristics:Landroid/security/keymaster/KeyCharacteristics;

.field private keystoreResponse:Landroid/security/keystore/KeystoreResponse;

.field final synthetic this$0:Landroid/security/KeyStore;


# direct methods
.method public constructor <init>(Landroid/security/KeyStore;Landroid/security/keystore/KeystoreResponse;Landroid/security/keymaster/KeyCharacteristics;)V
    .registers 4

    iput-object p1, p0, Landroid/security/KeyStore$KeyCharacteristicsCallbackResult;->this$0:Landroid/security/KeyStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/security/KeyStore$KeyCharacteristicsCallbackResult;->keystoreResponse:Landroid/security/keystore/KeystoreResponse;

    iput-object p3, p0, Landroid/security/KeyStore$KeyCharacteristicsCallbackResult;->keyCharacteristics:Landroid/security/keymaster/KeyCharacteristics;

    return-void
.end method


# virtual methods
.method public getKeyCharacteristics()Landroid/security/keymaster/KeyCharacteristics;
    .registers 2

    iget-object v0, p0, Landroid/security/KeyStore$KeyCharacteristicsCallbackResult;->keyCharacteristics:Landroid/security/keymaster/KeyCharacteristics;

    return-object v0
.end method

.method public getKeystoreResponse()Landroid/security/keystore/KeystoreResponse;
    .registers 2

    iget-object v0, p0, Landroid/security/KeyStore$KeyCharacteristicsCallbackResult;->keystoreResponse:Landroid/security/keystore/KeystoreResponse;

    return-object v0
.end method

.method public setKeyCharacteristics(Landroid/security/keymaster/KeyCharacteristics;)V
    .registers 2

    iput-object p1, p0, Landroid/security/KeyStore$KeyCharacteristicsCallbackResult;->keyCharacteristics:Landroid/security/keymaster/KeyCharacteristics;

    return-void
.end method

.method public setKeystoreResponse(Landroid/security/keystore/KeystoreResponse;)V
    .registers 2

    iput-object p1, p0, Landroid/security/KeyStore$KeyCharacteristicsCallbackResult;->keystoreResponse:Landroid/security/keystore/KeystoreResponse;

    return-void
.end method
