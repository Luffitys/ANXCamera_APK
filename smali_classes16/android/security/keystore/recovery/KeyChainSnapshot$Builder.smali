.class public Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
.super Ljava/lang/Object;
.source "KeyChainSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/recovery/KeyChainSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/security/keystore/recovery/KeyChainSnapshot;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/security/keystore/recovery/KeyChainSnapshot;-><init>(Landroid/security/keystore/recovery/KeyChainSnapshot$1;)V

    iput-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    return-void
.end method


# virtual methods
.method public build()Landroid/security/keystore/recovery/KeyChainSnapshot;
    .registers 3

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    # getter for: Landroid/security/keystore/recovery/KeyChainSnapshot;->mKeyChainProtectionParams:Ljava/util/List;
    invoke-static {v0}, Landroid/security/keystore/recovery/KeyChainSnapshot;->access$600(Landroid/security/keystore/recovery/KeyChainSnapshot;)Ljava/util/List;

    move-result-object v0

    const-string v1, "keyChainProtectionParams"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    # getter for: Landroid/security/keystore/recovery/KeyChainSnapshot;->mEntryRecoveryData:Ljava/util/List;
    invoke-static {v0}, Landroid/security/keystore/recovery/KeyChainSnapshot;->access$700(Landroid/security/keystore/recovery/KeyChainSnapshot;)Ljava/util/List;

    move-result-object v0

    const-string v1, "entryRecoveryData"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    # getter for: Landroid/security/keystore/recovery/KeyChainSnapshot;->mEncryptedRecoveryKeyBlob:[B
    invoke-static {v0}, Landroid/security/keystore/recovery/KeyChainSnapshot;->access$800(Landroid/security/keystore/recovery/KeyChainSnapshot;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    # getter for: Landroid/security/keystore/recovery/KeyChainSnapshot;->mServerParams:[B
    invoke-static {v0}, Landroid/security/keystore/recovery/KeyChainSnapshot;->access$400(Landroid/security/keystore/recovery/KeyChainSnapshot;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    # getter for: Landroid/security/keystore/recovery/KeyChainSnapshot;->mCertPath:Landroid/security/keystore/recovery/RecoveryCertPath;
    invoke-static {v0}, Landroid/security/keystore/recovery/KeyChainSnapshot;->access$500(Landroid/security/keystore/recovery/KeyChainSnapshot;)Landroid/security/keystore/recovery/RecoveryCertPath;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    return-object v0
.end method

.method public setCounterId(J)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
    .registers 4

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    # setter for: Landroid/security/keystore/recovery/KeyChainSnapshot;->mCounterId:J
    invoke-static {v0, p1, p2}, Landroid/security/keystore/recovery/KeyChainSnapshot;->access$302(Landroid/security/keystore/recovery/KeyChainSnapshot;J)J

    return-object p0
.end method

.method public setEncryptedRecoveryKeyBlob([B)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
    .registers 3

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    # setter for: Landroid/security/keystore/recovery/KeyChainSnapshot;->mEncryptedRecoveryKeyBlob:[B
    invoke-static {v0, p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->access$802(Landroid/security/keystore/recovery/KeyChainSnapshot;[B)[B

    return-object p0
.end method

.method public setKeyChainProtectionParams(Ljava/util/List;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/KeyChainProtectionParams;",
            ">;)",
            "Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;"
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    # setter for: Landroid/security/keystore/recovery/KeyChainSnapshot;->mKeyChainProtectionParams:Ljava/util/List;
    invoke-static {v0, p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->access$602(Landroid/security/keystore/recovery/KeyChainSnapshot;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public setMaxAttempts(I)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
    .registers 3

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    # setter for: Landroid/security/keystore/recovery/KeyChainSnapshot;->mMaxAttempts:I
    invoke-static {v0, p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->access$202(Landroid/security/keystore/recovery/KeyChainSnapshot;I)I

    return-object p0
.end method

.method public setServerParams([B)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
    .registers 3

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    # setter for: Landroid/security/keystore/recovery/KeyChainSnapshot;->mServerParams:[B
    invoke-static {v0, p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->access$402(Landroid/security/keystore/recovery/KeyChainSnapshot;[B)[B

    return-object p0
.end method

.method public setSnapshotVersion(I)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
    .registers 3

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    # setter for: Landroid/security/keystore/recovery/KeyChainSnapshot;->mSnapshotVersion:I
    invoke-static {v0, p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->access$102(Landroid/security/keystore/recovery/KeyChainSnapshot;I)I

    return-object p0
.end method

.method public setTrustedHardwareCertPath(Ljava/security/cert/CertPath;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    invoke-static {p1}, Landroid/security/keystore/recovery/RecoveryCertPath;->createRecoveryCertPath(Ljava/security/cert/CertPath;)Landroid/security/keystore/recovery/RecoveryCertPath;

    move-result-object v1

    # setter for: Landroid/security/keystore/recovery/KeyChainSnapshot;->mCertPath:Landroid/security/keystore/recovery/RecoveryCertPath;
    invoke-static {v0, v1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->access$502(Landroid/security/keystore/recovery/KeyChainSnapshot;Landroid/security/keystore/recovery/RecoveryCertPath;)Landroid/security/keystore/recovery/RecoveryCertPath;

    return-object p0
.end method

.method public setWrappedApplicationKeys(Ljava/util/List;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;)",
            "Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;"
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    # setter for: Landroid/security/keystore/recovery/KeyChainSnapshot;->mEntryRecoveryData:Ljava/util/List;
    invoke-static {v0, p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->access$702(Landroid/security/keystore/recovery/KeyChainSnapshot;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method
