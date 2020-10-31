.class public Landroid/app/backup/BackupTransport;
.super Ljava/lang/Object;
.source "BackupTransport.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/BackupTransport$TransportImpl;
    }
.end annotation


# static fields
.field public static final AGENT_ERROR:I = -0x3eb

.field public static final AGENT_UNKNOWN:I = -0x3ec

.field public static final EXTRA_TRANSPORT_REGISTRATION:Ljava/lang/String; = "android.app.backup.extra.TRANSPORT_REGISTRATION"

.field public static final FLAG_DATA_NOT_CHANGED:I = 0x8

.field public static final FLAG_INCREMENTAL:I = 0x2

.field public static final FLAG_NON_INCREMENTAL:I = 0x4

.field public static final FLAG_USER_INITIATED:I = 0x1

.field public static final NO_MORE_DATA:I = -0x1

.field public static final TRANSPORT_ERROR:I = -0x3e8

.field public static final TRANSPORT_NON_INCREMENTAL_BACKUP_REQUIRED:I = -0x3ee

.field public static final TRANSPORT_NOT_INITIALIZED:I = -0x3e9

.field public static final TRANSPORT_OK:I = 0x0

.field public static final TRANSPORT_PACKAGE_REJECTED:I = -0x3ea

.field public static final TRANSPORT_QUOTA_EXCEEDED:I = -0x3ed


# instance fields
.field mBinderImpl:Lcom/android/internal/backup/IBackupTransport;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/backup/BackupTransport$TransportImpl;

    invoke-direct {v0, p0}, Landroid/app/backup/BackupTransport$TransportImpl;-><init>(Landroid/app/backup/BackupTransport;)V

    iput-object v0, p0, Landroid/app/backup/BackupTransport;->mBinderImpl:Lcom/android/internal/backup/IBackupTransport;

    return-void
.end method


# virtual methods
.method public abortFullRestore()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public cancelFullBackup()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Transport cancelFullBackup() not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkFullBackupSize(J)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public clearBackupData(Landroid/content/pm/PackageInfo;)I
    .registers 3

    const/16 v0, -0x3e8

    return v0
.end method

.method public configurationIntent()Landroid/content/Intent;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public currentDestinationString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Transport currentDestinationString() not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dataManagementIntent()Landroid/content/Intent;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public dataManagementIntentLabel()Ljava/lang/CharSequence;
    .registers 2

    invoke-virtual {p0}, Landroid/app/backup/BackupTransport;->dataManagementLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dataManagementLabel()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Transport dataManagementLabel() not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public finishBackup()I
    .registers 2

    const/16 v0, -0x3e8

    return v0
.end method

.method public finishRestore()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Transport finishRestore() not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBackupQuota(Ljava/lang/String;Z)J
    .registers 5

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/app/backup/BackupTransport;->mBinderImpl:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentRestoreSet()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getRestoreData(Landroid/os/ParcelFileDescriptor;)I
    .registers 3

    const/16 v0, -0x3e8

    return v0
.end method

.method public getTransportFlags()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public initializeDevice()I
    .registers 2

    const/16 v0, -0x3e8

    return v0
.end method

.method public isAppEligibleForBackup(Landroid/content/pm/PackageInfo;Z)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method

.method public name()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Transport name() not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextRestorePackage()Landroid/app/backup/RestoreDescription;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I
    .registers 4

    const/16 v0, -0x3e8

    return v0
.end method

.method public performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I
    .registers 5

    invoke-virtual {p0, p1, p2}, Landroid/app/backup/BackupTransport;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I

    move-result v0

    return v0
.end method

.method public performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I
    .registers 4

    const/16 v0, -0x3ea

    return v0
.end method

.method public performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I
    .registers 5

    invoke-virtual {p0, p1, p2}, Landroid/app/backup/BackupTransport;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I

    move-result v0

    return v0
.end method

.method public requestBackupTime()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public requestFullBackupTime()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public sendBackupData(I)I
    .registers 3

    const/16 v0, -0x3e8

    return v0
.end method

.method public startRestore(J[Landroid/content/pm/PackageInfo;)I
    .registers 5

    const/16 v0, -0x3e8

    return v0
.end method

.method public transportDirName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Transport transportDirName() not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
