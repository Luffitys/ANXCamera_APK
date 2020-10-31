.class public abstract Landroid/permissionpresenterservice/RuntimePermissionPresenterService;
.super Landroid/app/Service;
.source "RuntimePermissionPresenterService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final KEY_RESULT:Ljava/lang/String; = "android.content.pm.permission.RuntimePermissionPresenter.key.result"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.permissionpresenterservice.RuntimePermissionPresenterService"


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/permissionpresenterservice/RuntimePermissionPresenterService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Landroid/permissionpresenterservice/RuntimePermissionPresenterService;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/permissionpresenterservice/RuntimePermissionPresenterService;->getAppPermissions(Ljava/lang/String;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method private getAppPermissions(Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 6

    invoke-virtual {p0, p1}, Landroid/permissionpresenterservice/RuntimePermissionPresenterService;->onGetAppPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.content.pm.permission.RuntimePermissionPresenter.key.result"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p2, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    goto :goto_1e

    :cond_1a
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    :goto_1e
    return-void
.end method


# virtual methods
.method public final attachBaseContext(Landroid/content/Context;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    new-instance v0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$1;

    invoke-direct {v0, p0}, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$1;-><init>(Landroid/permissionpresenterservice/RuntimePermissionPresenterService;)V

    return-object v0
.end method

.method public abstract onGetAppPermissions(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/permission/RuntimePermissionPresentationInfo;",
            ">;"
        }
    .end annotation
.end method
