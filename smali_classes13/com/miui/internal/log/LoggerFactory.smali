.class public Lcom/miui/internal/log/LoggerFactory;
.super Ljava/lang/Object;
.source "LoggerFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LoggerFactory"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileLogger()Lcom/miui/internal/log/Logger;
    .registers 3

    invoke-static {}, Lcom/miui/internal/log/util/Config;->getDefaultCacheLogDir()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/miui/internal/log/LoggerFactory;->registerDumpReceiver()V

    sget-object v1, Lcom/miui/internal/log/util/Config;->LOG_NAME:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/internal/log/LoggerFactory;->getFileLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/internal/log/Logger;

    move-result-object v1

    return-object v1

    :cond_10
    const-string v1, "LoggerFactory"

    const-string v2, "Fail to create default logger, log dir is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t create default file logger"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getFileLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/internal/log/Logger;
    .registers 7

    new-instance v0, Lcom/miui/internal/log/Logger;

    invoke-direct {v0, p1}, Lcom/miui/internal/log/Logger;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/miui/internal/log/appender/FileAppender;

    invoke-direct {v1}, Lcom/miui/internal/log/appender/FileAppender;-><init>()V

    new-instance v2, Lcom/miui/internal/log/format/SimpleFormatter;

    invoke-direct {v2}, Lcom/miui/internal/log/format/SimpleFormatter;-><init>()V

    invoke-virtual {v1, v2}, Lcom/miui/internal/log/appender/FileAppender;->setFormatter(Lcom/miui/internal/log/format/Formatter;)V

    new-instance v2, Lcom/miui/internal/log/appender/rolling/FileRolloverStrategy;

    invoke-direct {v2}, Lcom/miui/internal/log/appender/rolling/FileRolloverStrategy;-><init>()V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/miui/internal/log/appender/rolling/FileRolloverStrategy;->setMaxBackupIndex(I)V

    const/high16 v3, 0x100000

    invoke-virtual {v2, v3}, Lcom/miui/internal/log/appender/rolling/FileRolloverStrategy;->setMaxFileSize(I)V

    new-instance v3, Lcom/miui/internal/log/appender/rolling/RollingFileManager;

    invoke-direct {v3, p0, p1}, Lcom/miui/internal/log/appender/rolling/RollingFileManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/miui/internal/log/appender/rolling/RollingFileManager;->setRolloverStrategy(Lcom/miui/internal/log/appender/rolling/RolloverStrategy;)V

    invoke-virtual {v1, v3}, Lcom/miui/internal/log/appender/FileAppender;->setFileManager(Lcom/miui/internal/log/appender/FileManager;)V

    invoke-virtual {v0, v1}, Lcom/miui/internal/log/Logger;->addAppender(Lcom/miui/internal/log/appender/Appender;)V

    sget-boolean v4, Lcom/miui/internal/util/DeviceHelper;->IS_DEBUGGABLE:Z

    if-eqz v4, :cond_38

    sget-object v4, Lcom/miui/internal/log/Level;->VERBOSE:Lcom/miui/internal/log/Level;

    invoke-virtual {v0, v4}, Lcom/miui/internal/log/Logger;->setLevel(Lcom/miui/internal/log/Level;)V

    goto :goto_3d

    :cond_38
    sget-object v4, Lcom/miui/internal/log/Level;->INFO:Lcom/miui/internal/log/Level;

    invoke-virtual {v0, v4}, Lcom/miui/internal/log/Logger;->setLevel(Lcom/miui/internal/log/Level;)V

    :goto_3d
    return-object v0
.end method

.method public static getLogcatLogger()Lcom/miui/internal/log/Logger;
    .registers 2

    new-instance v0, Lcom/miui/internal/log/Logger;

    sget-object v1, Lcom/miui/internal/log/util/Config;->LOG_NAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/miui/internal/log/Logger;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/miui/internal/log/appender/LogcatAppender;

    invoke-direct {v1}, Lcom/miui/internal/log/appender/LogcatAppender;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/internal/log/Logger;->addAppender(Lcom/miui/internal/log/appender/Appender;)V

    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_19

    sget-object v1, Lcom/miui/internal/log/Level;->VERBOSE:Lcom/miui/internal/log/Level;

    invoke-virtual {v0, v1}, Lcom/miui/internal/log/Logger;->setLevel(Lcom/miui/internal/log/Level;)V

    goto :goto_1e

    :cond_19
    sget-object v1, Lcom/miui/internal/log/Level;->INFO:Lcom/miui/internal/log/Level;

    invoke-virtual {v0, v1}, Lcom/miui/internal/log/Logger;->setLevel(Lcom/miui/internal/log/Level;)V

    :goto_1e
    return-object v0
.end method

.method private static registerDumpReceiver()V
    .registers 2

    new-instance v0, Lcom/miui/internal/log/receiver/DynamicDumpReceiver;

    invoke-direct {v0}, Lcom/miui/internal/log/receiver/DynamicDumpReceiver;-><init>()V

    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/log/receiver/DynamicDumpReceiver;->register(Landroid/content/Context;)Z

    return-void
.end method
