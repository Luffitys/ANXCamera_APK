.class public Lmiui/app/backup/BackupManager;
.super Ljava/lang/Object;
.source "BackupManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/backup/BackupManager$BackupRestoreListener;,
        Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;
    }
.end annotation


# static fields
.field public static final BACKUP_FILE_HEADER_MAGIC:Ljava/lang/String; = "MIUI BACKUP\n"

.field public static final BACKUP_FILE_VERSION:I = 0x2

.field public static DOMAIN_ATTACH:Ljava/lang/String; = null

.field public static DOMAIN_BAK:Ljava/lang/String; = null

.field public static DOMAIN_END:Ljava/lang/String; = null

.field public static DOMAIN_META:Ljava/lang/String; = null

.field public static final ERR_APK_INSTALL:I = 0xb

.field public static final ERR_AUTHENTICATION_FAILED:I = 0x3

.field public static final ERR_BAKFILE_BROKEN:I = 0x6

.field public static final ERR_BINDER_DIED:I = 0x8

.field public static final ERR_IO_PERMISSION:I = 0x7

.field public static final ERR_NONE:I = 0x0

.field public static final ERR_NOT_ALLOW:I = 0x9

.field public static final ERR_NO_BACKUPAGENT:I = 0x2

.field public static final ERR_UNKNOWN:I = 0x1

.field public static final ERR_USER_CANCEL:I = 0xa

.field public static final ERR_VERSION_TOO_OLD:I = 0x5

.field public static final ERR_VERSION_UNSUPPORTED:I = 0x4

.field public static final FEATURE_FULL_BACKUP:I = -0x1

.field public static final FEATURE_SUPPORT_XSPACE_APP_BACKUP:Z = true

.field private static final MIUI_RESTORE_SERVICE_NAME:Ljava/lang/String; = "miui.restore.service"

.field public static final PROG_TYPE_NORMAL:I = 0x0

.field public static final PROG_TYPE_RECORD:I = 0x1

.field public static final SERVICE_NAME:Ljava/lang/String; = "MiuiBackup"

.field public static final STATE_BACKUP:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_RESTORE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Backup:BackupManager"

.field public static final TYPE_NORMAL_BACKUP_TIMEOUT_SCALE:I = 0x1

.field public static final TYPE_RECORD_BACKUP_TIMEOUT_SCALE:I = 0x6

.field private static mSystemAppWhiteSet:Ljava/util/HashSet;

.field private static sProgRecordAppSet:Ljava/util/HashSet;

.field private static sWRInstance:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/app/backup/BackupManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBackupRestoreLatch:Ljava/lang/Object;

.field private mBackupRestoreListener:Lmiui/app/backup/BackupManager$BackupRestoreListener;

.field private mContext:Landroid/content/Context;

.field private mICaller:Landroid/os/IBinder;

.field private mIsAcquired:Z

.field private mMiuiRestoreManagerService:Lmiui/app/backup/IMiuiRestoreManager;

