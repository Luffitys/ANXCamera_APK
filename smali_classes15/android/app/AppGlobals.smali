.class public Landroid/app/AppGlobals;
.super Ljava/lang/Object;
.source "AppGlobals.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFloatCoreSetting(Ljava/lang/String;F)F
    .registers 4

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, p0, p1}, Landroid/app/ActivityThread;->getFloatCoreSetting(Ljava/lang/String;F)F

    move-result v1

    return v1

    :cond_b
    return p1
.end method

.method public static getInitialApplication()Landroid/app/Application;
    .registers 1

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public static getInitialPackage()Ljava/lang/String;
    .registers 1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIntCoreSetting(Ljava/lang/String;I)I
    .registers 4

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, p0, p1}, Landroid/app/ActivityThread;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v1

    return v1

    :cond_b
    return p1
.end method

.method public static getPackageManager()Landroid/content/pm/IPackageManager;
    .registers 1

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method

.method public static getPermissionManager()Landroid/permission/IPermissionManager;
    .registers 1

    invoke-static {}, Landroid/app/ActivityThread;->getPermissionManager()Landroid/permission/IPermissionManager;

    move-result-object v0

    return-object v0
.end method
