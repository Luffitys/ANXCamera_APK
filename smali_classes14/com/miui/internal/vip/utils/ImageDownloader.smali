.class public Lcom/miui/internal/vip/utils/ImageDownloader;
.super Ljava/lang/Object;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/vip/utils/ImageDownloader$NetworkChangeReceiver;,
        Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;,
        Lcom/miui/internal/vip/utils/ImageDownloader$OnFileDownload;,
        Lcom/miui/internal/vip/utils/ImageDownloader$ToViewDownloadListener;
    }
.end annotation


# static fields
.field public static final SCALE:I

.field static sReceiver:Lcom/miui/internal/vip/utils/ImageDownloader$NetworkChangeReceiver;

.field static final sRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/internal/vip/utils/ImageDownloadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/miui/internal/vip/utils/ImageDownloader;->sRecords:Ljava/util/Map;

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/internal/vip/utils/ImageDownloader;->sReceiver:Lcom/miui/internal/vip/utils/ImageDownloader$NetworkChangeReceiver;

    invoke-static {}, Lcom/miui/internal/vip/utils/ImageDownloader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sput v1, Lcom/miui/internal/vip/utils/ImageDownloader;->SCALE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/miui/internal/vip/utils/ImageDownloader;->onLoad(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    return-void
.end method

.method static deleteUnusedFiles(Ljava/io/File;Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/miui/internal/vip/utils/ImageDownloader$4;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/vip/utils/ImageDownloader$4;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/internal/vip/utils/RunnableHelper;->runInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method static downloadImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;)V
    .registers 9

    sget-object v0, Lcom/miui/internal/vip/utils/ImageDownloader;->sRecords:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/vip/utils/ImageDownloadTask;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_30

    new-instance v4, Lcom/miui/internal/vip/utils/ImageDownloadTask;

    invoke-direct {v4, p0, p2}, Lcom/miui/internal/vip/utils/ImageDownloadTask;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    invoke-virtual {v0, p3}, Lcom/miui/internal/vip/utils/ImageDownloadTask;->addListener(Lmiui/util/async/Task$Listener;)Lmiui/util/async/Task;

    invoke-static {v0}, Lcom/miui/internal/vip/utils/ImageDownloader;->startDownload(Lcom/miui/internal/vip/utils/ImageDownloadTask;)Z

    move-result v4

    if-eqz v4, :cond_3e

    sget-object v4, Lcom/miui/internal/vip/utils/ImageDownloader;->sRecords:Ljava/util/Map;

    invoke-interface {v4, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    aput-object p1, v4, v1

    aput-object p2, v4, v3

    const-string v1, "download bitmap %s for %s, filePath = %s"

    invoke-static {v1, v4}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3e

    :cond_30
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object p2, v3, v1

    const-string v1, "downloading task for %s: %s existed, add listener"

    invoke-static {v1, v3}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, p3}, Lcom/miui/internal/vip/utils/ImageDownloadTask;->addListener(Lmiui/util/async/Task$Listener;)Lmiui/util/async/Task;

    :cond_3e
    :goto_3e
    return-void
.end method

.method static getContext()Landroid/content/Context;
    .registers 1

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getImageFilePathAndClearUnusedFiles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 10

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    :cond_9
    invoke-static {p0, p2}, Lcom/miui/internal/vip/utils/Utils;->getPictureFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    return-object v1

    :cond_10
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_27

    :cond_1c
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p3, :cond_4d

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-eqz v5, :cond_43

    nop

    :goto_27
    invoke-static {p1}, Lcom/miui/internal/vip/utils/Utils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/miui/internal/vip/utils/ImageDownloader;->deleteUnusedFiles(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_43
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    const-string v3, "fail to create directory %s"

    invoke-static {v3, v4}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_56

    :cond_4d
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    const-string v3, "fail to load image for directory %s doesn\'t exist"

    invoke-static {v3, v4}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_56
    return-object v1
.end method

.method public static loadImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/miui/internal/vip/utils/ImageDownloader;->loadImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Z)V

    return-void
.end method

.method public static loadImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Z)V
    .registers 6

    new-instance v0, Lcom/miui/internal/vip/utils/ImageDownloader$ToViewDownloadListener;

    invoke-direct {v0, p3, p4}, Lcom/miui/internal/vip/utils/ImageDownloader$ToViewDownloadListener;-><init>(Landroid/widget/ImageView;Z)V

    invoke-static {p0, p1, p2, v0}, Lcom/miui/internal/vip/utils/ImageDownloader;->loadImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;)V

    return-void
.end method

.method public static loadImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_16

    :cond_d
    new-instance v0, Lcom/miui/internal/vip/utils/ImageDownloader$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/internal/vip/utils/ImageDownloader$3;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;)V

    invoke-static {v0}, Lcom/miui/internal/vip/utils/RunnableHelper;->runInBackground(Ljava/lang/Runnable;)V

    return-void

    :cond_16
    :goto_16
    return-void
.end method

