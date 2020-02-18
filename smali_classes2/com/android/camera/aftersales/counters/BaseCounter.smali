.class public abstract Lcom/android/camera/aftersales/counters/BaseCounter;
.super Ljava/lang/Object;
.source "BaseCounter.java"

# interfaces
.implements Lcom/android/camera/aftersales/interfaces/ICounter;


# static fields
.field public static final CAMERA_ID_UNKNOWN:I = -0x1

.field public static final COUNTER_ID_ALL:I = 0x0

.field public static final COUNTER_ID_ANR:I = 0x2

.field public static final COUNTER_ID_BLACK:I = 0x8

.field public static final COUNTER_ID_CAMERA_ERROR:I = 0x4

.field public static final COUNTER_ID_CRASH:I = 0x1

.field public static final COUNTER_ID_GAUSSIAN:I = 0x3

.field public static final COUNTER_ID_LOEW_FRAME:I = 0x9

.field public static final COUNTER_ID_POPUP_FAILED:I = 0x6

.field public static final COUNTER_ID_RECORD_FAIL:I = 0x7

.field public static final COUNTER_ID_SESSION_ERROR:I = 0x5

.field public static final COUNTER_ID_TAKEDOWN_FAILED:I = 0xa

.field public static final PREVIEW_GAUSSIAN_TIME_OUT:J = 0xbb8L

.field public static final ROM_VERSION:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "BaseCounter"


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private mId:I

.field private mStrategy:Lcom/android/camera/aftersales/interfaces/ITrimStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ro.miui.ui.version.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ro.build.version.incremental"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/aftersales/counters/BaseCounter;->ROM_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/android/camera/aftersales/interfaces/ITrimStrategy;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera/aftersales/counters/BaseCounter;->mId:I

    iput-object p2, p0, Lcom/android/camera/aftersales/counters/BaseCounter;->mStrategy:Lcom/android/camera/aftersales/interfaces/ITrimStrategy;

    iput-object p3, p0, Lcom/android/camera/aftersales/counters/BaseCounter;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method private appendNewLine(JII)V
    .locals 5

    const-string v0, ","

    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/android/camera/aftersales/counters/BaseCounter;->mFilePath:Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/camera/aftersales/counters/BaseCounter;->ROM_VERSION:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/android/camera/Util;->toHumanString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v3, p0

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v3, p0

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v1, p0

    move-object v3, v1

    goto :goto_0

    :catch_2
    move-exception p1

    move-object v1, p0

    move-object v3, v1

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object v1, p0

    move-object v2, v1

    move-object v3, v2

    :goto_0
    move-object p0, p1

    goto :goto_4

    :catch_3
    move-exception p1

    move-object v1, p0

    move-object v2, v1

    move-object v3, v2

    :goto_1
    move-object p0, p1

    :goto_2
    :try_start_4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_3
    invoke-static {v3}, Lcom/android/camera/module/impl/component/FileUtils;->close(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/android/camera/module/impl/component/FileUtils;->close(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/android/camera/module/impl/component/FileUtils;->close(Ljava/io/Closeable;)V

    return-void

    :catchall_3
    move-exception p0

    :goto_4
    invoke-static {v3}, Lcom/android/camera/module/impl/component/FileUtils;->close(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/android/camera/module/impl/component/FileUtils;->close(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/android/camera/module/impl/component/FileUtils;->close(Ljava/io/Closeable;)V

    throw p0
.end method


# virtual methods
.method public final clean()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/aftersales/counters/BaseCounter;->mFilePath:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method

.method public count(JII)V
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/aftersales/counters/BaseCounter;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/aftersales/counters/BaseCounter;->appendNewLine(JII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/camera/aftersales/counters/BaseCounter;->TAG:Ljava/lang/String;

    const-string p2, "count fail"

    invoke-static {p1, p2, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/aftersales/counters/BaseCounter;->mStrategy:Lcom/android/camera/aftersales/interfaces/ITrimStrategy;

    invoke-interface {v0}, Lcom/android/camera/aftersales/interfaces/ITrimStrategy;->exceedLimit()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/aftersales/counters/BaseCounter;->mStrategy:Lcom/android/camera/aftersales/interfaces/ITrimStrategy;

    invoke-interface {v0}, Lcom/android/camera/aftersales/interfaces/ITrimStrategy;->doTrim()V

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/aftersales/counters/BaseCounter;->appendNewLine(JII)V

    :goto_0
    return-void
.end method

.method public exceedLimit()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/aftersales/counters/BaseCounter;->mStrategy:Lcom/android/camera/aftersales/interfaces/ITrimStrategy;

    invoke-interface {p0}, Lcom/android/camera/aftersales/interfaces/ITrimStrategy;->exceedLimit()Z

    move-result p0

    return p0
.end method

.method public trim()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/aftersales/counters/BaseCounter;->mStrategy:Lcom/android/camera/aftersales/interfaces/ITrimStrategy;

    invoke-interface {p0}, Lcom/android/camera/aftersales/interfaces/ITrimStrategy;->doTrim()V

    return-void
.end method
