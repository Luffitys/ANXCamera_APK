.class public Lmiui/autoinstall/config/service/AutoInstallService;
.super Landroid/app/Service;
.source ""

# interfaces
.implements Ljava/miui/autoinstall/config/pm/OooO0O0;


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

.field private mDownloader:Lmiui/autoinstall/config/download/AutoInstallDownLoader;

.field private mHasError:Z

.field private mInstallQueue:Ljava/util/Queue;

.field private mIsProvision:Z

.field private mIsRestoring:Z

.field private mLocalAppInfos:Ljava/util/List;

.field private mNotification:Lmiui/autoinstall/config/download/AutoInstallNotification;

.field private mPackageManagerCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

.field private mPackagePath:Ljava/util/Map;

.field private mPackageRestoring:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

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
    .locals 0

    iget-object p0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mLocalAppInfos:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lmiui/autoinstall/config/service/AutoInstallService;Ljava/util/List;)Lmiui/autoinstall/config/entity/ResponseAppInfo;
    .locals 0

    invoke-direct {p0, p1}, Lmiui/autoinstall/config/service/AutoInstallService;->requestAppInfo(Ljava/util/List;)Lmiui/autoinstall/config/entity/ResponseAppInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lmiui/autoinstall/config/service/AutoInstallService;Lmiui/autoinstall/config/entity/ResponseAppInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/autoinstall/config/service/AutoInstallService;->downloadApp(Lmiui/autoinstall/config/entity/ResponseAppInfo;)V

    return-void
.end method

.method static synthetic access$300(Lmiui/autoinstall/config/service/AutoInstallService;)V
    .locals 0

    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->showRestoreError()V

    return-void
.end method

