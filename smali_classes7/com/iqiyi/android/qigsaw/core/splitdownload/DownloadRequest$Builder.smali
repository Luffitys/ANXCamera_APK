.class public Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private fileDir:Ljava/lang/String;

.field private fileMD5:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private moduleName:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->fileDir:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->moduleName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->fileMD5:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;
    .locals 2

    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;-><init>(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$1;)V

    return-object v0
.end method

.method public fileDir(Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->fileDir:Ljava/lang/String;

    return-object p0
.end method

.method public fileMD5(Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->fileMD5:Ljava/lang/String;

    return-object p0
.end method

.method public fileName(Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public moduleName(Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->moduleName:Ljava/lang/String;

    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->url:Ljava/lang/String;

    return-object p0
.end method
