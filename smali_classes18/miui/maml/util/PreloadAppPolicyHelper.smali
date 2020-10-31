.class public Lmiui/maml/util/PreloadAppPolicyHelper;
.super Ljava/lang/Object;
.source "PreloadAppPolicyHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static installPreloadedDataApp(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;)Z
    .registers 6

    new-instance v0, Lmiui/maml/util/PreloadAppPolicyHelper$1;

    invoke-direct {v0, p0, p2, p3}, Lmiui/maml/util/PreloadAppPolicyHelper$1;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lmiui/content/pm/PreloadedAppPolicy;->installPreloadedDataApp(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;I)Z

    move-result v0

    return v0
.end method
