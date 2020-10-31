.class public Lmiui/autoinstall/config/service/AutoInstallService;
.super Landroid/app/Service;
.source "AutoInstallService.java"

# interfaces
.implements Ljava/miui/autoinstall/config/pm/MarketInstallerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/autoinstall/config/service/AutoInstallService$DownloadCompleteReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_AUTO_INSTALL:Ljava/lang/String; = "miui.autoinstall.config.action.AUTOINSTALL"

.field private static final ACTION_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field public static final ACTION_DOWNLOAD_BY_PASS:Ljava/lang/String; = "miui.autoinstall.config.action.DOWNLOADBYPASS"

.field private static final ACTION_PROVISION_COMPLETED:Ljava/lang/String; = "android.provision.action.PROVISION_COMPLETE"

.field private static final ACTION_START_INSTALL:Ljava/lang/String; = "miui.autoinstall.config.ACTION_INSTALL"

.field public static final ACTION_START_PROCEDURE:Ljava/lang/String; = "miui.autoinstall.config.ACTION_START"

.field private static final EXTRA_APK_PATH:Ljava/lang/String; = "extra_apk_path"

.field public static final EXTRA_IS_MOBILE_DATA_REMIND:Ljava/lang/String; = "extra_is_mobile_data_remind"

.field public static final EXTRA_MOBILE_DATA_CONSUME:Ljava/lang/String; = "extra_mobile_data_consume"

.field private static final KEY_APP_INFO:Ljava/lang/String; = "appInfo"

.field private static final TAG:Ljava/lang/String; = "AutoInstallService"


# instance fields
.field private mCurrentRestoring:I

.field private mDownloadCompleteReceiver:Lmiui/autoinstall/config/service/AutoInstallService$DownloadCompleteReceiver;

.field private mDownloadIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloader:Lmiui/autoinstall/config/download/AutoInstallDownLoader;

.field private mHasError:Z

.field private mInstallQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIsProvision:Z

.field private mIsRestoring:Z

.field private mLocalAppInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/autoinstall/config/entity/LocalAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNotification:Lmiui/autoinstall/config/download/AutoInstallNotification;

.field private mPackageManagerCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

.field private mPackagePath:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageRestoring:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mDownloadIds:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackagePath:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageRestoring:Ljava/util/List;

    const/4 v0, 0x1

    iput v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mCurrentRestoring:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mInstallQueue:Ljava/util/Queue;

    return-void
.end method

.method static synthetic access$000(Lmiui/autoinstall/config/service/AutoInstallService;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mLocalAppInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/autoinstall/config/service/AutoInstallService;Ljava/util/List;)Lmiui/autoinstall/config/entity/ResponseAppInfo;
    .registers 3

    invoke-direct {p0, p1}, Lmiui/autoinstall/config/service/AutoInstallService;->requestAppInfo(Ljava/util/List;)Lmiui/autoinstall/config/entity/ResponseAppInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lmiui/autoinstall/config/service/AutoInstallService;Lmiui/autoinstall/config/entity/ResponseAppInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/autoinstall/config/service/AutoInstallService;->downloadApp(Lmiui/autoinstall/config/entity/ResponseAppInfo;)V

    return-void
.end method

.method static synthetic access$300(Lmiui/autoinstall/config/service/AutoInstallService;)V
    .registers 1

    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->showRestoreError()V

    return-void
.end method

.method static synthetic access$400(Lmiui/autoinstall/config/service/AutoInstallService;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mDownloadIds:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lmiui/autoinstall/config/service/AutoInstallService;)Lmiui/autoinstall/config/download/AutoInstallDownLoader;
    .registers 2

    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mDownloader:Lmiui/autoinstall/config/download/AutoInstallDownLoader;

    return-object v0
.end method

