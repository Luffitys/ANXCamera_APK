.class Lcom/miui/internal/vip/utils/ImageDownloader$NetworkChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/vip/utils/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NetworkChangeReceiver"
.end annotation


# static fields
.field static final sFilter:Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/internal/vip/utils/ImageDownloader$NetworkChangeReceiver;->sFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private startWaitingDownloadTask()V
    .registers 4

    sget-object v0, Lcom/miui/internal/vip/utils/ImageDownloader;->sRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/vip/utils/ImageDownloadTask;

    invoke-virtual {v1}, Lcom/miui/internal/vip/utils/ImageDownloadTask;->isWaitNetwork()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-static {v1}, Lcom/miui/internal/vip/utils/ImageDownloader;->startDownload(Lcom/miui/internal/vip/utils/ImageDownloadTask;)Z

    :cond_1f
    goto :goto_a

    :cond_20
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-direct {p0}, Lcom/miui/internal/vip/utils/ImageDownloader$NetworkChangeReceiver;->startWaitingDownloadTask()V

    invoke-static {}, Lcom/miui/internal/vip/utils/ImageDownloader;->stopReceiver()V

    :cond_26
    return-void
.end method

.method public start()V
    .registers 3

    invoke-static {}, Lcom/miui/internal/vip/utils/ImageDownloader;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/miui/internal/vip/utils/ImageDownloader$NetworkChangeReceiver;->sFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
