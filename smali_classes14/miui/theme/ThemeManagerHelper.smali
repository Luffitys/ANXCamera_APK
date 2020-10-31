.class public Lmiui/theme/ThemeManagerHelper;
.super Ljava/lang/Object;
.source "ThemeManagerHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThemeManagerHelper"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isInWorkManagedMode(Landroid/content/Context;)Z
    .registers 7

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "isDeviceManaged"

    const/4 v5, 0x0

    invoke-static {v0, v1, v4, v5, v3}, Lcom/miui/internal/vip/utils/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_29

    :try_start_16
    move-object v3, v1

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1d} :catch_1e

    return v2

    :catch_1e
    move-exception v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v2

    const-string v5, "ThemeManagerHelper, Reflect isDeviceManaged failed, e = %s"

    invoke-static {v5, v4}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_29
    return v2
.end method

.method public static needDisableTheme(Landroid/content/Context;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
