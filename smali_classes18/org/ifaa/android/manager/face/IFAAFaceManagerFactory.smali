.class public Lorg/ifaa/android/manager/face/IFAAFaceManagerFactory;
.super Ljava/lang/Object;
.source "IFAAFaceManagerFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIFAAFaceManager(Landroid/content/Context;)Lorg/ifaa/android/manager/face/IFAAFaceManager;
    .registers 2

    invoke-static {p0}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->getInstance(Landroid/content/Context;)Lorg/ifaa/android/manager/face/IFAAFaceManagerV2;

    move-result-object v0

    return-object v0
.end method
