.class Lcom/android/camera/backup/CameraSettingsBackupImpl$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;


# instance fields
.field final synthetic this$0:Lcom/android/camera/backup/CameraSettingsBackupImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/backup/CameraSettingsBackupImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/backup/CameraSettingsBackupImpl$2;->this$0:Lcom/android/camera/backup/CameraSettingsBackupImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/content/SharedPreferences;Lmiui/cloud/backup/data/DataPackage;[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lmiui/cloud/backup/data/PrefsBackupHelper;->restore(Landroid/content/SharedPreferences;Lmiui/cloud/backup/data/DataPackage;[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;)V

    return-void
.end method
