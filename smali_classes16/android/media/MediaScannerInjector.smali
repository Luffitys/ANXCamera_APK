.class public Landroid/media/MediaScannerInjector;
.super Ljava/lang/Object;
.source "MediaScannerInjector.java"


# static fields
.field private static final DEBUG_LOG_PATH:Ljava/lang/String;

.field private static final MEDIA_META_APPROXIMATION:I = 0x400000

.field private static final MSG_PROCESSFILE_TIMEOUT:I = 0x1

.field private static final NOMEDIA_PATH_WHITE_LIST:[Ljava/lang/String;

.field private static final PROCESSFILE_TIMEOUT:I = 0xea60

.field private static final SECURITY_CENTER:Ljava/lang/String; = "com.miui.securitycenter"

.field private static final TAG:Ljava/lang/String; = "MediaScannerInjector"

.field private static mNoMediaWhiteList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sContext:Landroid/content/Context;

.field private static sHandler:Landroid/os/Handler;

.field private static sHandlerThread:Landroid/os/HandlerThread;

.field private static sProcessName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageMiuiDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/debug_log/common/android.process.media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MediaScannerInjector;->DEBUG_LOG_PATH:Ljava/lang/String;

    const-string v1, ""

    const-string v2, "/Alarms"

    const-string v3, "/DCIM"

    const-string v4, "/DCIM/Camera"

    const-string v5, "/DCIM/Screenshots"

    const-string v6, "/Download"

    const-string v7, "/Movies"

    const-string v8, "/Music"

    const-string v9, "/Pictures"

    const-string v10, "/Podcasts"

    const-string v11, "/Ringtones"

    const-string v12, "/Notifications"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MediaScannerInjector;->NOMEDIA_PATH_WHITE_LIST:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/MediaScannerInjector;->mNoMediaWhiteList:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Landroid/os/Handler;)Landroid/os/Handler;
    .registers 1

    sput-object p0, Landroid/media/MediaScannerInjector;->sHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/media/MediaScannerInjector;->sProcessName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Landroid/content/Context;
    .registers 1

    sget-object v0, Landroid/media/MediaScannerInjector;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method private static copyFile(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12

    const-string v0, "IOException"

    const-string v1, "MediaScannerInjector"

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_6
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    const/16 v4, 0xaa

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    const/4 v4, 0x0

    const/16 v5, 0x1000

    new-array v5, v5, [B

    :goto_1c
    invoke-virtual {v2, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    move v7, v6

    if-lez v6, :cond_32

    add-int/2addr v4, v7

    const/4 v6, 0x0

    if-lt v4, p2, :cond_2e

    sub-int v8, v4, p2

    sub-int/2addr v7, v8

    invoke-virtual {v3, v5, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_32

    :cond_2e
    invoke-virtual {v3, v5, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_31} :catch_42
    .catchall {:try_start_6 .. :try_end_31} :catchall_40

    goto :goto_1c

    :cond_32
    :goto_32
    nop

    :try_start_33
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    nop

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3a} :catch_3b

    :cond_3a
    :goto_3a
    goto :goto_53

    :catch_3b
    move-exception v4

    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_53

    :catchall_40
    move-exception v4

    goto :goto_54

    :catch_42
    move-exception v4

    :try_start_43
    const-string v5, "IOException "

    invoke-static {v1, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_40

    if-eqz v2, :cond_4d

    :try_start_4a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_4d
    if-eqz v3, :cond_3a

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_52} :catch_3b

    goto :goto_3a

    :goto_53
    return-void

    :goto_54
    if-eqz v2, :cond_5c

    :try_start_56
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_5c

    :catch_5a
    move-exception v5

    goto :goto_62

    :cond_5c
    :goto_5c
    if-eqz v3, :cond_66

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_61} :catch_5a

    goto :goto_66

    :goto_62
    invoke-static {v1, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_67

    :cond_66
    :goto_66
    nop

    :goto_67
    throw v4
.end method

.method public static forceRescanExternal(Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    return-void
.end method

.method public static getNoMediaWhiteList()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/media/MediaScannerInjector;->mNoMediaWhiteList:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Landroid/media/MediaScannerInjector;->loadNoMediaWhiteListLocked()V

    sget-object v1, Landroid/media/MediaScannerInjector;->mNoMediaWhiteList:Ljava/util/HashSet;

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private static initDebugDirectory()V
    .registers 3

    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/media/MediaScannerInjector;->DEBUG_LOG_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_38

    const/4 v1, -0x1

    invoke-static {v0, v1, v1, v1}, Lmiui/os/FileUtils;->mkdirs(Ljava/io/File;III)Z

    move-result v1

    if-nez v1, :cond_33

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mkdir "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/media/MediaScannerInjector;->DEBUG_LOG_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaScannerInjector"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_33
    sget-object v1, Landroid/media/MediaScannerInjector;->DEBUG_LOG_PATH:Ljava/lang/String;

    invoke-static {v1}, Lmiui/os/FileUtils;->addNoMedia(Ljava/lang/String;)Z

    :cond_38
    return-void
.end method

.method public static declared-synchronized initMediaFileCapture(Ljava/lang/String;)V
    .registers 4

    const-class v0, Landroid/media/MediaScannerInjector;

    monitor-enter v0

    :try_start_3
    sput-object p0, Landroid/media/MediaScannerInjector;->sProcessName:Ljava/lang/String;

    sget-object v1, Landroid/media/MediaScannerInjector;->sHandlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_19

    sget-object v1, Landroid/media/MediaScannerInjector;->sHandler:Landroid/os/Handler;

    if-nez v1, :cond_19

    new-instance v1, Landroid/media/MediaScannerInjector$1;

    const-string v2, "MediaScannerInjector"

    invoke-direct {v1, v2}, Landroid/media/MediaScannerInjector$1;-><init>(Ljava/lang/String;)V

    sput-object v1, Landroid/media/MediaScannerInjector;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isInNoMediaWhiteList(Ljava/lang/String;)Z
    .registers 5

    sget-object v0, Landroid/media/MediaScannerInjector;->mNoMediaWhiteList:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Landroid/media/MediaScannerInjector;->loadNoMediaWhiteListLocked()V

    const-string v1, "MediaScannerInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInNoMediaWhiteList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/media/MediaScannerInjector;->mNoMediaWhiteList:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method static keepMimeType(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_f

    const-string v2, "audio"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_f

    :cond_d
    move v2, v0

    goto :goto_10

    :cond_f
    :goto_f
    move v2, v1

    :goto_10
    const-string/jumbo v3, "video/mp2p"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    if-eqz v2, :cond_1c

    return v1

    :cond_1c
    const-string/jumbo v3, "video/x-matroska"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    if-eqz v2, :cond_28

    return v1

    :cond_28
    const-string/jumbo v3, "video/x-pn-realvideo"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    if-eqz p1, :cond_3b

    const-string v3, "application/octet-stream"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    :cond_3b
    return v1

    :cond_3c
    return v0
.end method

.method private static loadNoMediaWhiteListLocked()V
    .registers 8

    sget-object v0, Landroid/media/MediaScannerInjector;->mNoMediaWhiteList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_9

    return-void

    :cond_9
    invoke-static {}, Lmiui/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/media/MediaScannerInjector;->NOMEDIA_PATH_WHITE_LIST:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v2, :cond_4c

    aget-object v4, v1, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "to white list"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MediaScannerInjector"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Landroid/media/MediaScannerInjector;->mNoMediaWhiteList:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_4c
    return-void
.end method

.method public static processFileBegin(Ljava/lang/String;Landroid/content/Context;)V
    .registers 6

    sget-object v0, Landroid/media/MediaScannerInjector;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Landroid/media/MediaScannerInjector;->sHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_11
    sput-object p1, Landroid/media/MediaScannerInjector;->sContext:Landroid/content/Context;

    return-void
.end method

.method public static processFileEnd()V
    .registers 2

    sget-object v0, Landroid/media/MediaScannerInjector;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_8
    const/4 v0, 0x0

    sput-object v0, Landroid/media/MediaScannerInjector;->sContext:Landroid/content/Context;

    return-void
.end method
