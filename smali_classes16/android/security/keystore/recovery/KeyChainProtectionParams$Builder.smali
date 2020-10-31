.class public Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;
.super Ljava/lang/Object;
.source "KeyChainProtectionParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/recovery/KeyChainProtectionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mInstance:Landroid/security/keystore/recovery/KeyChainProtectionParams;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/security/keystore/recovery/KeyChainProtectionParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/security/keystore/recovery/KeyChainProtectionParams;-><init>(Landroid/security/keystore/recovery/KeyChainProtectionParams$1;)V

    iput-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainProtectionParams;

    return-void
.end method


# virtual methods
.method public build()Landroid/security/keystore/recovery/KeyChainProtectionParams;
    .registers 3

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainProtectionParams;

    # getter for: Landroid/security/keystore/recovery/KeyChainProtectionParams;->mUserSecretType:Ljava/lang/Integer;
    invoke-static {v0}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->access$100(Landroid/security/keystore/recovery/KeyChainProtectionParams;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainProtectionParams;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # setter for: Landroid/security/keystore/recovery/KeyChainProtectionParams;->mUserSecretType:Ljava/lang/Integer;
    invoke-static {v0, v1}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->access$102(Landroid/security/keystore/recovery/KeyChainProtectionParams;Ljava/lang/Integer;)Ljava/lang/Integer;

    :cond_13
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainProtectionParams;

    # getter for: Landroid/security/keystore/recovery/KeyChainProtectionParams;->mLockScreenUiFormat:Ljava/lang/Integer;
    invoke-static {v0}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->access$200(Landroid/security/keystore/recovery/KeyChainProtectionParams;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainProtectionParams;

    # getter for: Landroid/security/keystore/recovery/KeyChainProtectionParams;->mKeyDerivationParams:Landroid/security/keystore/recovery/KeyDerivationParams;
    invoke-static {v0}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->access$300(Landroid/security/keystore/recovery/KeyChainProtectionParams;)Landroid/security/keystore/recovery/KeyDerivationParams;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainProtectionParams;

    # getter for: Landroid/security/keystore/recovery/KeyChainProtectionParams;->mSecret:[B
    invoke-static {v0}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->access$400(Landroid/security/keystore/recovery/KeyChainProtectionParams;)[B

    move-result-object v0

    if-nez v0, :cond_35

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainProtectionParams;

    const/4 v1, 0x0

    new-array v1, v1, [B

    # setter for: Landroid/security/keystore/recovery/KeyChainProtectionParams;->mSecret:[B
    invoke-static {v0, v1}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->access$402(Landroid/security/keystore/recovery/KeyChainProtectionParams;[B)[B

    :cond_35
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainProtectionParams;

    return-object v0
.end method

.method public setKeyDerivationParams(Landroid/security/keystore/recovery/KeyDerivationParams;)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;
    .registers 3

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainProtectionParams;

    # setter for: Landroid/security/keystore/recovery/KeyChainProtectionParams;->mKeyDerivationParams:Landroid/security/keystore/recovery/KeyDerivationParams;
    invoke-static {v0, p1}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->access$302(Landroid/security/keystore/recovery/KeyChainProtectionParams;Landroid/security/keystore/recovery/KeyDerivationParams;)Landroid/security/keystore/recovery/KeyDerivationParams;

    return-object p0
.end method

.method public setLockScreenUiFormat(I)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;
    .registers 4

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainProtectionParams;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # setter for: Landroid/security/keystore/recovery/KeyChainProtectionParams;->mLockScreenUiFormat:Ljava/lang/Integer;
    invoke-static {v0, v1}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->access$202(Landroid/security/keystore/recovery/KeyChainProtectionParams;Ljava/lang/Integer;)Ljava/lang/Integer;

    return-object p0
.end method

.method public setSecret([B)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;
    .registers 3

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainProtectionParams;

    # setter for: Landroid/security/keystore/recovery/KeyChainProtectionParams;->mSecret:[B
    invoke-static {v0, p1}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->access$402(Landroid/security/keystore/recovery/KeyChainProtectionParams;[B)[B

    return-object p0
.end method

.method public setUserSecretType(I)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;
    .registers 4

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainProtectionParams;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # setter for: Landroid/security/keystore/recovery/KeyChainProtectionParams;->mUserSecretType:Ljava/lang/Integer;
    invoke-static {v0, v1}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->access$102(Landroid/security/keystore/recovery/KeyChainProtectionParams;Ljava/lang/Integer;)Ljava/lang/Integer;

    return-object p0
.end method
