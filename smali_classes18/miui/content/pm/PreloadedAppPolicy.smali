.class public Lmiui/content/pm/PreloadedAppPolicy;
.super Ljava/lang/Object;
.source "PreloadedAppPolicy.java"


# static fields
.field private static sAllowDisableSystemApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sProtectedDataApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final INSTALL_FLAG_NEED_CONFIRM:I

.field public final INSTALL_FLAG_SHOW_TOAST:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/content/pm/PreloadedAppPolicy;->sProtectedDataApps:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/content/pm/PreloadedAppPolicy;->sAllowDisableSystemApps:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lmiui/content/pm/PreloadedAppPolicy;->INSTALL_FLAG_NEED_CONFIRM:I

    const/4 v0, 0x2

    iput v0, p0, Lmiui/content/pm/PreloadedAppPolicy;->INSTALL_FLAG_SHOW_TOAST:I

    return-void
.end method

.method public static installPreloadedDataApp(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;I)Z
    .registers 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_38

    sget-object v0, Lmiui/content/pm/PreloadedAppPolicy;->sProtectedDataApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_38

    :cond_10
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.xiaomi.market.PreloadedDataAppInstallService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.xiaomi.market"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_37

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2d

    goto :goto_37

    :cond_2d
    new-instance v1, Lmiui/content/pm/PreloadedAppPolicy$1;

    invoke-direct {v1, p1, p0, p2, p3}, Lmiui/content/pm/PreloadedAppPolicy$1;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/pm/IPackageInstallObserver2;I)V

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return v3

    :cond_37
    :goto_37
    return v1

    :cond_38
    :goto_38
    return v1
.end method

.method public static isAllowDisableSystemApp(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 4

    sget-object v0, Lmiui/content/pm/PreloadedAppPolicy;->sAllowDisableSystemApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isProtectedDataApp(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 4

    sget-object v0, Lmiui/content/pm/PreloadedAppPolicy;->sProtectedDataApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
