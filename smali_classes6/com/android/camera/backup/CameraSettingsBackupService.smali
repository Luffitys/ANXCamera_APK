.class public Lcom/android/camera/backup/CameraSettingsBackupService;
.super Lmiui/cloud/backup/CloudBackupServiceBase;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/cloud/backup/CloudBackupServiceBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBackupImpl()Lmiui/cloud/backup/ICloudBackup;
    .locals 0

    new-instance p0, Lcom/android/camera/backup/CameraSettingsBackupImpl;

    invoke-direct {p0}, Lcom/android/camera/backup/CameraSettingsBackupImpl;-><init>()V

    return-object p0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lmiui/cloud/backup/CloudBackupServiceBase;->onHandleIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, ""

    const-string v0, "exception when onHandleIntent "

    invoke-static {p1, v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