.method static synthetic access$600(Lmiui/autoinstall/config/service/AutoInstallService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/autoinstall/config/service/AutoInstallService;->submitInstall(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private calculateMobileData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 7

    invoke-direct {p0, p1, p3}, Lmiui/autoinstall/config/service/AutoInstallService;->ensureFileNeedDownload(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-static {p2}, Lmiui/autoinstall/config/utils/AutoInstallRequestUtil;->calculateFileSize(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1

    :cond_b
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method private deleteInstalledApk(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_14
    return-void
.end method

.method private doDownload(Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;)V
    .registers 7

    iget-object v0, p1, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;->apkName:Ljava/lang/String;

    iget-object v1, p1, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;->apkMd5:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmiui/autoinstall/config/service/AutoInstallService;->ensureFileNeedDownload(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;->apkName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lmiui/autoinstall/config/service/AutoInstallService;->submitInstall(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45

    :cond_14
    iget-object v1, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mDownloader:Lmiui/autoinstall/config/download/AutoInstallDownLoader;

    iget-object v2, p1, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;->cdnPath:Ljava/lang/String;

    iget-object v3, p1, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;->apkName:Ljava/lang/String;

    invoke-virtual {v1, p0, v2, v3}, Lmiui/autoinstall/config/download/AutoInstallDownLoader;->enqueue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doDownload: enqueue\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;->apkName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AutoInstallService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_45

    iget-object v3, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mDownloadIds:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_45
    :goto_45
    return-void
.end method

.method private downloadApp(Lmiui/autoinstall/config/entity/ResponseAppInfo;)V
    .registers 11

    if-eqz p1, :cond_6f

    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mInstallQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageRestoring:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p1, Lmiui/autoinstall/config/entity/ResponseAppInfo;->data:Ljava/util/List;

    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->registerDownloadCompleteReceiver()V

    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->isMobileData()Z

    move-result v1

    const-wide/16 v2, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;

    if-eqz v5, :cond_6b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "downloadApp: enqueue:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;->apkName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AutoInstallService"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v5, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;->packageName:Ljava/lang/String;

    invoke-direct {p0, v6}, Lmiui/autoinstall/config/service/AutoInstallService;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_63

    if-eqz v1, :cond_56

    iget-object v6, v5, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;->apkName:Ljava/lang/String;

    iget-object v7, v5, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;->cdnPath:Ljava/lang/String;

    iget-object v8, v5, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;->apkMd5:Ljava/lang/String;

    invoke-direct {p0, v6, v7, v8}, Lmiui/autoinstall/config/service/AutoInstallService;->calculateMobileData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v2, v6

    :cond_56
    iget-object v6, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageRestoring:Ljava/util/List;

    iget-object v7, v5, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;->packageName:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mInstallQueue:Ljava/util/Queue;

    invoke-interface {v6, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_6b

    :cond_63
    iget-object v6, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageManagerCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    iget-object v7, v5, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;->packageName:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-virtual {v6, p0, v7, v8}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->updateInstallRecord(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_6b
    :goto_6b
    goto :goto_1b

    :cond_6c
    invoke-direct {p0, v2, v3}, Lmiui/autoinstall/config/service/AutoInstallService;->downloadIfRemind(J)V

    :cond_6f
    return-void
.end method

.method private downloadByPass()V
    .registers 2

    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mInstallQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageRestoring:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lmiui/autoinstall/config/service/AutoInstallService;->showRestoring(I)V

    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mInstallQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;

    if-eqz v0, :cond_1e

    invoke-direct {p0, v0}, Lmiui/autoinstall/config/service/AutoInstallService;->doDownload(Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;)V

    :cond_1e
    goto :goto_22

    :cond_1f
    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->showRestoreError()V

    :goto_22
    return-void
.end method

.method private downloadIfRemind(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_a

    invoke-direct {p0, p1, p2}, Lmiui/autoinstall/config/service/AutoInstallService;->showMobileDataRemind(J)V

    return-void

    :cond_a
    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->downloadByPass()V

    return-void
.end method

.method private ensureFileNeedDownload(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 7

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmiui/autoinstall/config/service/AutoInstallService;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_2f

    :cond_10
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_20

    return-object v1

    :cond_20
    invoke-static {v2}, Lmiui/autoinstall/config/utils/SignUtil;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2e

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    return-object v1

    :cond_2e
    return-object v2

    :cond_2f
    :goto_2f
    return-object v1
.end method

.method private getNext()V
    .registers 4

    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mInstallQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->hasError()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->showRestoreError()V

    goto :goto_3f

    :cond_13
    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mNotification:Lmiui/autoinstall/config/download/AutoInstallNotification;

    invoke-virtual {v0}, Lmiui/autoinstall/config/download/AutoInstallNotification;->showSuccessNotification()V

    iput v1, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mCurrentRestoring:I

    invoke-virtual {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->stopSelf()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/autoinstall/config/service/AutoInstallService;->setRestoring(Z)V

    goto :goto_3f

    :cond_22
    iget v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mCurrentRestoring:I

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mCurrentRestoring:I

    iget-object v1, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mNotification:Lmiui/autoinstall/config/download/AutoInstallNotification;

    iget-object v2, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageRestoring:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lmiui/autoinstall/config/download/AutoInstallNotification;->updateProgress(II)V

    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mInstallQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;

    if-eqz v0, :cond_3f

    invoke-direct {p0, v0}, Lmiui/autoinstall/config/service/AutoInstallService;->doDownload(Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;)V

    :cond_3f
    :goto_3f
    return-void
.end method

.method private getParamsMap(Ljava/lang/String;)Ljava/util/TreeMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "appInfo"

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private hasError()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mHasError:Z

    return v0
.end method

.method private install(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageManagerCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    invoke-virtual {v0, p1, p2}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->installPackage(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method private isMobileData()Z
    .registers 4

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lmiui/autoinstall/config/service/AutoInstallService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    return v2
.end method

.method private isOverProvision()Z
    .registers 4

    invoke-virtual {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    :cond_e
    return v2
.end method

.method private isPackageAllExisted(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/autoinstall/config/entity/LocalAppInfo;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/autoinstall/config/entity/LocalAppInfo;

    if-eqz v1, :cond_3f

    iget-object v2, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageManagerCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    invoke-virtual {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, v1, Lmiui/autoinstall/config/entity/LocalAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->packageExists(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPackageAllExisted: package:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lmiui/autoinstall/config/entity/LocalAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not installed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AutoInstallService"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_3f
    goto :goto_4

    :cond_40
    const/4 v0, 0x1

    return v0
.end method

.method private isPackageAllInstalled(Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/autoinstall/config/entity/LocalAppInfo;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->isProvisionAction()Z

    move-result v0

    const-string v1, "AutoInstallService"

    if-eqz v0, :cond_12

    const-string v0, "isPackageAllInstalled: isProvision"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lmiui/autoinstall/config/service/AutoInstallService;->isPackageAllExisted(Ljava/util/List;)Z

    move-result v0

    return v0

    :cond_12
    const-string v0, "isPackageAllInstalled: reboot"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageManagerCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    invoke-virtual {v0}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->isRestoreNotNow()Z

    move-result v0

    invoke-direct {p0, p1}, Lmiui/autoinstall/config/service/AutoInstallService;->isPackageAllExisted(Ljava/util/List;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPackageAllInstalled: isRestoreNotNow:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",allInstalled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_43

    if-nez v2, :cond_43

    const/4 v1, 0x0

    return v1

    :cond_43
    iget-object v3, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageManagerCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    invoke-virtual {v3, p0, p1}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->hasFailedRecord(Landroid/content/Context;Ljava/util/List;)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPackageAllInstalled: hasFailedRecord:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 v1, v3, 0x1

    return v1
.end method

.method private isPackageAllRecorded(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/autoinstall/config/entity/LocalAppInfo;",
            ">;)Z"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageManagerCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    invoke-virtual {v0, p0, p1}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->isRecordAllInstalled(Landroid/content/Context;Ljava/util/List;)Z

    move-result v0
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    const-string v1, "AutoInstallService"

    const-string v2, "isPackageAllExistedInRecord: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method private isPackageInstalled(Ljava/lang/String;)Z
    .registers 8

    const-string v0, "AutoInstallService"

    invoke-virtual {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->isProvisionAction()Z

    move-result v1

    if-nez v1, :cond_47

    const/4 v1, 0x0

    :try_start_9
    iget-object v2, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageManagerCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, p1, v3}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->isPackageInstalledRecord(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result v2

    iget-object v3, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageManagerCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    invoke-virtual {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->packageExists(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":isPackageRecord:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",isPackageInstalled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_39} :catch_3f

    if-nez v2, :cond_3d

    if-eqz v3, :cond_3e

    :cond_3d
    const/4 v1, 0x1

    :cond_3e
    return v1

    :catch_3f
    move-exception v2

    const-string v3, "isPackageInstalled: "

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    return v1

    :cond_47
    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageManagerCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    invoke-virtual {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->packageExists(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isRestoring()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mIsRestoring:Z

    return v0
.end method

.method private onMiuiHome()V
    .registers 2

    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->isRestoring()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->showRestoringToast()V

    goto :goto_d

    :cond_a
    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->onSystemReboot()V

    :goto_d
    return-void
.end method

.method private onSystemReboot()V
    .registers 2

    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->isOverProvision()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->start()V

    :cond_9
    return-void
.end method

.method private packageCompleted(Ljava/util/List;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/autoinstall/config/entity/RestoreRecord;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/autoinstall/config/entity/RestoreRecord;

    iget-object v2, v1, Lmiui/autoinstall/config/entity/RestoreRecord;->packageName:Ljava/lang/String;

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    goto :goto_4

    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method private recordNotInstalledPkg()V
    .registers 8

    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mLocalAppInfos:Ljava/util/List;

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mLocalAppInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/autoinstall/config/entity/LocalAppInfo;

    if-nez v2, :cond_1d

    goto :goto_e

    :cond_1d
    iget-object v3, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageManagerCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    iget-object v4, v2, Lmiui/autoinstall/config/entity/LocalAppInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageManagerCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    iget-object v6, v2, Lmiui/autoinstall/config/entity/LocalAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v0, v6}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->packageExists(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v3, p0, v4, v5}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->updateInstallRecord(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_e

    :cond_2d
    return-void
.end method

.method private registerDownloadCompleteReceiver()V
    .registers 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lmiui/autoinstall/config/service/AutoInstallService$DownloadCompleteReceiver;

    invoke-direct {v1, p0}, Lmiui/autoinstall/config/service/AutoInstallService$DownloadCompleteReceiver;-><init>(Lmiui/autoinstall/config/service/AutoInstallService;)V

    iput-object v1, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mDownloadCompleteReceiver:Lmiui/autoinstall/config/service/AutoInstallService$DownloadCompleteReceiver;

    invoke-virtual {p0, v1, v0}, Lmiui/autoinstall/config/service/AutoInstallService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private requestAppInfo(Ljava/util/List;)Lmiui/autoinstall/config/entity/ResponseAppInfo;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/autoinstall/config/entity/LocalAppInfo;",
            ">;)",
            "Lmiui/autoinstall/config/entity/ResponseAppInfo;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageManagerCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    invoke-virtual {v1, p0}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->getCompletedRestore(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    const/4 v2, 0x1

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1a
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/autoinstall/config/entity/LocalAppInfo;

    if-eqz v4, :cond_1a

    if-eqz v2, :cond_33

    iget-object v5, v4, Lmiui/autoinstall/config/entity/LocalAppInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1, v5}, Lmiui/autoinstall/config/service/AutoInstallService;->packageCompleted(Ljava/util/List;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    goto :goto_1a

    :cond_33
    new-instance v5, Lmiui/autoinstall/config/entity/RequestAppInfo;

    invoke-direct {v5}, Lmiui/autoinstall/config/entity/RequestAppInfo;-><init>()V

    iget-object v6, v4, Lmiui/autoinstall/config/entity/LocalAppInfo;->packageName:Ljava/lang/String;

    iput-object v6, v5, Lmiui/autoinstall/config/entity/RequestAppInfo;->pn:Ljava/lang/String;

    iget v6, v4, Lmiui/autoinstall/config/entity/LocalAppInfo;->versionCode:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmiui/autoinstall/config/entity/RequestAppInfo;->pvc:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_48
    new-instance v3, Lmiui/autoinstall/config/entity/RequestEntity;

    invoke-direct {v3}, Lmiui/autoinstall/config/entity/RequestEntity;-><init>()V

    invoke-static {}, Lmiui/autoinstall/config/utils/SignUtil;->getNonceStr()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lmiui/autoinstall/config/entity/RequestEntity;->nonceStr:Ljava/lang/String;

    iput-object v0, v3, Lmiui/autoinstall/config/entity/RequestEntity;->appInfo:Ljava/util/List;

    invoke-static {v0}, Lmiui/autoinstall/config/entity/RequestEntity;->list2Json(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lmiui/autoinstall/config/service/AutoInstallService;->getParamsMap(Ljava/lang/String;)Ljava/util/TreeMap;

    move-result-object v4

    iget-object v5, v3, Lmiui/autoinstall/config/entity/RequestEntity;->nonceStr:Ljava/lang/String;

    invoke-static {v4, v5}, Lmiui/autoinstall/config/utils/SignUtil;->getSign(Ljava/util/TreeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lmiui/autoinstall/config/entity/RequestEntity;->sign:Ljava/lang/String;

    invoke-static {v3}, Lmiui/autoinstall/config/utils/AutoInstallRequestUtil;->requestAppInfo(Lmiui/autoinstall/config/entity/RequestEntity;)Lmiui/autoinstall/config/entity/ResponseAppInfo;

    move-result-object v4

    return-object v4
.end method

.method private requestDownload()V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/autoinstall/config/service/AutoInstallService;->setRestoring(Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/autoinstall/config/service/AutoInstallService;->setHasError(Z)V

    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->showRestoringToast()V

    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->recordNotInstalledPkg()V

    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mDownloader:Lmiui/autoinstall/config/download/AutoInstallDownLoader;

    if-nez v0, :cond_1d

    new-instance v0, Lmiui/autoinstall/config/download/AutoInstallDownLoader;

    invoke-virtual {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/autoinstall/config/download/AutoInstallDownLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mDownloader:Lmiui/autoinstall/config/download/AutoInstallDownLoader;

    :cond_1d
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmiui/autoinstall/config/service/AutoInstallService$1;

    invoke-direct {v1, p0}, Lmiui/autoinstall/config/service/AutoInstallService$1;-><init>(Lmiui/autoinstall/config/service/AutoInstallService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private setHasError(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mHasError:Z

    return-void
.end method

.method private setRestoring(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mIsRestoring:Z

    return-void
.end method

.method private showMobileDataRemind(J)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_mobile_data_consume"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "extra_is_mobile_data_remind"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lmiui/autoinstall/config/service/AutoInstallService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showPromptRestore()V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lmiui/autoinstall/config/service/AutoInstallService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showRestoreError()V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmiui/autoinstall/config/activity/RestoreFailedDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lmiui/autoinstall/config/service/AutoInstallService;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->stopSelf()V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lmiui/autoinstall/config/service/AutoInstallService;->setRestoring(Z)V

    invoke-direct {p0, v1}, Lmiui/autoinstall/config/service/AutoInstallService;->setHasError(Z)V

    iget-object v1, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mNotification:Lmiui/autoinstall/config/download/AutoInstallNotification;

    invoke-virtual {v1}, Lmiui/autoinstall/config/download/AutoInstallNotification;->clearAll()V

    return-void
.end method

.method private showRestoring(I)V
    .registers 3

    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mNotification:Lmiui/autoinstall/config/download/AutoInstallNotification;

    invoke-virtual {v0, p1}, Lmiui/autoinstall/config/download/AutoInstallNotification;->showStartNotification(I)V

    return-void
.end method

.method private showRestoringToast()V
    .registers 3

    invoke-virtual {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$string;->system_app_is_restore:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private start()V
    .registers 2

    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mLocalAppInfos:Ljava/util/List;

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1b

    :cond_b
    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mLocalAppInfos:Ljava/util/List;

    invoke-direct {p0, v0}, Lmiui/autoinstall/config/service/AutoInstallService;->isPackageAllInstalled(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->stopSelf()V

    return-void

    :cond_17
    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->showPromptRestore()V

    return-void

    :cond_1b
    :goto_1b
    return-void
.end method

.method private submitInstall(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageManagerCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    invoke-virtual {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->packageExists(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageManagerCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    invoke-virtual {v0, p0, p2, v1}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->updateInstallRecord(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lmiui/autoinstall/config/service/AutoInstallService;->deleteInstalledApk(Ljava/lang/String;)V

    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->getNext()V

    return-void

    :cond_19
    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackagePath:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lmiui/autoinstall/config/service/AutoInstallService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "extra_apk_path"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "miui.autoinstall.config.ACTION_INSTALL"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "submitInstall: file not exist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AutoInstallService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lmiui/autoinstall/config/service/AutoInstallService;->setHasError(Z)V

    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->getNext()V

    return-void

    :cond_5b
    const-string v1, "miui.autoinstall.config.fileprovider"

    invoke-static {p0, v1, v2}, Lmiui/autoinstall/config/pm/AutoInstallFileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x3

    const-string v4, "com.xiaomi.market"

    invoke-virtual {p0, v4, v1, v3}, Lmiui/autoinstall/config/service/AutoInstallService;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lmiui/autoinstall/config/service/AutoInstallService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public isProvisionAction()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mIsProvision:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lmiui/autoinstall/config/pm/PackageManagerCompat;

    invoke-direct {v0, p0}, Lmiui/autoinstall/config/pm/PackageManagerCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageManagerCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    invoke-virtual {v0, p0}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->bindServices(Landroid/content/Context;)V

    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageManagerCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    invoke-virtual {v0, p0}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->registerInstallListener(Ljava/miui/autoinstall/config/pm/MarketInstallerListener;)V

    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageManagerCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    invoke-virtual {v0}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->loadSystemAppInfoLocal()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mLocalAppInfos:Ljava/util/List;

    new-instance v0, Lmiui/autoinstall/config/download/AutoInstallNotification;

    invoke-direct {v0, p0}, Lmiui/autoinstall/config/download/AutoInstallNotification;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mNotification:Lmiui/autoinstall/config/download/AutoInstallNotification;

    return-void
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mDownloadCompleteReceiver:Lmiui/autoinstall/config/service/AutoInstallService$DownloadCompleteReceiver;

    if-eqz v0, :cond_7

    invoke-virtual {p0, v0}, Lmiui/autoinstall/config/service/AutoInstallService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_7
    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageManagerCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    invoke-virtual {v0, p0}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->unbindService(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onRefuseInstall(Ljava/lang/String;I)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "packageInstallFailed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoInstallService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageManagerCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->updateInstallRecord(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_22
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/autoinstall/config/service/AutoInstallService;->setHasError(Z)V

    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->getNext()V

    return-void
.end method

.method public onServiceDead()V
    .registers 3

    const-string v0, "AutoInstallService"

    const-string v1, "onServiceDead"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mCurrentRestoring:I

    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->showRestoreError()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 12

    if-eqz p1, :cond_bb

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_d
    const-string v0, ""

    :goto_f
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v2, :sswitch_data_c0

    :cond_1c
    goto :goto_58

    :sswitch_1d
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    move v1, v5

    goto :goto_58

    :sswitch_27
    const-string v2, "android.provision.action.PROVISION_COMPLETE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    move v1, v4

    goto :goto_58

    :sswitch_31
    const-string v2, "miui.autoinstall.config.ACTION_INSTALL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    move v1, v7

    goto :goto_58

    :sswitch_3b
    const-string v2, "miui.autoinstall.config.action.AUTOINSTALL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    move v1, v6

    goto :goto_58

    :sswitch_45
    const-string v2, "miui.autoinstall.config.ACTION_START"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v1, 0x0

    goto :goto_58

    :sswitch_4f
    const-string v2, "miui.autoinstall.config.action.DOWNLOADBYPASS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    move v1, v3

    :goto_58
    if-eqz v1, :cond_b8

    if-eq v1, v7, :cond_aa

    const-string v2, "AutoInstallService"

    if-eq v1, v6, :cond_a1

    if-eq v1, v5, :cond_87

    if-eq v1, v4, :cond_6b

    if-eq v1, v3, :cond_67

    goto :goto_bb

    :cond_67
    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->downloadByPass()V

    goto :goto_bb

    :cond_6b
    iput-boolean v7, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mIsProvision:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartCommand: provisioned completed receiver:isProvisionAction:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mIsProvision:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->start()V

    goto :goto_bb

    :cond_87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartCommand: system boot completed receiver: isProvisionAction:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mIsProvision:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->onSystemReboot()V

    goto :goto_bb

    :cond_a1
    const-string v1, "onStartCommand: auto install from outside"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->onMiuiHome()V

    goto :goto_bb

    :cond_aa
    const-string v1, "extra_apk_path"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lmiui/autoinstall/config/service/AutoInstallService;->install(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_bb

    :cond_b8
    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->requestDownload()V

    :cond_bb
    :goto_bb
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    :sswitch_data_c0
    .sparse-switch
        -0x5ebb66e4 -> :sswitch_4f
        -0x2ea2207b -> :sswitch_45
        -0x2d5a5d40 -> :sswitch_3b
        -0x28d90002 -> :sswitch_31
        -0x1e714b9d -> :sswitch_27
        0x2f94f923 -> :sswitch_1d
    .end sparse-switch
.end method

.method public packageInstalled(Ljava/lang/String;I)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "packageInstalled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",returnCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoInstallService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_28

    const/16 v1, -0x19

    if-ne p2, v1, :cond_26

    goto :goto_28

    :cond_26
    const/4 v1, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    move v1, v0

    :goto_29
    if-nez v1, :cond_2f

    invoke-direct {p0, v0}, Lmiui/autoinstall/config/service/AutoInstallService;->setHasError(Z)V

    goto :goto_3a

    :cond_2f
    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackagePath:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lmiui/autoinstall/config/service/AutoInstallService;->deleteInstalledApk(Ljava/lang/String;)V

    :goto_3a
    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageManagerCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    invoke-virtual {v0, p0, p1, v1}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->updateInstallRecord(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->getNext()V

    return-void
.end method
