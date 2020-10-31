.class public Lcom/miui/internal/log/util/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field private static final DUMP_SUB_DIR:Ljava/lang/String; = "/dump"

.field public static final LOG_NAME:Ljava/lang/String;

.field public static final PACKAGE_NAME:Ljava/lang/String;

.field private static final RELATIVE_LOG_DIR:Ljava/lang/String; = "/debug_log/"

.field private static final SYSTEM_CACHE_DIR:Ljava/lang/String; = "/cache"

.field private static final TAG:Ljava/lang/String; = "Config"


# direct methods
.method static constructor <clinit>()V
    .registers 4

    invoke-static {}, Lcom/miui/internal/log/util/Config;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Lmiui/os/ProcessUtils;->getProcessNameByPid(I)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_1d

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_18

    move-object v0, v1

    goto :goto_1d

    :cond_18
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1d
    :goto_1d
    sput-object v0, Lcom/miui/internal/log/util/Config;->PACKAGE_NAME:Ljava/lang/String;

    sput-object v1, Lcom/miui/internal/log/util/Config;->LOG_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getApplicationCacheLogDir(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/debug_log/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1c
    const-string v1, "Config"

    const-string v2, "Fail to getCacheDir"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public static getDefaultCacheLogDir()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/miui/internal/log/util/Config;->PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/internal/log/util/Config;->getDefaultCacheLogDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultCacheLogDir(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-static {p0}, Lcom/miui/internal/log/util/Config;->getSystemCacheLogDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_b
    invoke-static {v0}, Lcom/miui/internal/log/util/Config;->getApplicationCacheLogDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDefaultSdcardLogDir()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/miui/internal/log/util/Config;->PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/internal/log/util/Config;->getDefaultSdcardLogDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultSdcardLogDir(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageMiuiDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_24

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/debug_log/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/dump"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_24
    const-string v1, "Config"

    const-string v2, "Fail to getExternalStorageMiuiDirectory"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private static getPackageName()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_c
    return-object v1
.end method

.method private static getSystemCacheLogDir(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/cache/debug_log/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_31

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_31

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_31

    const-string v3, "Config"

    const-string v4, "Fail to getSystemCacheLogDir"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return-object v3

    :cond_31
    return-object v0
.end method
