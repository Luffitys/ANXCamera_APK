.class public Lcom/android/camera/multi/downloader/DeleteDownloadedFilesTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "Split:DeleteFilesTask"


# instance fields
.field private final dirPath:Ljava/lang/String;

.field private final isPrefix:Z

.field private final regEx:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/camera/multi/downloader/DeleteDownloadedFilesTask;->regEx:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/multi/downloader/DeleteDownloadedFilesTask;->dirPath:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/camera/multi/downloader/DeleteDownloadedFilesTask;->isPrefix:Z

    return-void
.end method

.method private enumAllFileList()V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/multi/downloader/DeleteDownloadedFilesTask;->dirPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/multi/downloader/DeleteDownloadedFilesTask;->dirPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/multi/downloader/DeleteDownloadedFilesTask;->regEx:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/camera/multi/downloader/DeleteDownloadedFilesTask$DeleteFileFilter;

    iget-boolean v2, p0, Lcom/android/camera/multi/downloader/DeleteDownloadedFilesTask;->isPrefix:Z

    iget-object v3, p0, Lcom/android/camera/multi/downloader/DeleteDownloadedFilesTask;->regEx:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/multi/downloader/DeleteDownloadedFilesTask$DeleteFileFilter;-><init>(Lcom/android/camera/multi/downloader/DeleteDownloadedFilesTask;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete assigned group download file:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera/multi/downloader/DeleteDownloadedFilesTask;->regEx:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_0

    const-string v3, "true."

    goto :goto_1

    :cond_0
    const-string v3, "false!"

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Split:DeleteFilesTask"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/multi/downloader/DeleteDownloadedFilesTask;->enumAllFileList()V

    return-void
.end method