.field private mPips:[Landroid/os/ParcelFileDescriptor;

.field private mService:Lmiui/app/backup/IBackupManager;

.field private mTransactionLatch:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "miui_bak"

    sput-object v0, Lmiui/app/backup/BackupManager;->DOMAIN_BAK:Ljava/lang/String;

    const-string v0, "miui_meta"

    sput-object v0, Lmiui/app/backup/BackupManager;->DOMAIN_META:Ljava/lang/String;

    const-string v0, "miui_att"

    sput-object v0, Lmiui/app/backup/BackupManager;->DOMAIN_ATTACH:Ljava/lang/String;

    const-string v0, "miui_end"

    sput-object v0, Lmiui/app/backup/BackupManager;->DOMAIN_END:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/app/backup/BackupManager;->mSystemAppWhiteSet:Ljava/util/HashSet;

    const-string v1, "com.android.browser"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/backup/BackupManager;->mSystemAppWhiteSet:Ljava/util/HashSet;

    const-string v1, "com.mi.globalbrowser"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/backup/BackupManager;->mSystemAppWhiteSet:Ljava/util/HashSet;

    const-string v1, "com.miui.weather2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/backup/BackupManager;->mSystemAppWhiteSet:Ljava/util/HashSet;

    const-string v1, "com.miui.notes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/backup/BackupManager;->mSystemAppWhiteSet:Ljava/util/HashSet;

    const-string v1, "com.android.email"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/app/backup/BackupManager;->sProgRecordAppSet:Ljava/util/HashSet;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/backup/BackupManager;->sProgRecordAppSet:Ljava/util/HashSet;

    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/backup/BackupManager;->sProgRecordAppSet:Ljava/util/HashSet;

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/backup/BackupManager;->sProgRecordAppSet:Ljava/util/HashSet;

    const-string v1, "com.tencent.mobileqq"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/app/backup/BackupManager;->mTransactionLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreLatch:Ljava/lang/Object;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lmiui/app/backup/BackupManager;->mICaller:Landroid/os/IBinder;

    iput-object p1, p0, Lmiui/app/backup/BackupManager;->mContext:Landroid/content/Context;

    const-string v0, "MiuiBackup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    nop

    const-string v0, "miui.restore.service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/backup/IMiuiRestoreManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IMiuiRestoreManager;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/backup/BackupManager;->mMiuiRestoreManagerService:Lmiui/app/backup/IMiuiRestoreManager;

    return-void
.end method

.method static synthetic access$100(Lmiui/app/backup/BackupManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mTransactionLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$102(Lmiui/app/backup/BackupManager;Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iput-object p1, p0, Lmiui/app/backup/BackupManager;->mTransactionLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p1
.end method

.method static synthetic access$200(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;
    .registers 2

    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreListener:Lmiui/app/backup/BackupManager$BackupRestoreListener;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/app/backup/BackupManager;)[Landroid/os/ParcelFileDescriptor;
    .registers 2

    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/app/backup/BackupManager;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreLatch:Ljava/lang/Object;

    return-object v0
.end method

.method public static final getBackupManager(Landroid/content/Context;)Lmiui/app/backup/BackupManager;
    .registers 4

    sget-object v0, Lmiui/app/backup/BackupManager;->sWRInstance:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/BackupManager;

    :goto_c
    if-nez v0, :cond_1f

    new-instance v1, Lmiui/app/backup/BackupManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiui/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lmiui/app/backup/BackupManager;->sWRInstance:Ljava/lang/ref/WeakReference;

    :cond_1f
    return-object v0
.end method

.method public static isProgRecordApp(Ljava/lang/String;I)Z
    .registers 3

    sget-object v0, Lmiui/app/backup/BackupManager;->sProgRecordAppSet:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSysAppForBackup(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    :try_start_7
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    invoke-static {v2}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v3
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_f} :catch_11

    move v0, v3

    goto :goto_12

    :catch_11
    move-exception v2

    :goto_12
    return v0
.end method

.method public static isSysAppForBackup(Landroid/content/pm/PackageInfo;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1c

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1b

    sget-object v1, Lmiui/app/backup/BackupManager;->mSystemAppWhiteSet:Ljava/util/HashSet;

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    :cond_1b
    const/4 v0, 0x1

    :cond_1c
    return v0
.end method


# virtual methods
.method public acquire(Lmiui/app/backup/IBackupServiceStateObserver;)Z
    .registers 4

    :try_start_0
    iget-boolean v0, p0, Lmiui/app/backup/BackupManager;->mIsAcquired:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mICaller:Landroid/os/IBinder;

    invoke-interface {v0, p1, v1}, Lmiui/app/backup/IBackupManager;->acquire(Lmiui/app/backup/IBackupServiceStateObserver;Landroid/os/IBinder;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/backup/BackupManager;->mIsAcquired:Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    :cond_e
    goto :goto_13

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_13
    iget-boolean v0, p0, Lmiui/app/backup/BackupManager;->mIsAcquired:Z

    return v0
.end method

.method public backupPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLmiui/app/backup/BackupManager$BackupRestoreListener;)V
    .registers 17

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lmiui/app/backup/BackupManager;->backupPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZLmiui/app/backup/BackupManager$BackupRestoreListener;)V

    return-void
.end method

.method public backupPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZLmiui/app/backup/BackupManager$BackupRestoreListener;)V
    .registers 19

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lmiui/app/backup/BackupManager;->backupPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZLmiui/app/backup/BackupManager$BackupRestoreListener;)V

    return-void
.end method

.method public backupPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZLmiui/app/backup/BackupManager$BackupRestoreListener;)V
    .registers 28

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lmiui/app/backup/BackupManager;->mIsAcquired:Z

    if-nez v0, :cond_e

    const-string v0, "Backup:BackupManager"

    const-string v2, "You must acquire first to use the backup service"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    move-object/from16 v2, p9

    iput-object v2, v1, Lmiui/app/backup/BackupManager;->mBackupRestoreListener:Lmiui/app/backup/BackupManager$BackupRestoreListener;

    iget-object v0, v1, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    if-eqz v0, :cond_104

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_18
    iget-object v5, v1, Lmiui/app/backup/BackupManager;->mBackupRestoreLatch:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_b3
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_8f
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1b} :catch_6b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_67

    :try_start_1b
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v1, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    iget-object v6, v1, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    aget-object v7, v0, v3

    aget-object v8, v0, v4

    new-instance v0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;

    const/4 v9, 0x0

    invoke-direct {v0, v1, v9}, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;-><init>(Lmiui/app/backup/BackupManager;Lmiui/app/backup/BackupManager$1;)V

    move-object/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p7

    move/from16 v16, p8

    move-object/from16 v17, v0

    invoke-interface/range {v6 .. v17}, Lmiui/app/backup/IBackupManager;->backupPackage(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZLmiui/app/backup/IPackageBackupRestoreObserver;)V

    iget-object v0, v1, Lmiui/app/backup/BackupManager;->mBackupRestoreLatch:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    monitor-exit v5
    :try_end_48
    .catchall {:try_start_1b .. :try_end_48} :catchall_64

    iget-object v0, v1, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_104

    :try_start_4c
    aget-object v5, v0, v4

    if-eqz v5, :cond_55

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_55
    iget-object v0, v1, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v3

    if-eqz v0, :cond_df

    iget-object v0, v1, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_62} :catch_d7

    goto/16 :goto_df

    :catchall_64
    move-exception v0

    :try_start_65
    monitor-exit v5
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    :try_start_66
    throw v0
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_67} :catch_b3
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_67} :catch_8f
    .catch Ljava/lang/InterruptedException; {:try_start_66 .. :try_end_67} :catch_6b
    .catchall {:try_start_66 .. :try_end_67} :catchall_67

    :catchall_67
    move-exception v0

    move-object v5, v0

    goto/16 :goto_e0

    :catch_6b
    move-exception v0

    :try_start_6c
    const-string v5, "Backup:BackupManager"

    const-string v6, "InterruptedException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_73
    .catchall {:try_start_6c .. :try_end_73} :catchall_67

    nop

    iget-object v0, v1, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_104

    :try_start_78
    aget-object v5, v0, v4

    if-eqz v5, :cond_81

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_81
    iget-object v0, v1, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v3

    if-eqz v0, :cond_df

    iget-object v0, v1, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_8e} :catch_d7

    goto :goto_df

    :catch_8f
    move-exception v0

    :try_start_90
    const-string v5, "Backup:BackupManager"

    const-string v6, "Remove invoking failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_97
    .catchall {:try_start_90 .. :try_end_97} :catchall_67

    nop

    iget-object v0, v1, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_104

    :try_start_9c
    aget-object v5, v0, v4

    if-eqz v5, :cond_a5

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_a5
    iget-object v0, v1, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v3

    if-eqz v0, :cond_df

    iget-object v0, v1, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_b2} :catch_d7

    goto :goto_df

    :catch_b3
    move-exception v0

    :try_start_b4
    const-string v5, "Backup:BackupManager"

    const-string v6, "create pipe failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bb
    .catchall {:try_start_b4 .. :try_end_bb} :catchall_67

    nop

    iget-object v0, v1, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_104

    :try_start_c0
    aget-object v5, v0, v4

    if-eqz v5, :cond_c9

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_c9
    iget-object v0, v1, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v3

    if-eqz v0, :cond_df

    iget-object v0, v1, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_d6} :catch_d7

    goto :goto_df

    :catch_d7
    move-exception v0

    const-string v3, "Backup:BackupManager"

    const-string v4, "IOException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_df
    :goto_df
    goto :goto_104

    :goto_e0
    iget-object v0, v1, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_103

    :try_start_e4
    aget-object v6, v0, v4

    if-eqz v6, :cond_ed

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_ed
    iget-object v0, v1, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v3

    if-eqz v0, :cond_fa

    iget-object v0, v1, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_fa} :catch_fb

    :cond_fa
    goto :goto_103

    :catch_fb
    move-exception v0

    const-string v3, "Backup:BackupManager"

    const-string v4, "IOException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_103
    :goto_103
    throw v5

    :cond_104
    :goto_104
    return-void