.method static synthetic access$400(Lmiui/autoinstall/config/service/AutoInstallService;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mDownloadIds:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$500(Lmiui/autoinstall/config/service/AutoInstallService;)Lmiui/autoinstall/config/download/AutoInstallDownLoader;
    .locals 0

    iget-object p0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mDownloader:Lmiui/autoinstall/config/download/AutoInstallDownLoader;

    return-object p0
.end method

.method static synthetic access$600(Lmiui/autoinstall/config/service/AutoInstallService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiui/autoinstall/config/service/AutoInstallService;->submitInstall(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private calculateMobileData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 0

    invoke-direct {p0, p1, p3}, Lmiui/autoinstall/config/service/AutoInstallService;->ensureFileNeedDownload(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {p2}, Lmiui/autoinstall/config/utils/AutoInstallRequestUtil;->calculateFileSize(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private deleteInstalledApk(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private doDownload(Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;)V
    .locals 4

    iget-object v0, p1, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;->apkName:Ljava/lang/String;

    iget-object v1, p1, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;->apkMd5:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmiui/autoinstall/config/service/AutoInstallService;->ensureFileNeedDownload(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;->apkName:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lmiui/autoinstall/config/service/AutoInstallService;->submitInstall(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mDownloader:Lmiui/autoinstall/config/download/AutoInstallDownLoader;

    iget-object v1, p1, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;->cdnPath:Ljava/lang/String;

    iget-object v2, p1, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;->apkName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Lmiui/autoinstall/config/download/AutoInstallDownLoader;->enqueue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doDownload: enqueue\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;->apkName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AutoInstallService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mDownloadIds:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method private downloadApp(Lmiui/autoinstall/config/entity/ResponseAppInfo;)V
    .locals 7

    if-eqz p1, :cond_4

    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mInstallQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageRestoring:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p1, p1, Lmiui/autoinstall/config/entity/ResponseAppInfo;->data:Ljava/util/List;

    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->registerDownloadCompleteReceiver()V

    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->isMobileData()Z

    move-result v0

    const-wide/16 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;

    if-eqz v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downloadApp: enqueue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;->apkName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AutoInstallService"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v3, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lmiui/autoinstall/config/service/AutoInstallService;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v0, :cond_1

    iget-object v4, v3, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;->apkName:Ljava/lang/String;

    iget-object v5, v3, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;->cdnPath:Ljava/lang/String;

    iget-object v6, v3, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;->apkMd5:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lmiui/autoinstall/config/service/AutoInstallService;->calculateMobileData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v1, v4

    :cond_1
    iget-object v4, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageRestoring:Ljava/util/List;

    iget-object v5, v3, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mInstallQueue:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageManagerCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    iget-object v3, v3, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;->packageName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v4, p0, v3, v5}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->updateInstallRecord(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1, v2}, Lmiui/autoinstall/config/service/AutoInstallService;->downloadIfRemind(J)V

    :cond_4
    return-void
.end method

.method private downloadByPass()V
    .locals 1

    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mInstallQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageRestoring:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lmiui/autoinstall/config/service/AutoInstallService;->showRestoring(I)V

    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mInstallQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lmiui/autoinstall/config/service/AutoInstallService;->doDownload(Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->showRestoreError()V

    :cond_1
    :goto_0
    return-void
.end method

.method private downloadIfRemind(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lmiui/autoinstall/config/service/AutoInstallService;->showMobileDataRemind(J)V

    return-void

    :cond_0
    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->downloadByPass()V

    return-void
.end method

.method private ensureFileNeedDownload(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/app/Service;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-static {v1}, Lmiui/autoinstall/config/utils/SignUtil;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    return-object v0

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    return-object v0
.end method

.method private getNext()V
    .locals 3

    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mInstallQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->showRestoreError()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mNotification:Lmiui/autoinstall/config/download/AutoInstallNotification;

    invoke-virtual {v0}, Lmiui/autoinstall/config/download/AutoInstallNotification;->showSuccessNotification()V

    iput v1, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mCurrentRestoring:I

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/autoinstall/config/service/AutoInstallService;->setRestoring(Z)V

    goto :goto_0

    :cond_1
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

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lmiui/autoinstall/config/service/AutoInstallService;->doDownload(Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private getParamsMap(Ljava/lang/String;)Ljava/util/TreeMap;
    .locals 1

    new-instance p0, Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    const-string v0, "appInfo"

    invoke-virtual {p0, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private hasError()Z
    .locals 0

    iget-boolean p0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mHasError:Z

    return p0
.end method

.method private install(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageManagerCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    invoke-virtual {p0, p1, p2}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->installPackage(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method private isMobileData()Z
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isOverProvision()Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isPackageAllExisted(Ljava/util/List;)Z
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/autoinstall/config/entity/LocalAppInfo;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageManagerCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    invoke-virtual {p0}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v0, Lmiui/autoinstall/config/entity/LocalAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->packageExists(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isPackageAllExisted: package:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lmiui/autoinstall/config/entity/LocalAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not installed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AutoInstallService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isPackageAllInstalled(Ljava/util/List;)Z
    .locals 5

    invoke-virtual {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->isProvisionAction()Z

    move-result v0

    const-string v1, "AutoInstallService"

    if-eqz v0, :cond_0

    const-string v0, "isPackageAllInstalled: isProvision"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lmiui/autoinstall/config/service/AutoInstallService;->isPackageAllExisted(Ljava/util/List;)Z

    move-result p0

    return p0

    :cond_0
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

    if-eqz v0, :cond_1

    if-nez v2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageManagerCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    invoke-virtual {v0, p0, p1}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->hasFailedRecord(Landroid/content/Context;Ljava/util/List;)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isPackageAllInstalled: hasFailedRecord:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isPackageAllRecorded(Ljava/util/List;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageManagerCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    invoke-virtual {v0, p0, p1}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->isRecordAllInstalled(Landroid/content/Context;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "AutoInstallService"

    const-string v0, "isPackageAllExistedInRecord: "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method private isPackageInstalled(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "AutoInstallService"

    invoke-virtual {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->isProvisionAction()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageManagerCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, p1, v3}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->isPackageInstalledRecord(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result v2

    iget-object v3, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageManagerCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    invoke-virtual {p0}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v3, p0, p1}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->packageExists(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":isPackageRecord:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",isPackageInstalled:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    :catch_0
    move-exception p0

    const-string p1, "isPackageInstalled: "

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_2
    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageManagerCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    invoke-virtual {p0}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->packageExists(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isRestoring()Z
    .locals 0

    iget-boolean p0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mIsRestoring:Z

    return p0
.end method

.method private onMiuiHome()V
    .locals 1

    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->isRestoring()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->showRestoringToast()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->onSystemReboot()V

    :goto_0
    return-void
.end method

.method private onSystemReboot()V
    .locals 1

    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->isOverProvision()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->start()V

    :cond_0
    return-void
.end method

.method private packageCompleted(Ljava/util/List;Ljava/lang/String;)Z
    .locals 0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/autoinstall/config/entity/RestoreRecord;

    iget-object p1, p1, Lmiui/autoinstall/config/entity/RestoreRecord;->packageName:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private recordNotInstalledPkg()V
    .locals 5

    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mLocalAppInfos:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mLocalAppInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/autoinstall/config/entity/LocalAppInfo;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageManagerCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    iget-object v2, v2, Lmiui/autoinstall/config/entity/LocalAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->packageExists(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, p0, v2, v4}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->updateInstallRecord(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private registerDownloadCompleteReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lmiui/autoinstall/config/service/AutoInstallService$DownloadCompleteReceiver;

    invoke-direct {v1, p0}, Lmiui/autoinstall/config/service/AutoInstallService$DownloadCompleteReceiver;-><init>(Lmiui/autoinstall/config/service/AutoInstallService;)V

    iput-object v1, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mDownloadCompleteReceiver:Lmiui/autoinstall/config/service/AutoInstallService$DownloadCompleteReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private requestAppInfo(Ljava/util/List;)Lmiui/autoinstall/config/entity/ResponseAppInfo;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageManagerCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    invoke-virtual {v1, p0}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->getCompletedRestore(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/autoinstall/config/entity/LocalAppInfo;

    if-eqz v3, :cond_1

    if-eqz v2, :cond_2

    iget-object v4, v3, Lmiui/autoinstall/config/entity/LocalAppInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lmiui/autoinstall/config/service/AutoInstallService;->packageCompleted(Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance v4, Lmiui/autoinstall/config/entity/RequestAppInfo;

    invoke-direct {v4}, Lmiui/autoinstall/config/entity/RequestAppInfo;-><init>()V

    iget-object v5, v3, Lmiui/autoinstall/config/entity/LocalAppInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Lmiui/autoinstall/config/entity/RequestAppInfo;->pn:Ljava/lang/String;

    iget v3, v3, Lmiui/autoinstall/config/entity/LocalAppInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lmiui/autoinstall/config/entity/RequestAppInfo;->pvc:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance p1, Lmiui/autoinstall/config/entity/RequestEntity;

    invoke-direct {p1}, Lmiui/autoinstall/config/entity/RequestEntity;-><init>()V

    invoke-static {}, Lmiui/autoinstall/config/utils/SignUtil;->getNonceStr()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lmiui/autoinstall/config/entity/RequestEntity;->nonceStr:Ljava/lang/String;

    iput-object v0, p1, Lmiui/autoinstall/config/entity/RequestEntity;->appInfo:Ljava/util/List;

    invoke-static {v0}, Lmiui/autoinstall/config/entity/RequestEntity;->list2Json(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/autoinstall/config/service/AutoInstallService;->getParamsMap(Ljava/lang/String;)Ljava/util/TreeMap;

    move-result-object p0

    iget-object v0, p1, Lmiui/autoinstall/config/entity/RequestEntity;->nonceStr:Ljava/lang/String;

    invoke-static {p0, v0}, Lmiui/autoinstall/config/utils/SignUtil;->getSign(Ljava/util/TreeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lmiui/autoinstall/config/entity/RequestEntity;->sign:Ljava/lang/String;

    invoke-static {p1}, Lmiui/autoinstall/config/utils/AutoInstallRequestUtil;->requestAppInfo(Lmiui/autoinstall/config/entity/RequestEntity;)Lmiui/autoinstall/config/entity/ResponseAppInfo;

    move-result-object p0

    return-object p0
.end method

.method private requestDownload()V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/autoinstall/config/service/AutoInstallService;->setRestoring(Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/autoinstall/config/service/AutoInstallService;->setHasError(Z)V

    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->showRestoringToast()V

    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->recordNotInstalledPkg()V

    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mDownloader:Lmiui/autoinstall/config/download/AutoInstallDownLoader;

    if-nez v0, :cond_0

    new-instance v0, Lmiui/autoinstall/config/download/AutoInstallDownLoader;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/autoinstall/config/download/AutoInstallDownLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mDownloader:Lmiui/autoinstall/config/download/AutoInstallDownLoader;

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmiui/autoinstall/config/service/AutoInstallService$1;

    invoke-direct {v1, p0}, Lmiui/autoinstall/config/service/AutoInstallService$1;-><init>(Lmiui/autoinstall/config/service/AutoInstallService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private setHasError(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mHasError:Z

    return-void
.end method

.method private setRestoring(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mIsRestoring:Z

    return-void
.end method

.method private showMobileDataRemind(J)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_mobile_data_consume"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "extra_is_mobile_data_remind"

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showPromptRestore()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showRestoreError()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmiui/autoinstall/config/activity/RestoreFailedDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/autoinstall/config/service/AutoInstallService;->setRestoring(Z)V

    invoke-direct {p0, v0}, Lmiui/autoinstall/config/service/AutoInstallService;->setHasError(Z)V

    iget-object p0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mNotification:Lmiui/autoinstall/config/download/AutoInstallNotification;

    invoke-virtual {p0}, Lmiui/autoinstall/config/download/AutoInstallNotification;->clearAll()V

    return-void
.end method

.method private showRestoring(I)V
    .locals 0

    iget-object p0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mNotification:Lmiui/autoinstall/config/download/AutoInstallNotification;

    invoke-virtual {p0, p1}, Lmiui/autoinstall/config/download/AutoInstallNotification;->showStartNotification(I)V

    return-void
.end method

.method private showRestoringToast()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$string;->system_app_is_restore:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private start()V
    .locals 1

    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mLocalAppInfos:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mLocalAppInfos:Ljava/util/List;

    invoke-direct {p0, v0}, Lmiui/autoinstall/config/service/AutoInstallService;->isPackageAllInstalled(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    :cond_1
    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->showPromptRestore()V

    :cond_2
    :goto_0
    return-void
.end method

.method private submitInstall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageManagerCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    invoke-virtual {p0}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->packageExists(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageManagerCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    invoke-virtual {v0, p0, p2, v1}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->updateInstallRecord(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lmiui/autoinstall/config/service/AutoInstallService;->deleteInstalledApk(Ljava/lang/String;)V

    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->getNext()V

    return-void

    :cond_0
    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackagePath:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Landroid/content/Intent;

    const-class v0, Lmiui/autoinstall/config/service/AutoInstallService;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "extra_apk_path"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "miui.autoinstall.config.ACTION_INSTALL"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "submitInstall: file not exist:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AutoInstallService"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lmiui/autoinstall/config/service/AutoInstallService;->setHasError(Z)V

    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->getNext()V

    return-void

    :cond_1
    const-string p1, "miui.autoinstall.config.fileprovider"

    invoke-static {p0, p1, v0}, Lmiui/autoinstall/config/pm/AutoInstallFileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x3

    const-string v1, "com.xiaomi.market"

    invoke-virtual {p0, v1, p1, v0}, Landroid/app/Service;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Landroid/app/Service;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public isProvisionAction()Z
    .locals 0

    iget-boolean p0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mIsProvision:Z

    return p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lmiui/autoinstall/config/pm/PackageManagerCompat;

    invoke-direct {v0, p0}, Lmiui/autoinstall/config/pm/PackageManagerCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageManagerCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    invoke-virtual {v0, p0}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->bindServices(Landroid/content/Context;)V

    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageManagerCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    invoke-virtual {v0, p0}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->registerInstallListener(Ljava/miui/autoinstall/config/pm/OooO0O0;)V

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
    .locals 1

    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mDownloadCompleteReceiver:Lmiui/autoinstall/config/service/AutoInstallService$DownloadCompleteReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageManagerCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    invoke-virtual {v0, p0}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->unbindService(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onRefuseInstall(Ljava/lang/String;I)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "packageInstallFailed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AutoInstallService"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageManagerCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    const/4 v0, 0x0

    invoke-virtual {p2, p0, p1, v0}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->updateInstallRecord(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lmiui/autoinstall/config/service/AutoInstallService;->setHasError(Z)V

    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->getNext()V

    return-void
.end method

.method public onServiceDead()V
    .locals 2

    const-string v0, "AutoInstallService"

    const-string v1, "onServiceDead"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mCurrentRestoring:I

    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->showRestoreError()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v5

    goto :goto_1

    :sswitch_1
    const-string v2, "android.provision.action.PROVISION_COMPLETE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v4

    goto :goto_1

    :sswitch_2
    const-string v2, "miui.autoinstall.config.ACTION_INSTALL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v7

    goto :goto_1

    :sswitch_3
    const-string v2, "miui.autoinstall.config.action.AUTOINSTALL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v6

    goto :goto_1

    :sswitch_4
    const-string v2, "miui.autoinstall.config.ACTION_START"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_5
    const-string v2, "miui.autoinstall.config.action.DOWNLOADBYPASS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v3

    :cond_1
    :goto_1
    if-eqz v1, :cond_7

    if-eq v1, v7, :cond_6

    const-string v0, "AutoInstallService"

    if-eq v1, v6, :cond_5

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->downloadByPass()V

    goto :goto_2

    :cond_3
    iput-boolean v7, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mIsProvision:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand: provisioned completed receiver:isProvisionAction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mIsProvision:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->start()V

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand: system boot completed receiver: isProvisionAction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mIsProvision:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->onSystemReboot()V

    goto :goto_2

    :cond_5
    const-string v1, "onStartCommand: auto install from outside"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->onMiuiHome()V

    goto :goto_2

    :cond_6
    const-string v0, "extra_apk_path"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lmiui/autoinstall/config/service/AutoInstallService;->install(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->requestDownload()V

    :cond_8
    :goto_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x5ebb66e4 -> :sswitch_5
        -0x2ea2207b -> :sswitch_4
        -0x2d5a5d40 -> :sswitch_3
        -0x28d90002 -> :sswitch_2
        -0x1e714b9d -> :sswitch_1
        0x2f94f923 -> :sswitch_0
    .end sparse-switch
.end method

.method public packageInstalled(Ljava/lang/String;I)V
    .locals 2

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

    if-eq p2, v0, :cond_1

    const/16 v1, -0x19

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v0

    :goto_1
    if-nez p2, :cond_2

    invoke-direct {p0, v0}, Lmiui/autoinstall/config/service/AutoInstallService;->setHasError(Z)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackagePath:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lmiui/autoinstall/config/service/AutoInstallService;->deleteInstalledApk(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService;->mPackageManagerCompat:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    invoke-virtual {v0, p0, p1, p2}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->updateInstallRecord(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->getNext()V

    return-void
.end method
