.class public Lmiui/content/res/ThemeRuntimeManager;
.super Ljava/lang/Object;
.source "ThemeRuntimeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;
    }
.end annotation


# static fields
.field public static final BUILTIN_ALARM_PATH:Ljava/lang/String; = "/system/media/audio/alarms/"

.field public static final BUILTIN_LOCKSCREEN_PATH:Ljava/lang/String; = "/system/media/lockscreen/"

.field public static final BUILTIN_NOTIFICATION_PATH:Ljava/lang/String; = "/system/media/audio/notifications/"

.field public static final BUILTIN_RINGTONE_PATH:Ljava/lang/String; = "/system/media/audio/ringtones/"

.field public static final BUILTIN_ROOT_PATH:Ljava/lang/String; = "/system/media/"

.field public static final BUILTIN_WALLPAPER_PATH:Ljava/lang/String; = "/system/media/wallpaper/"

.field public static final DEFAULT_ALARM_FILE_PATH_RES_ID:I

.field public static final DEFAULT_NOTIFICATION_FILE_PATH_RES_ID:I

.field public static final DEFAULT_RINGTONE_FILE_PATH_RES_ID:I

.field public static final DEFAULT_SMS_DELIVERED_SOUND_FILE_PATH_RES_ID:I

.field public static final DEFAULT_SMS_RECEIVED_SOUND_FILE_PATH_RES_ID:I

.field public static final RUNTIME_PATH_BOOT_ANIMATION:Ljava/lang/String;

.field public static final RUNTIME_PATH_LOCKSCREEN:Ljava/lang/String; = "/data/system/theme/lock_wallpaper"

.field public static final RUNTIME_PATH_WALLPAPER:Ljava/lang/String; = "/data/system/theme/wallpaper"

.field public static final RUNTIME_PIC_FOLDER:Ljava/lang/String; = "/data/system/theme/"

.field private static final SAVE_ICON_MAX_SIZE:I = 0x28000

.field private static final TAG:Ljava/lang/String; = "ThemeRuntimeManager"

.field private static final TEMP_ICON_FOLDER:Ljava/lang/String;

.field private static final THEME_PACKAGE_NAME:Ljava/lang/String; = "com.android.thememanager"

