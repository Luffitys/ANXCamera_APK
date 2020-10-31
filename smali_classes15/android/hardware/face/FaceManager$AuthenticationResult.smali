.class public Landroid/hardware/face/FaceManager$AuthenticationResult;
.super Ljava/lang/Object;
.source "FaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/FaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthenticationResult"
.end annotation


# instance fields
.field private mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

.field private mFace:Landroid/hardware/face/Face;

.field private mIsStrongBiometric:Z

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/hardware/biometrics/CryptoObject;Landroid/hardware/face/Face;IZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/face/FaceManager$AuthenticationResult;->mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    iput-object p2, p0, Landroid/hardware/face/FaceManager$AuthenticationResult;->mFace:Landroid/hardware/face/Face;

    iput p3, p0, Landroid/hardware/face/FaceManager$AuthenticationResult;->mUserId:I

    iput-boolean p4, p0, Landroid/hardware/face/FaceManager$AuthenticationResult;->mIsStrongBiometric:Z

    return-void
.end method


# virtual methods
.method public getCryptoObject()Landroid/hardware/biometrics/CryptoObject;
    .registers 2

    iget-object v0, p0, Landroid/hardware/face/FaceManager$AuthenticationResult;->mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    return-object v0
.end method

.method public getFace()Landroid/hardware/face/Face;
    .registers 2

    iget-object v0, p0, Landroid/hardware/face/FaceManager$AuthenticationResult;->mFace:Landroid/hardware/face/Face;

    return-object v0
.end method

.method public getUserId()I
    .registers 2

    iget v0, p0, Landroid/hardware/face/FaceManager$AuthenticationResult;->mUserId:I

    return v0
.end method

.method public isStrongBiometric()Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/face/FaceManager$AuthenticationResult;->mIsStrongBiometric:Z

    return v0
.end method
