.class public final Landroid/util/VirtualSim;
.super Ljava/lang/Object;
.source "VirtualSim.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isActivityExist(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_c

    return v1

    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportMiSim(Landroid/content/Context;)Z
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.virtualsim"

    const-string v2, "com.miui.mimobile.ui.MmRouterActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Landroid/util/VirtualSim;->isActivityExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string/jumbo v1, "persist.radio.modem"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LTE-CMCC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    const/4 v1, 0x1

    return v1

    :cond_23
    const/4 v1, 0x0

    return v1
.end method

.method public static isSupportVirtualSim(Landroid/content/Context;)Z
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.virtualsim"

    const-string v2, "com.miui.virtualsim.ui.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Landroid/util/VirtualSim;->isActivityExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_14

    const/4 v1, 0x0

    return v1

    :cond_14
    const/4 v1, 0x1

    return v1
.end method
