.class public Lcom/android/server/SystemConfigInjector;
.super Ljava/lang/Object;
.source "SystemConfigInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static inject(Lcom/android/server/SystemConfig;I)V
    .registers 3

    invoke-static {}, Lcom/android/server/pm/CarrierAppServiceUtil;->getPermissionsDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/SystemConfig;->readPermissions(Ljava/io/File;I)V

    invoke-static {}, Lcom/android/server/pm/CarrierAppServiceUtil;->getSysConfigDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/SystemConfig;->readPermissions(Ljava/io/File;I)V

    return-void
.end method
