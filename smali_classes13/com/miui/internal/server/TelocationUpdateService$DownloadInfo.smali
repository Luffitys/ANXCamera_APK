.class final Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;
.super Ljava/lang/Object;
.source "TelocationUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/server/TelocationUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DownloadInfo"
.end annotation


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
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->downloadFileMd5Sum:Ljava/lang/String;

    iput-wide p1, p0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->downloadId:J

    iput-object p4, p0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->newFileMd5Sum:Ljava/lang/String;

    iput p5, p0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->patchType:I

    return-void
.end method

.method public static deleteFromPreferences(Landroid/content/SharedPreferences;)V
    .registers 3

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "telocation_download_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "telocation_downloaded_file_md5"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "telocation_new_file_md5"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "telocation_patch_type"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static readFromPreferences(Landroid/content/SharedPreferences;)Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;
    .registers 7

    new-instance v0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;

    invoke-direct {v0}, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;-><init>()V

    const-string v1, "telocation_download_id"

    const-wide/16 v2, -0x1

    invoke-interface {p0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->downloadId:J

    cmp-long v1, v4, v2

    const/4 v2, 0x0

    if-nez v1, :cond_15

    return-object v2

    :cond_15
    const-string v1, "telocation_downloaded_file_md5"

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->downloadFileMd5Sum:Ljava/lang/String;

    if-nez v1, :cond_20

    return-object v2

    :cond_20
    const-string v1, "telocation_new_file_md5"

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->newFileMd5Sum:Ljava/lang/String;

    if-nez v1, :cond_2b

    return-object v2

    :cond_2b
    const-string v1, "telocation_patch_type"

    const/4 v3, -0x1

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->patchType:I

    if-ne v1, v3, :cond_37

    return-object v2

    :cond_37
    return-object v0
.end method


# virtual methods
.method public writeToPreferences(Landroid/content/SharedPreferences;)V
    .registers 6

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v1, p0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->downloadId:J

    const-string v3, "telocation_download_id"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->downloadFileMd5Sum:Ljava/lang/String;

    const-string v2, "telocation_downloaded_file_md5"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->newFileMd5Sum:Ljava/lang/String;

    const-string v2, "telocation_new_file_md5"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->patchType:I

    const-string v2, "telocation_patch_type"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
