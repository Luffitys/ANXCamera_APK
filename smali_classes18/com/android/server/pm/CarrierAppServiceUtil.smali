.class public Lcom/android/server/pm/CarrierAppServiceUtil;
.super Ljava/lang/Object;
.source "CarrierAppServiceUtil.java"


# static fields
.field private static final APP_CONFIG_FILE:Ljava/lang/String; = "need_install_applist.xml"

.field static final CUST_IMAGE_MOUNT_POINT:Ljava/lang/String; = "/apex/com.miui.opcust/"

.field static final CUST_IMAGE_NAME:Ljava/lang/String; = "com.miui.opcust"

.field static final DATA_APP_DIR:Ljava/lang/String; = "/apex/com.miui.opcust/data-app"

.field private static final PROP_CURRENT_REGION:Ljava/lang/String; = "ro.miui.region"

.field private static final PROP_CURRENT_SUBNETWORK:Ljava/lang/String; = "persist.sys.opcust_spn"

.field private static final REGION_DIR:Ljava/lang/String; = "/apex/com.miui.opcust/regionconfig"

.field static final TELEPHONY_CONFIG_IMAGE_NAME:Ljava/lang/String; = "com.miui.opconfig"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyFile(Ljava/io/File;Ljava/io/File;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sget v3, Landroid/system/OsConstants;->O_RDONLY:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v5
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_34

    :try_start_10
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget v2, Landroid/system/OsConstants;->O_WRONLY:I

    invoke-static {v0, v2, v4}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v6
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_32

    :try_start_1a
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Landroid/os/FileUtils;->copyInternalSendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    invoke-static {v6}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_2f

    invoke-static {v5}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    invoke-static {v6}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    nop

    return-void

    :catchall_2f
    move-exception v0

    move-object v1, v6

    goto :goto_37

    :catchall_32
    move-exception v0

    goto :goto_37

    :catchall_34
    move-exception v2

    move-object v5, v0

    move-object v0, v2

    :goto_37
    invoke-static {v5}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    throw v0
.end method

.method public static copyFileTree(Ljava/io/File;Ljava/io/File;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/system/ErrnoException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1a4

    invoke-static {v0, v1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    invoke-static {p0, p1}, Lcom/android/server/pm/CarrierAppServiceUtil;->copyFile(Ljava/io/File;Ljava/io/File;)V

    return-void

    :cond_16
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1ed

    invoke-static {v0, v1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_32
    if-ltz v1, :cond_47

    aget-object v2, v0, v1

    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/android/server/pm/CarrierAppServiceUtil;->copyFileTree(Ljava/io/File;Ljava/io/File;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_32

    :cond_47
    return-void
.end method

.method public static getAppConfigFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "need_install_applist.xml"

    const-string v2, "/apex/com.miui.opcust/regionconfig"

    if-eqz v0, :cond_15

    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_15
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3a

    return-object v0

    :cond_3a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No config for subnetwork "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", fallback to default config"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CarrierApp"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v3
.end method

.method public static getCurrentRegion()Ljava/lang/String;
    .registers 2

    const-string v0, "ro.miui.region"

    const-string v1, "cn"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentSubNetwork()Ljava/lang/String;
    .registers 2

    const-string v0, "persist.sys.opcust_spn"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPermissionsDir()Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    const-string v1, "/apex/com.miui.opcust/regionconfig"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {}, Lcom/android/server/pm/CarrierAppServiceUtil;->getCurrentRegion()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "permissions"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getSysConfigDir()Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    const-string v1, "/apex/com.miui.opcust/regionconfig"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {}, Lcom/android/server/pm/CarrierAppServiceUtil;->getCurrentRegion()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "sysconfig"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static isCustImageEmpty()Z
    .registers 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/apex/com.miui.opcust/regionconfig"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isCustImageMounted()Z
    .registers 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/apex/com.miui.opcust/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method
