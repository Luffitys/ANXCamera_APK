.class public Lorg/mipay/android/manager/MipayManagerFactory;
.super Ljava/lang/Object;
.source "MipayManagerFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMipayManager(Landroid/content/Context;I)Lorg/mipay/android/manager/IMipayManager;
    .registers 3

    invoke-static {p0}, Lorg/mipay/android/manager/MipayManagerImpl;->getInstance(Landroid/content/Context;)Lorg/mipay/android/manager/IMipayManager;

    move-result-object v0

    return-object v0
.end method