.end method

.method public delCacheBackup()Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v0}, Lmiui/app/backup/IBackupManager;->delCacheBackup()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    return v0

    :catch_7
    move-exception v0

    const-string v1, "Backup:BackupManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentRunningPackage()Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v0}, Lmiui/app/backup/IBackupManager;->getCurrentRunningPackage()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "Backup:BackupManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentWorkingFeature()I
    .registers 4

    :try_start_0
    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v0}, Lmiui/app/backup/IBackupManager;->getCurrentWorkingFeature()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    const-string v1, "Backup:BackupManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    return v0
.end method

.method public getMiuiRestoreManagerServiceIsRunning()Z
    .registers 2

    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mMiuiRestoreManagerService:Lmiui/app/backup/IMiuiRestoreManager;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public getState()I
    .registers 4

    :try_start_0
    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v0}, Lmiui/app/backup/IBackupManager;->getState()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    const-string v1, "Backup:BackupManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    return v0
.end method

.method public isServiceIdle()Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v1}, Lmiui/app/backup/IBackupManager;->isServiceIdle()Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    move v0, v1

    goto :goto_d

    :catch_9
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_d
    return v0
.end method

.method public moveData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 12

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lmiui/app/backup/BackupManager;->moveData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)Z

    move-result v0

    return v0
