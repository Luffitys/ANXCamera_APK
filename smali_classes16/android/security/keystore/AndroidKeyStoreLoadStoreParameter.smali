.class Landroid/security/keystore/AndroidKeyStoreLoadStoreParameter;
.super Ljava/lang/Object;
.source "AndroidKeyStoreLoadStoreParameter.java"

# interfaces
.implements Ljava/security/KeyStore$LoadStoreParameter;


# instance fields
.field private final mUid:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreLoadStoreParameter;->mUid:I

    return-void
.end method


# virtual methods
.method public getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method getUid()I
    .registers 2

    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreLoadStoreParameter;->mUid:I

    return v0
.end method
