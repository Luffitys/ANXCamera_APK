.class public Lcom/xiaomi/asr/engine/record/XSpeedStreamingFileRecorderSource;
.super Lcom/xiaomi/asr/engine/record/AudioSource;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "XSpeedStreamingFileRecorderSource"


# instance fields
.field private _fileName:Ljava/lang/String;

.field private final a:Lcom/xiaomi/asr/engine/record/AudioType;

.field private mInputStream:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/asr/engine/record/AudioType;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/asr/engine/record/AudioSource;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/asr/engine/record/XSpeedStreamingFileRecorderSource;->mInputStream:Ljava/io/InputStream;

    iput-object p1, p0, Lcom/xiaomi/asr/engine/record/XSpeedStreamingFileRecorderSource;->a:Lcom/xiaomi/asr/engine/record/AudioType;

    iput-object p2, p0, Lcom/xiaomi/asr/engine/record/XSpeedStreamingFileRecorderSource;->_fileName:Ljava/lang/String;

    return-void
.end method

.method private initData()V
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/asr/engine/record/XSpeedStreamingFileRecorderSource;->mInputStream:Ljava/io/InputStream;

    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/xiaomi/asr/engine/record/XSpeedStreamingFileRecorderSource;->_fileName:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/xiaomi/asr/engine/record/XSpeedStreamingFileRecorderSource;->mInputStream:Ljava/io/InputStream;

    sget-object v2, Lcom/xiaomi/asr/engine/record/XSpeedStreamingFileRecorderSource;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaomi/asr/engine/record/XSpeedStreamingFileRecorderSource;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iput-object v1, p0, Lcom/xiaomi/asr/engine/record/XSpeedStreamingFileRecorderSource;->mInputStream:Ljava/io/InputStream;

    sget-object p0, Lcom/xiaomi/asr/engine/record/XSpeedStreamingFileRecorderSource;->TAG:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static slientSleep(J)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/asr/engine/record/XSpeedStreamingFileRecorderSource;->initData()V

    return-void
.end method

.method public read([BII)I
    .locals 1

    iget-object p0, p0, Lcom/xiaomi/asr/engine/record/XSpeedStreamingFileRecorderSource;->mInputStream:Ljava/io/InputStream;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/xiaomi/asr/engine/record/XSpeedStreamingFileRecorderSource;->TAG:Ljava/lang/String;

    const-string p2, ""

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public release()V
    .locals 2

    iget-object p0, p0, Lcom/xiaomi/asr/engine/record/XSpeedStreamingFileRecorderSource;->mInputStream:Ljava/io/InputStream;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/xiaomi/asr/engine/record/XSpeedStreamingFileRecorderSource;->TAG:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public startRecording()V
    .locals 0

    return-void
.end method
