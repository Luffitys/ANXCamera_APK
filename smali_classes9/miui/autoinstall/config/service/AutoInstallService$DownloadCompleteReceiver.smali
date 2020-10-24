.class final Lmiui/autoinstall/config/service/AutoInstallService$DownloadCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field private mOuter:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lmiui/autoinstall/config/service/AutoInstallService;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService$DownloadCompleteReceiver;->mOuter:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object p1, p0, Lmiui/autoinstall/config/service/AutoInstallService$DownloadCompleteReceiver;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/autoinstall/config/service/AutoInstallService;

    if-eqz p1, :cond_2

    const-wide/16 v0, -0x1

    const-string v2, "extra_download_id"

    invoke-virtual {p2, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object p0, p0, Lmiui/autoinstall/config/service/AutoInstallService$DownloadCompleteReceiver;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/autoinstall/config/service/AutoInstallService;

    invoke-static {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->access$400(Lmiui/autoinstall/config/service/AutoInstallService;)Ljava/util/Map;

    move-result-object p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;

    if-eqz p0, :cond_2

    invoke-static {p1}, Lmiui/autoinstall/config/service/AutoInstallService;->access$500(Lmiui/autoinstall/config/service/AutoInstallService;)Lmiui/autoinstall/config/download/AutoInstallDownLoader;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Lmiui/autoinstall/config/download/AutoInstallDownLoader;->queryStatus(J)I

    move-result p2

    const/16 v2, 0x8

    if-ne p2, v2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Lmiui/autoinstall/config/service/AutoInstallService;->access$500(Lmiui/autoinstall/config/service/AutoInstallService;)Lmiui/autoinstall/config/download/AutoInstallDownLoader;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Lmiui/autoinstall/config/download/AutoInstallDownLoader;->queryFileDir(J)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoInstallService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;->packageName:Ljava/lang/String;

    invoke-static {p1, p2, p0}, Lmiui/autoinstall/config/service/AutoInstallService;->access$600(Lmiui/autoinstall/config/service/AutoInstallService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lmiui/autoinstall/config/service/AutoInstallService;->access$300(Lmiui/autoinstall/config/service/AutoInstallService;)V

    :cond_2
    :goto_1
    return-void
.end method
