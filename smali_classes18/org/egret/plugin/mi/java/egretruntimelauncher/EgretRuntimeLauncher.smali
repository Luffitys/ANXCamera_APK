.class public Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;
.super Ljava/lang/Object;
.source "EgretRuntimeLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;,
        Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$GameEngineMethod;
    }
.end annotation


# static fields
.field public static DEBUG_RUNTIME_DOWNLOAD:I = 0x0

.field public static final EGRET_JSON:Ljava/lang/String; = "egret.json"

.field public static final EGRET_ROOT:Ljava/lang/String; = "egret"

.field private static final EGRET_RUNTIME_CACHE_ROOT:Ljava/lang/String; = "update"

.field public static final EGRET_RUNTIME_SD_ROOT:Ljava/lang/String; = "egret/runtime"

.field private static final EGRET_RUNTIME_VERSION_URL:Ljava/lang/String; = "http://runtime.egret-labs.org/runtime.php"

.field private static final TAG:Ljava/lang/String; = "EgretRuntimeLauncher"


# instance fields
.field private cacheRoot:Ljava/io/File;

.field private downLoadSum:I

.field private downloadListener:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;

.field private downloaderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;",
            ">;"
        }
    .end annotation
.end field

.field private fileSizeSum:I

.field private libraryRoot:Ljava/io/File;

.field private mainHandler:Landroid/os/Handler;

.field private mapFileSize:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private runtimeVersion:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeVersion;

.field private runtimeVersionUrl:Ljava/lang/String;

.field private sdRoot:Ljava/io/File;

.field protected updatedNumber:I

