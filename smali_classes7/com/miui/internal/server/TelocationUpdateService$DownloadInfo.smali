.class final Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final KEY_DOWNLOADED_FILE_MD5:Ljava/lang/String; = "telocation_downloaded_file_md5"

.field private static final KEY_DOWNLOAD_ID:Ljava/lang/String; = "telocation_download_id"

.field private static final KEY_NEW_FILE_MD5:Ljava/lang/String; = "telocation_new_file_md5"

.field private static final KEY_PATCH_TYPE:Ljava/lang/String; = "telocation_patch_type"


# instance fields
.field public downloadFileMd5Sum:Ljava/lang/String;

.field public downloadId:J

.field public newFileMd5Sum:Ljava/lang/String;

.field public patchType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->downloadFileMd5Sum:Ljava/lang/String;

    iput-wide p1, p0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->downloadId:J

    iput-object p4, p0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->newFileMd5Sum:Ljava/lang/String;

    iput p5, p0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->patchType:I

    return-void
.end method

.method public static deleteFromPreferences(Landroid/content/SharedPreferences;)V
    .locals 1

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "telocation_download_id"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "telocation_downloaded_file_md5"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "telocation_new_file_md5"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "telocation_patch_type"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static readFromPreferences(Landroid/content/SharedPreferences;)Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;
    .locals 6

    new-instance v0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;

    invoke-direct {v0}, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;-><init>()V

    const-string v1, "telocation_download_id"

    const-wide/16 v2, -0x1

    invoke-interface {p0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->downloadId:J

    cmp-long v1, v4, v2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const-string v1, "telocation_downloaded_file_md5"

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->downloadFileMd5Sum:Ljava/lang/String;

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    const-string v1, "telocation_new_file_md5"

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->newFileMd5Sum:Ljava/lang/String;

    if-nez v1, :cond_2

    return-object v2

    :cond_2
    const-string v1, "telocation_patch_type"

    const/4 v3, -0x1

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->patchType:I

    if-ne p0, v3, :cond_3

    return-object v2

    :cond_3
    return-object v0
.end method


# virtual methods
.method public writeToPreferences(Landroid/content/SharedPreferences;)V
    .locals 3

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-wide v0, p0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->downloadId:J

    const-string v2, "telocation_download_id"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->downloadFileMd5Sum:Ljava/lang/String;

    const-string v1, "telocation_downloaded_file_md5"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->newFileMd5Sum:Ljava/lang/String;

    const-string v1, "telocation_new_file_md5"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget p0, p0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->patchType:I

    const-string v0, "telocation_patch_type"

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
