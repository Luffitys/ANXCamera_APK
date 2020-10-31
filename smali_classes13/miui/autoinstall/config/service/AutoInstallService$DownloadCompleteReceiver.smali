.class final Lmiui/autoinstall/config/service/AutoInstallService$DownloadCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AutoInstallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/autoinstall/config/service/AutoInstallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DownloadCompleteReceiver"
.end annotation


# instance fields
.field private mOuter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/autoinstall/config/service/AutoInstallService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lmiui/autoinstall/config/service/AutoInstallService;)V
    .registers 3

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService$DownloadCompleteReceiver;->mOuter:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService$DownloadCompleteReceiver;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/autoinstall/config/service/AutoInstallService;

    if-eqz v0, :cond_62

    const-wide/16 v1, -0x1

    const-string v3, "extra_download_id"

    invoke-virtual {p2, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iget-object v3, p0, Lmiui/autoinstall/config/service/AutoInstallService$DownloadCompleteReceiver;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/autoinstall/config/service/AutoInstallService;

    # getter for: Lmiui/autoinstall/config/service/AutoInstallService;->mDownloadIds:Ljava/util/Map;
    invoke-static {v3}, Lmiui/autoinstall/config/service/AutoInstallService;->access$400(Lmiui/autoinstall/config/service/AutoInstallService;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;

    if-eqz v3, :cond_62

    # getter for: Lmiui/autoinstall/config/service/AutoInstallService;->mDownloader:Lmiui/autoinstall/config/download/AutoInstallDownLoader;
    invoke-static {v0}, Lmiui/autoinstall/config/service/AutoInstallService;->access$500(Lmiui/autoinstall/config/service/AutoInstallService;)Lmiui/autoinstall/config/download/AutoInstallDownLoader;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lmiui/autoinstall/config/download/AutoInstallDownLoader;->queryStatus(J)I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_38

    const/4 v4, 0x1

    goto :goto_39

    :cond_38
    const/4 v4, 0x0

    :goto_39
    if-eqz v4, :cond_5f

    # getter for: Lmiui/autoinstall/config/service/AutoInstallService;->mDownloader:Lmiui/autoinstall/config/download/AutoInstallDownLoader;
    invoke-static {v0}, Lmiui/autoinstall/config/service/AutoInstallService;->access$500(Lmiui/autoinstall/config/service/AutoInstallService;)Lmiui/autoinstall/config/download/AutoInstallDownLoader;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Lmiui/autoinstall/config/download/AutoInstallDownLoader;->queryFileDir(J)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AutoInstallService"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v3, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;->packageName:Ljava/lang/String;

    # invokes: Lmiui/autoinstall/config/service/AutoInstallService;->submitInstall(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v5, v6}, Lmiui/autoinstall/config/service/AutoInstallService;->access$600(Lmiui/autoinstall/config/service/AutoInstallService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    :cond_5f
    # invokes: Lmiui/autoinstall/config/service/AutoInstallService;->showRestoreError()V
    invoke-static {v0}, Lmiui/autoinstall/config/service/AutoInstallService;->access$300(Lmiui/autoinstall/config/service/AutoInstallService;)V

    :cond_62
    :goto_62
    return-void
.end method