.field private urlData:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->DEBUG_RUNTIME_DOWNLOAD:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->mapFileSize:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeVersion;

    invoke-direct {v0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeVersion;-><init>()V

    iput-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->runtimeVersion:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeVersion;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->downloaderList:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->mainHandler:Landroid/os/Handler;

    const-string v0, "http://runtime.egret-labs.org/runtime.php"

    iput-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->runtimeVersionUrl:Ljava/lang/String;

    if-eqz p2, :cond_2f

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    iput-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->libraryRoot:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "update"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->cacheRoot:Ljava/io/File;

    invoke-direct {p0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->getSdRoot()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->sdRoot:Ljava/io/File;

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->cacheRoot:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    invoke-direct {p0, p1, p2}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?appId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&appKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->urlData:Ljava/lang/String;

    if-lez p5, :cond_38

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->urlData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&dev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->urlData:Ljava/lang/String;

    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->runtimeVersionUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->urlData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->runtimeVersionUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->runtimeVersionUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->handleError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->parseRuntimeVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;)V
    .registers 1

    invoke-direct {p0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->updated()V

    return-void
.end method

.method static synthetic access$400(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->mapFileSize:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$500(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;)V
    .registers 1

    invoke-direct {p0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->updateDownLoadSum()V

    return-void
.end method

.method static synthetic access$600(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;)I
    .registers 2

    iget v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->downLoadSum:I

    return v0
.end method

.method static synthetic access$700(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;)I
    .registers 2

    iget v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->fileSizeSum:I

    return v0
.end method

.method static synthetic access$800(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;)Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;
    .registers 2

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->downloadListener:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;

    return-object v0
.end method

.method private checkCache(Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;)Z
    .registers 8

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->cacheRoot:Ljava/io/File;

    invoke-direct {p0, p1, v0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->checkZipInRoot(Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;Ljava/io/File;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->cacheRoot:Ljava/io/File;

    invoke-virtual {p1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->getZipName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Lorg/egret/plugin/mi/android/util/launcher/ZipClass;

    invoke-direct {v2}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass;-><init>()V

    iget-object v3, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->libraryRoot:Ljava/io/File;

    invoke-virtual {v2, v0, v3}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass;->unzip(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    const-string v4, "EgretRuntimeLauncher"

    if-nez v3, :cond_3d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to unzip "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3d
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_5c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to delete "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5c
    const/4 v1, 0x1

    return v1
.end method

.method private checkLocal(Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;)Z
    .registers 5

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->libraryRoot:Ljava/io/File;

    invoke-virtual {p1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->getLibraryName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->getLibraryCheckSum()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->isLatest(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkSd(Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;)Z
    .registers 7

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->sdRoot:Ljava/io/File;

    invoke-direct {p0, p1, v0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->checkZipInRoot(Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;Ljava/io/File;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->cacheRoot:Ljava/io/File;

    invoke-virtual {p1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->getZipName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->sdRoot:Ljava/io/File;

    invoke-virtual {p1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->getZipName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lorg/egret/plugin/mi/android/util/launcher/FileUtil;->Copy(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_27

    return v1

    :cond_27
    invoke-direct {p0, p1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->checkCache(Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;)Z

    move-result v1

    return v1
.end method

.method private checkZipInRoot(Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;Ljava/io/File;)Z
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->getZipName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->getZipCheckSum()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->isLatest(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private fetchRemoteVersion()V
    .registers 4

    invoke-static {}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->getInstance()Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$1;

    invoke-direct {v2, p0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$1;-><init>(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->addTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getFileSize(Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    move-object v0, v3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    move v1, v3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_16
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_16} :catch_1c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_16} :catch_17

    goto :goto_21

    :catch_17
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    :catch_1c
    move-exception v2

    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    nop

    :goto_21
    return v1
.end method

.method private getNeedUpdateLibraryList()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->runtimeVersion:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeVersion;

    invoke-virtual {v1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeVersion;->getLibraryList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;

    invoke-direct {p0, v3}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->checkLocal(Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;)Z

    move-result v4

    if-nez v4, :cond_f

    invoke-direct {p0, v3}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->checkCache(Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;)Z

    move-result v4

    if-nez v4, :cond_f

    invoke-direct {p0, v3}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->checkSd(Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;)Z

    move-result v4

    if-eqz v4, :cond_2e

    goto :goto_f

    :cond_2e
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_32
    return-object v0
.end method

.method private getSdRoot()Ljava/io/File;
    .registers 4

    nop

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "egret/runtime"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_24

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_25

    :cond_24
    return-object v0

    :cond_25
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleError(Ljava/lang/String;)V
    .registers 10

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->libraryRoot:Ljava/io/File;

    const-string v2, "egret.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/egret/plugin/mi/android/util/launcher/FileUtil;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->downloadListener:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;

    invoke-interface {v1, p1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;->onError(Ljava/lang/String;)V

    invoke-static {}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->releaseInstance()V

    return-void

    :cond_18
    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->runtimeVersion:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeVersion;

    invoke-virtual {v1, v0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeVersion;->fromString(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->runtimeVersion:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeVersion;

    invoke-virtual {v1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeVersion;->getLibraryList()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_26

    return-void

    :cond_26
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;

    invoke-direct {p0, v3}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->checkLocal(Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;)Z

    move-result v4

    if-nez v4, :cond_45

    iget-object v2, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->downloadListener:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;

    invoke-interface {v2, p1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;->onError(Ljava/lang/String;)V

    invoke-static {}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->releaseInstance()V

    return-void

    :cond_45
    invoke-static {}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->get()Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;

    move-result-object v4

    invoke-virtual {v4}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->isLoaded()Z

    move-result v4

    if-nez v4, :cond_65

    invoke-static {}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->get()Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->libraryRoot:Ljava/io/File;

    invoke-virtual {v3}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->getLibraryName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->load(Ljava/lang/String;)V

    :cond_65
    goto :goto_2a

    :cond_66
    invoke-direct {p0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->notifyLoadHandler()V

    return-void
.end method

.method private isLatest(Ljava/io/File;Ljava/lang/String;)Z
    .registers 6

    sget v0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->DEBUG_RUNTIME_DOWNLOAD:I

    const/4 v1, 0x0

    if-lez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_d

    return v1

    :cond_d
    invoke-static {p1, p2}, Lorg/egret/plugin/mi/android/util/launcher/Md5Util;->checkMd5(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    return v0

    :cond_15
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_36

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to delete file: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->handleError(Ljava/lang/String;)V

    invoke-static {}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->releaseInstance()V

    :cond_36
    return v1
.end method

.method private loadLibrary()V
    .registers 8

    invoke-static {}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->get()Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->runtimeVersion:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeVersion;

    invoke-virtual {v0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeVersion;->getLibraryList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;

    invoke-static {}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->get()Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->libraryRoot:Ljava/io/File;

    invoke-virtual {v2}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->getLibraryName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->load(Ljava/lang/String;)V

    goto :goto_14

    :cond_37
    invoke-direct {p0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->notifyLoadHandler()V

    return-void
.end method

.method private notifyLoadHandler()V
    .registers 3

    new-instance v0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$3;

    invoke-direct {v0, p0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$3;-><init>(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;)V

    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private parseRuntimeVersion(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->runtimeVersion:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeVersion;

    invoke-virtual {v0, p1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeVersion;->fromString(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->libraryRoot:Ljava/io/File;

    const-string v2, "egret.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/egret/plugin/mi/android/util/launcher/FileUtil;->writeFile(Ljava/io/File;Ljava/lang/String;)Z

    invoke-direct {p0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->updateLibrary()V

    return-void
.end method

.method private declared-synchronized updateDownLoadSum()V
    .registers 8

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->downLoadSum:I

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->mapFileSize:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rt zipUrl progress key = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->downLoadSum:I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->downLoadSum:I

    goto :goto_e

    :cond_4e
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rt zipUrl progress downLoadSum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->downLoadSum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catchall {:try_start_2 .. :try_end_66} :catchall_68

    monitor-exit p0

    return-void

    :catchall_68
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateLibrary()V
    .registers 10

    const/4 v0, 0x0

    iput v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->updatedNumber:I

    invoke-direct {p0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->getNeedUpdateLibraryList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_10

    invoke-direct {p0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->updated()V

    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rt libraryList size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EgretRuntimeLauncher"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;

    invoke-virtual {v4}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->getFileSize(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_33

    :cond_49
    iput v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->fileSizeSum:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_93

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;

    new-instance v5, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;

    iget-object v6, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->libraryRoot:Ljava/io/File;

    iget-object v7, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->cacheRoot:Ljava/io/File;

    iget-object v8, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->sdRoot:Ljava/io/File;

    invoke-direct {v5, v4, v6, v7, v8}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;-><init>(Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    new-instance v6, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$2;

    invoke-direct {v6, p0, v4}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$2;-><init>(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;)V

    invoke-virtual {v5, v6}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->download(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;)V

    iget-object v6, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->downloaderList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addTask: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->getZipName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->getInstance()Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->addTask(Ljava/lang/Runnable;)V

    goto :goto_4f

    :cond_93
    return-void
.end method

.method private updated()V
    .registers 3

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->downloaderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13

    iget v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->updatedNumber:I

    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->downloaderList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_13

    return-void

    :cond_13
    invoke-direct {p0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->loadLibrary()V

    return-void
.end method


# virtual methods
.method public run(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;)V
    .registers 4

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->runtimeVersionUrl:Ljava/lang/String;

    const-string v1, "EgretRuntimeLauncher"

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->libraryRoot:Ljava/io/File;

    if-eqz v0, :cond_18

    if-nez p1, :cond_d

    goto :goto_18

    :cond_d
    const-string v0, "run"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->downloadListener:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;

    invoke-direct {p0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->fetchRemoteVersion()V

    return-void

    :cond_18
    :goto_18
    const-string v0, "library root, url or listener may be null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;->onError(Ljava/lang/String;)V

    invoke-static {}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->releaseInstance()V

    return-void
.end method

.method public setRuntimeVersionUrl(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->urlData:Ljava/lang/String;

    if-nez v0, :cond_7

    iput-object p1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->runtimeVersionUrl:Ljava/lang/String;

    goto :goto_1a

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->urlData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->runtimeVersionUrl:Ljava/lang/String;

    :goto_1a
    return-void
.end method

.method public stop()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->downloaderList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->downloaderList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;

    invoke-virtual {v1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->stop()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    invoke-static {}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->releaseInstance()V

    return-void
.end method
