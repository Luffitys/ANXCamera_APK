.class public Lcom/ss/android/medialib/utils/DeviceIdHelper;
.super Ljava/lang/Object;
.source "DeviceIdHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIdentity(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ss/android/medialib/util/SharedPrefUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ss/android/medialib/util/SharedPrefUtil;->setDeviceId(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