.field private static sWhiteList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mJobLocker:[B

.field private mPendingJobs:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSecurityManager:Ljava/lang/Object;

.field private mServiceLocker:[B

.field private mThreadFinished:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_9

    const-string v0, "/data/system/theme/boots/bootanimation.zip"

    goto :goto_b

    :cond_9
    const-string v0, "/data/local/bootanimation.zip"

    :goto_b
    sput-object v0, Lmiui/content/res/ThemeRuntimeManager;->RUNTIME_PATH_BOOT_ANIMATION:Ljava/lang/String;

    sget v0, Lmiui/system/R$string;->def_ringtone:I

    sput v0, Lmiui/content/res/ThemeRuntimeManager;->DEFAULT_RINGTONE_FILE_PATH_RES_ID:I

    sget v0, Lmiui/system/R$string;->def_notification_sound:I

    sput v0, Lmiui/content/res/ThemeRuntimeManager;->DEFAULT_NOTIFICATION_FILE_PATH_RES_ID:I

    sget v0, Lmiui/system/R$string;->def_alarm_alert:I

    sput v0, Lmiui/content/res/ThemeRuntimeManager;->DEFAULT_ALARM_FILE_PATH_RES_ID:I

    sget v0, Lmiui/system/R$string;->def_sms_delivered_sound:I

    sput v0, Lmiui/content/res/ThemeRuntimeManager;->DEFAULT_SMS_DELIVERED_SOUND_FILE_PATH_RES_ID:I

    sget v0, Lmiui/system/R$string;->def_sms_received_sound:I

    sput v0, Lmiui/content/res/ThemeRuntimeManager;->DEFAULT_SMS_RECEIVED_SOUND_FILE_PATH_RES_ID:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/content/res/ThemeResources;->THEME_MAGIC_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "tempIcon/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/content/res/ThemeRuntimeManager;->TEMP_ICON_FOLDER:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/content/res/ThemeRuntimeManager;->sWhiteList:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [B

    iput-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mServiceLocker:[B

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mPendingJobs:Ljava/util/Stack;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mThreadFinished:Z

    new-array v0, v0, [B

    iput-object v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mJobLocker:[B

    iput-object p1, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lmiui/content/res/ThemeRuntimeManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/content/res/ThemeRuntimeManager;->bindService()V

    return-void
.end method

.method static synthetic access$100(Lmiui/content/res/ThemeRuntimeManager;)[B
    .registers 2

    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mJobLocker:[B

    return-object v0
.end method

.method static synthetic access$200(Lmiui/content/res/ThemeRuntimeManager;)Ljava/util/Stack;
    .registers 2

    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mPendingJobs:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/content/res/ThemeRuntimeManager;)[B
    .registers 2

    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mServiceLocker:[B

    return-object v0
.end method

.method static synthetic access$400(Lmiui/content/res/ThemeRuntimeManager;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mSecurityManager:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lmiui/content/res/ThemeRuntimeManager;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/content/res/ThemeRuntimeManager;->saveIconInner(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$600(Lmiui/content/res/ThemeRuntimeManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/content/res/ThemeRuntimeManager;->unbindService()V

    return-void
.end method

.method static synthetic access$702(Lmiui/content/res/ThemeRuntimeManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/content/res/ThemeRuntimeManager;->mThreadFinished:Z

    return p1
.end method

.method private bindService()V
    .registers 4

    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mServiceLocker:[B

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    const-string v2, "security"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mSecurityManager:Ljava/lang/Object;

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_18

    if-nez v1, :cond_17

    const-string v0, "ThemeRuntimeManager"

    const-string v1, "can\'t bind SecurityManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    return-void

    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public static createTempIconFile(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_3
    const-string v3, "android"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    invoke-static {v0}, Lmiui/content/res/ThemeRuntimeManager;->getFileOutputStream(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v1, v3

    :cond_2d
    if-nez v1, :cond_50

    new-instance v3, Ljava/io/File;

    sget-object v4, Lmiui/content/res/ThemeRuntimeManager;->TEMP_ICON_FOLDER:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lmiui/content/res/ThemeRuntimeManager;->TEMP_ICON_FOLDER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    invoke-static {v0}, Lmiui/content/res/ThemeRuntimeManager;->getFileOutputStream(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v1, v3

    :cond_50
    if-nez v1, :cond_5a

    const-string v3, "ThemeRuntimeManager"

    const-string v4, "can\'t get icon cache folder"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_5a
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p2, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_70
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_70} :catch_79
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_70} :catch_74

    if-eqz v3, :cond_73

    move-object v2, v0

    :cond_73
    return-object v2

    :catch_74
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7e

    :catch_79
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    nop

    :goto_7e
    return-object v2
.end method

.method private existIntentService(Landroid/content/Intent;)Z
    .registers 5

    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1
.end method

.method private static getFileOutputStream(Ljava/lang/String;)Ljava/io/FileOutputStream;
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_6
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1b4

    invoke-static {v2, v3}, Lmiui/os/FileUtils;->chmod(Ljava/lang/String;I)Z
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-exception v2

    :goto_17
    return-object v1
.end method

.method private isRestoreIndependentComponents()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method private saveIconInner(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saving icon for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThemeRuntimeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mSecurityManager:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/graphics/Bitmap;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "saveIcon"

    invoke-static {v0, v4, v1, v3}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Lmiui/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mSecurityManager:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v3, p0, Lmiui/content/res/ThemeRuntimeManager;->mSecurityManager:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    invoke-virtual {v0, v1, v3, v2}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_44
    return-void
.end method

.method private unbindService()V
    .registers 3

    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mServiceLocker:[B

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mSecurityManager:Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method


# virtual methods
.method public markGadgetUpdated()V
    .registers 7

    const-string v0, "clock_changed_time_"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "1x2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    iget-object v3, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "2x2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    iget-object v3, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "2x4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    iget-object v3, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "4x4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    iget-object v3, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "3x4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method

.method public restoreDefault()V
    .registers 10

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_34

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v3, v1

    move v4, v2

    :goto_1a
    if-ge v4, v3, :cond_34

    aget-object v5, v1, v4

    sget-object v6, Lmiui/content/res/ThemeRuntimeManager;->sWhiteList:Ljava/util/Set;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_31

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmiui/content/res/ThemeNativeUtils;->remove(Ljava/lang/String;)Z

    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_34
    sget-object v1, Lmiui/content/res/ThemeRuntimeManager;->RUNTIME_PATH_BOOT_ANIMATION:Ljava/lang/String;

    invoke-static {v1}, Lmiui/content/res/ThemeNativeUtils;->remove(Ljava/lang/String;)Z

    new-instance v1, Landroid/content/Intent;

    const-string v3, "miui.intent.action.CLEAR_THEME_RUNTIME_DATA"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.thememanager"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v3, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    const-string v4, "wallpaper"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/WallpaperManager;

    :try_start_54
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->clear()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_5c

    :catch_58
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :goto_5c
    invoke-direct {p0}, Lmiui/content/res/ThemeRuntimeManager;->isRestoreIndependentComponents()Z

    move-result v4

    if-eqz v4, :cond_d7

    iget-object v4, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    sget v7, Lmiui/content/res/ThemeRuntimeManager;->DEFAULT_RINGTONE_FILE_PATH_RES_ID:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v6, v5}, Landroid/media/ExtraRingtoneManager;->saveDefaultSound(Landroid/content/Context;ILandroid/net/Uri;)V

    iget-object v4, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    sget v8, Lmiui/content/res/ThemeRuntimeManager;->DEFAULT_NOTIFICATION_FILE_PATH_RES_ID:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/media/ExtraRingtoneManager;->saveDefaultSound(Landroid/content/Context;ILandroid/net/Uri;)V

    iget-object v4, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x4

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    sget v8, Lmiui/content/res/ThemeRuntimeManager;->DEFAULT_ALARM_FILE_PATH_RES_ID:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/media/ExtraRingtoneManager;->saveDefaultSound(Landroid/content/Context;ILandroid/net/Uri;)V

    iget-object v4, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    const/16 v5, 0x8

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    sget v8, Lmiui/content/res/ThemeRuntimeManager;->DEFAULT_SMS_DELIVERED_SOUND_FILE_PATH_RES_ID:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/media/ExtraRingtoneManager;->saveDefaultSound(Landroid/content/Context;ILandroid/net/Uri;)V

    iget-object v4, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    const/16 v5, 0x10

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    sget v8, Lmiui/content/res/ThemeRuntimeManager;->DEFAULT_SMS_RECEIVED_SOUND_FILE_PATH_RES_ID:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/media/ExtraRingtoneManager;->saveDefaultSound(Landroid/content/Context;ILandroid/net/Uri;)V

    :cond_d7
    const/4 v4, 0x0

    invoke-static {v4}, Lmiui/content/res/IconCustomizer;->clearCustomizedIcons(Ljava/lang/String;)V

    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/content/res/ThemeResourcesSystem;->resetIcons()V

    invoke-virtual {p0}, Lmiui/content/res/ThemeRuntimeManager;->markGadgetUpdated()V

    iget-object v4, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lmiui/drm/DrmManager;->setSupportAd(Landroid/content/Context;Z)V

    const-wide/32 v4, 0x10007899    # 1.3263999E-315

    invoke-static {v4, v5}, Landroid/content/res/MiuiConfiguration;->sendThemeConfigurationChangeMsg(J)V

    return-void
.end method

.method public saveIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 8

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_21

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_1d} :catch_81

    const/4 v3, 0x1

    and-int/2addr v1, v3

    if-eq v1, v3, :cond_22

    :cond_21
    return-void

    :cond_22
    nop

    if-eqz p2, :cond_45

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    const v1, 0x28000

    if-le v0, v1, :cond_45

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveIcon fail because icon bitmap is too large "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThemeRuntimeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_45
    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mJobLocker:[B

    monitor-enter v0

    :try_start_48
    const-string v1, "ThemeRuntimeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add pending job "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mPendingJobs:Ljava/util/Stack;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mJobLocker:[B

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    iget-boolean v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mThreadFinished:Z

    if-eqz v1, :cond_7c

    iput-boolean v2, p0, Lmiui/content/res/ThemeRuntimeManager;->mThreadFinished:Z

    new-instance v1, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;-><init>(Lmiui/content/res/ThemeRuntimeManager;Lmiui/content/res/ThemeRuntimeManager$1;)V

    invoke-virtual {v1}, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->start()V

    :cond_7c
    monitor-exit v0

    return-void

    :catchall_7e
    move-exception v1

    monitor-exit v0
    :try_end_80
    .catchall {:try_start_48 .. :try_end_80} :catchall_7e

    throw v1

    :catch_81
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to find package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ThemeRuntimeManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
