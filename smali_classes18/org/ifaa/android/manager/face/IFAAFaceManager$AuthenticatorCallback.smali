.class public abstract Lorg/ifaa/android/manager/face/IFAAFaceManager$AuthenticatorCallback;
.super Ljava/lang/Object;
.source "IFAAFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ifaa/android/manager/face/IFAAFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AuthenticatorCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(I)V
    .registers 2

    return-void
.end method

.method public onAuthenticationFailed(I)V
    .registers 2

    return-void
.end method

.method public onAuthenticationStatus(I)V
    .registers 2

    return-void
.end method

.method public onAuthenticationSucceeded()V
    .registers 1

    return-void
.end method