.method public static loadImageFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;)Landroid/graphics/Bitmap;
    .registers 9

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/miui/internal/vip/utils/ImageDownloader;->getImageFilePathAndClearUnusedFiles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_d

    return-object v3

    :cond_d
    const/4 v2, 0x1

    :try_start_e
    invoke-static {v1, v2}, Lmiui/graphics/BitmapFactory;->decodeBitmap(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_17

    invoke-static {p1, p2, v1, p3}, Lcom/miui/internal/vip/utils/ImageDownloader;->downloadImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_17} :catch_18

    :cond_17
    return-object v4

    :catch_18
    move-exception v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v0

    const-string v0, "fail to loadImageFile, %s"

    invoke-static {v0, v2}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3
.end method

.method private static onLoad(Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .registers 13

    if-eqz p0, :cond_7a

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-nez v0, :cond_52

    if-nez v1, :cond_52

    if-eqz v4, :cond_52

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x2

    if-ne v5, v8, :cond_23

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v5, v8, :cond_23

    move v5, v6

    goto :goto_24

    :cond_23
    move v5, v7

    :goto_24
    iget v8, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2e

    iget v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v8, v9, :cond_2e

    goto :goto_2f

    :cond_2e
    move v6, v7

    :goto_2f
    if-nez v6, :cond_3b

    if-nez v5, :cond_3b

    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eqz v7, :cond_3b

    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-nez v7, :cond_3c

    :cond_3b
    const/4 v3, 0x0

    :cond_3c
    if-eqz v5, :cond_40

    sget v2, Lcom/miui/internal/vip/utils/ImageDownloader;->SCALE:I

    :cond_40
    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v7, :cond_47

    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_48

    :cond_47
    move v7, v0

    :goto_48
    move v0, v7

    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v7, :cond_50

    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_51

    :cond_50
    move v7, v1

    :goto_51
    move v1, v7

    :cond_52
    if-eqz v3, :cond_65

    if-nez v0, :cond_65

    if-nez v1, :cond_65

    invoke-virtual {p0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    new-instance v6, Lcom/miui/internal/vip/utils/ImageDownloader$1;

    invoke-direct {v6, p0, p1, p2}, Lcom/miui/internal/vip/utils/ImageDownloader$1;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    :cond_65
    invoke-static {p1, v0, v1, v2}, Lcom/miui/internal/vip/utils/Utils;->decodeFile(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_7a

    if-eqz p2, :cond_71

    invoke-static {v5}, Lcom/miui/internal/vip/utils/Utils;->createPhoto(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    :cond_71
    move-object v6, v5

    new-instance v7, Lcom/miui/internal/vip/utils/ImageDownloader$2;

    invoke-direct {v7, p0, v6}, Lcom/miui/internal/vip/utils/ImageDownloader$2;-><init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-static {v7}, Lcom/miui/internal/vip/utils/RunnableHelper;->runInUIThread(Ljava/lang/Runnable;)V

    :cond_7a
    return-void
.end method

.method static startDownload(Lcom/miui/internal/vip/utils/ImageDownloadTask;)Z
    .registers 4

    :try_start_0
    invoke-static {}, Lmiui/util/async/TaskManager;->getDefault()Lmiui/util/async/TaskManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/util/async/TaskManager;->add(Lmiui/util/async/Task;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_9

    const/4 v0, 0x1

    return v0

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageDownloader.startDownload fail, savePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/internal/vip/utils/ImageDownloadTask;->mSavePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vip_sdk"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method static declared-synchronized startReceiver()V
    .registers 2

    const-class v0, Lcom/miui/internal/vip/utils/ImageDownloader;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/miui/internal/vip/utils/ImageDownloader;->sReceiver:Lcom/miui/internal/vip/utils/ImageDownloader$NetworkChangeReceiver;

    if-nez v1, :cond_11

    new-instance v1, Lcom/miui/internal/vip/utils/ImageDownloader$NetworkChangeReceiver;

    invoke-direct {v1}, Lcom/miui/internal/vip/utils/ImageDownloader$NetworkChangeReceiver;-><init>()V

    sput-object v1, Lcom/miui/internal/vip/utils/ImageDownloader;->sReceiver:Lcom/miui/internal/vip/utils/ImageDownloader$NetworkChangeReceiver;

    invoke-virtual {v1}, Lcom/miui/internal/vip/utils/ImageDownloader$NetworkChangeReceiver;->start()V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    :cond_11
    monitor-exit v0

    return-void

    :catchall_13
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static stop()V
    .registers 1

    sget-object v0, Lcom/miui/internal/vip/utils/ImageDownloader;->sRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-static {}, Lcom/miui/internal/vip/utils/ImageDownloader;->stopReceiver()V

    return-void
.end method

.method static declared-synchronized stopReceiver()V
    .registers 3

    const-class v0, Lcom/miui/internal/vip/utils/ImageDownloader;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/miui/internal/vip/utils/ImageDownloader;->sReceiver:Lcom/miui/internal/vip/utils/ImageDownloader$NetworkChangeReceiver;

    if-eqz v1, :cond_13

    invoke-static {}, Lcom/miui/internal/vip/utils/ImageDownloader;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/miui/internal/vip/utils/ImageDownloader;->sReceiver:Lcom/miui/internal/vip/utils/ImageDownloader$NetworkChangeReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    sput-object v1, Lcom/miui/internal/vip/utils/ImageDownloader;->sReceiver:Lcom/miui/internal/vip/utils/ImageDownloader$NetworkChangeReceiver;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    :cond_13
    monitor-exit v0

    return-void

    :catchall_15
    move-exception v1

    monitor-exit v0

    throw v1
.end method
