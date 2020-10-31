.class public abstract Lorg/ifaa/android/manager/face/IFAAFaceManagerV2;
.super Lorg/ifaa/android/manager/face/IFAAFaceManager;
.source "IFAAFaceManagerV2.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/ifaa/android/manager/face/IFAAFaceManager;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract authenticate(Ljava/lang/String;ILorg/ifaa/android/manager/face/IFAAFaceManager$AuthenticatorCallback;)V
.end method

.method public abstract cancel(Ljava/lang/String;)I
.end method

.method public abstract enroll(Ljava/lang/String;ILorg/ifaa/android/manager/face/IFAAFaceManager$AuthenticatorCallback;)V
.end method

.method public getVersion()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public abstract invokeCommand(Landroid/content/Context;[B)[B
.end method

.method public abstract upgrade(Ljava/lang/String;)V
.end method