.end method

.method public moveData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)Z
    .registers 14

    :try_start_0
    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mMiuiRestoreManagerService:Lmiui/app/backup/IMiuiRestoreManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lmiui/app/backup/IMiuiRestoreManager;->moveData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    const-string v1, "Backup:BackupManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "move data error"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public registerRestoreListener(Lmiui/app/backup/IRestoreListener;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mMiuiRestoreManagerService:Lmiui/app/backup/IMiuiRestoreManager;

    invoke-interface {v0, p1}, Lmiui/app/backup/IMiuiRestoreManager;->registerRestoreListener(Lmiui/app/backup/IRestoreListener;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "Backup:BackupManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public release(Lmiui/app/backup/IBackupServiceStateObserver;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v0, p1}, Lmiui/app/backup/IBackupManager;->release(Lmiui/app/backup/IBackupServiceStateObserver;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/app/backup/BackupManager;->mIsAcquired:Z

    return-void
.end method

.method public restoreFile(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;ZLmiui/app/backup/BackupManager$BackupRestoreListener;)V
    .registers 13

    iget-boolean v0, p0, Lmiui/app/backup/BackupManager;->mIsAcquired:Z

    if-nez v0, :cond_c

    const-string v0, "Backup:BackupManager"

    const-string v1, "You must acquire first to use the restore service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    iput-object p4, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreListener:Lmiui/app/backup/BackupManager$BackupRestoreListener;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_10
    iget-object v2, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreLatch:Ljava/lang/Object;

    monitor-enter v2
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_7a
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_13} :catch_65
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_50
    .catchall {:try_start_10 .. :try_end_13} :catchall_4e

    :try_start_13
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    move-object v0, v3

    const/4 v3, 0x1

    aget-object v3, v0, v3

    new-instance v4, Lmiui/app/backup/BackupManager$1;

    invoke-direct {v4, p0, p1, v3}, Lmiui/app/backup/BackupManager$1;-><init>(Lmiui/app/backup/BackupManager;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v4}, Lmiui/app/backup/BackupManager$1;->start()V

    iget-object v4, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    aget-object v5, v0, v1

    new-instance v6, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;-><init>(Lmiui/app/backup/BackupManager;Lmiui/app/backup/BackupManager$1;)V

    invoke-interface {v4, v5, p2, p3, v6}, Lmiui/app/backup/IBackupManager;->restoreFile(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;ZLmiui/app/backup/IPackageBackupRestoreObserver;)V

    iget-object v4, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreLatch:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_13 .. :try_end_36} :catchall_4b

    if-eqz v0, :cond_8f

    aget-object v2, v0, v1

    if-eqz v2, :cond_8f

    :try_start_3c
    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_41} :catch_42

    goto :goto_4a

    :catch_42
    move-exception v1

    const-string v2, "Backup:BackupManager"

    const-string v3, "IOException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4a
    goto :goto_8f

    :catchall_4b
    move-exception v3

    :try_start_4c
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    :try_start_4d
    throw v3
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_4e} :catch_7a
    .catch Ljava/lang/InterruptedException; {:try_start_4d .. :try_end_4e} :catch_65
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_4e} :catch_50
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4e

    :catchall_4e
    move-exception v2

    goto :goto_90

    :catch_50
    move-exception v2

    :try_start_51
    const-string v3, "Backup:BackupManager"

    const-string v4, "IOException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_58
    .catchall {:try_start_51 .. :try_end_58} :catchall_4e

    nop

    if-eqz v0, :cond_8f

    aget-object v2, v0, v1

    if-eqz v2, :cond_8f

    :try_start_5f
    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_64} :catch_42

    goto :goto_4a

    :catch_65
    move-exception v2

    :try_start_66
    const-string v3, "Backup:BackupManager"

    const-string v4, "InterruptedException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6d
    .catchall {:try_start_66 .. :try_end_6d} :catchall_4e

    nop

    if-eqz v0, :cond_8f

    aget-object v2, v0, v1

    if-eqz v2, :cond_8f

    :try_start_74
    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_79} :catch_42

    goto :goto_4a

    :catch_7a
    move-exception v2

    :try_start_7b
    const-string v3, "Backup:BackupManager"

    const-string v4, "RemoteException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_82
    .catchall {:try_start_7b .. :try_end_82} :catchall_4e

    nop

    if-eqz v0, :cond_8f

    aget-object v2, v0, v1

    if-eqz v2, :cond_8f

    :try_start_89
    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8e} :catch_42

    goto :goto_4a

    :cond_8f
    :goto_8f
    return-void

    :goto_90
    if-eqz v0, :cond_a4

    aget-object v3, v0, v1

    if-eqz v3, :cond_a4

    :try_start_96
    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_9b} :catch_9c

    goto :goto_a4

    :catch_9c
    move-exception v1

    const-string v3, "Backup:BackupManager"

    const-string v4, "IOException"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a4
    :goto_a4
    throw v2
.end method

.method public setCustomProgress(III)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v0}, Lmiui/app/backup/IBackupManager;->getCurrentRunningPackage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v1, p1, p2, p3}, Lmiui/app/backup/IBackupManager;->setCustomProgress(III)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_18

    :cond_17
    goto :goto_1c

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1c
    return-void
.end method

.method public setFutureTask(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v0, p1}, Lmiui/app/backup/IBackupManager;->setFutureTask(Ljava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_a
    return-void
.end method

.method public setIsNeedBeKilled(Z)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lmiui/app/backup/IBackupManager;->setIsNeedBeKilled(Ljava/lang/String;Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception v0

    const-string v1, "Backup:BackupManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_14
    return-void
.end method

.method setWorkingError(I)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v0, p1}, Lmiui/app/backup/IBackupManager;->errorOccur(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_a
    return-void
.end method

.method public unregisterRestoreListener(Lmiui/app/backup/IRestoreListener;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mMiuiRestoreManagerService:Lmiui/app/backup/IMiuiRestoreManager;

    invoke-interface {v0, p1}, Lmiui/app/backup/IMiuiRestoreManager;->unregisterRestoreListener(Lmiui/app/backup/IRestoreListener;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "Backup:BackupManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method
