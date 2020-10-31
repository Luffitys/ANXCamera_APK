.class public Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;
.super Ljava/lang/Object;
.source "EgretRuntimeLibrary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "EgretRuntimeLibrary"


# instance fields
.field private cacheRoot:Ljava/io/File;

.field private downloadListener:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;

.field private volatile isCancelling:Z

.field private library:Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;

.field private root:Ljava/io/File;

.field private sdRoot:Ljava/io/File;


# direct methods
.method public constructor <init>(Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->library:Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;

    iput-object p2, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->root:Ljava/io/File;

    iput-object p3, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->cacheRoot:Ljava/io/File;

    iput-object p4, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->sdRoot:Ljava/io/File;

    return-void
.end method

.method static synthetic access$000(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;)Z
    .registers 2

    iget-boolean v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->isCancelling:Z

    return v0
.end method

.method static synthetic access$100(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;)Z
    .registers 2

    invoke-direct {p0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->doMove()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;)V
    .registers 1

    invoke-direct {p0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->doUnzip()V

    return-void
.end method

.method static synthetic access$300(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;)Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;
    .registers 2

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->downloadListener:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;

    return-object v0
.end method

.method static synthetic access$400(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;)Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;
    .registers 2

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->library:Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;

    return-object v0
.end method

.method private doDownload()V
    .registers 6

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->sdRoot:Ljava/io/File;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->cacheRoot:Ljava/io/File;

    :goto_7
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->library:Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;

    invoke-virtual {v2}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->getZipName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Lorg/egret/plugin/mi/android/util/launcher/NetClass;

    invoke-direct {v2}, Lorg/egret/plugin/mi/android/util/launcher/NetClass;-><init>()V

    iget-object v3, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->library:Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;

    invoke-virtual {v3}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->getUrl()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$1;

    invoke-direct {v4, p0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$1;-><init>(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;)V

    invoke-virtual {v2, v3, v1, v4}, Lorg/egret/plugin/mi/android/util/launcher/NetClass;->writeResponseToFile(Ljava/lang/String;Ljava/io/File;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V

    return-void
.end method

.method private doMove()Z
    .registers 6

    iget-boolean v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->isCancelling:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->downloadListener:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;

    const-string v2, "thread is cancelling"

    invoke-interface {v0, v2}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;->onError(Ljava/lang/String;)V

    return v1

    :cond_d
    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->sdRoot:Ljava/io/File;

    if-eqz v0, :cond_39

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->sdRoot:Ljava/io/File;

    iget-object v3, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->library:Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;

    invoke-virtual {v3}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->getZipName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->cacheRoot:Ljava/io/File;

    iget-object v4, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->library:Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;

    invoke-virtual {v4}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->getZipName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lorg/egret/plugin/mi/android/util/launcher/FileUtil;->Copy(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->downloadListener:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;

    const-string v2, "copy file error"

    invoke-interface {v0, v2}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;->onError(Ljava/lang/String;)V

    return v1

    :cond_39
    const/4 v0, 0x1

    return v0
.end method

.method private doUnzip()V
    .registers 6

    iget-boolean v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->isCancelling:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->downloadListener:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;

    const-string v1, "thread is cancelling"

    invoke-interface {v0, v1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;->onError(Ljava/lang/String;)V

    :cond_b
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->cacheRoot:Ljava/io/File;

    iget-object v2, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->library:Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;

    invoke-virtual {v2}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->getZipName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->root:Ljava/io/File;

    iget-object v3, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->library:Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;

    invoke-virtual {v3}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->getLibraryName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->library:Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;

    invoke-virtual {v2}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->getZipCheckSum()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/egret/plugin/mi/android/util/launcher/Md5Util;->checkMd5(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_38

    iget-object v2, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->downloadListener:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;

    const-string v3, "cache file md5 error"

    invoke-interface {v2, v3}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;->onError(Ljava/lang/String;)V

    :cond_38
    new-instance v2, Lorg/egret/plugin/mi/android/util/launcher/ZipClass;

    invoke-direct {v2}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass;-><init>()V

    iget-object v3, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->root:Ljava/io/File;

    new-instance v4, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$2;

    invoke-direct {v4, p0, v0, v1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$2;-><init>(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v2, v0, v3, v4}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass;->unzip(Ljava/io/File;Ljava/io/File;Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;)V

    return-void
.end method


# virtual methods
.method public download(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;)V
    .registers 3

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->library:Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->root:Ljava/io/File;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->cacheRoot:Ljava/io/File;

    if-eqz v0, :cond_12

    if-nez p1, :cond_f

    goto :goto_12

    :cond_f
    iput-object p1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->downloadListener:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;

    return-void

    :cond_12
    :goto_12
    const-string v0, "libray, root, cacheRoot, listener may be null"

    invoke-interface {p1, v0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->isCancelling:Z

    invoke-direct {p0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->doDownload()V

    return-void
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->isCancelling:Z

    return-void
.end method
