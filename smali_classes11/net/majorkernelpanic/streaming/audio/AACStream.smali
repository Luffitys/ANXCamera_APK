.class public Lnet/majorkernelpanic/streaming/audio/AACStream;
.super Lnet/majorkernelpanic/streaming/audio/AudioStream;
.source ""


# static fields
.field private static final AUDIO_OBJECT_TYPES:[Ljava/lang/String;

.field public static final AUDIO_SAMPLING_RATES:[I

.field public static final TAG:Ljava/lang/String; = "AACStream"


# instance fields
.field private mAudioRecord:Landroid/media/AudioRecord;

.field private mChannel:I

.field private mConfig:I

.field private mProfile:I

.field private mSamplingRateIndex:I

.field private mSessionDescription:Ljava/lang/String;

.field private mSettings:Landroid/content/SharedPreferences;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "NULL"

    const-string v1, "AAC Main"

    const-string v2, "AAC LC (Low Complexity)"

    const-string v3, "AAC SSR (Scalable Sample Rate)"

    const-string v4, "AAC LTP (Long Term Prediction)"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/majorkernelpanic/streaming/audio/AACStream;->AUDIO_OBJECT_TYPES:[Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnet/majorkernelpanic/streaming/audio/AACStream;->AUDIO_SAMPLING_RATES:[I

    return-void

    :array_0
    .array-data 4
        0x17700
        0x15888
        0xfa00
        0xbb80
        0xac44
        0x7d00
        0x5dc0
        0x5622
        0x3e80
        0x2ee0
        0x2b11
        0x1f40
        0x1cb6
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/audio/AudioStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mSessionDescription:Ljava/lang/String;

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mSettings:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mAudioRecord:Landroid/media/AudioRecord;

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mThread:Ljava/lang/Thread;

    invoke-static {}, Lnet/majorkernelpanic/streaming/audio/AACStream;->AACStreamingSupported()Z

    move-result p0

    const-string v0, "AACStream"

    if-eqz p0, :cond_0

    const-string p0, "AAC supported on this phone"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p0, "AAC not supported on this phone"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "AAC not supported by this phone !"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static AACStreamingSupported()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xe

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-class v0, Landroid/media/MediaRecorder$OutputFormat;

    const-string v2, "AAC_ADTS"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    return v1
.end method

.method static synthetic access$000(Lnet/majorkernelpanic/streaming/audio/AACStream;)Landroid/media/MediaCodec;
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaCodec:Landroid/media/MediaCodec;

    return-object p0
.end method

.method static synthetic access$100(Lnet/majorkernelpanic/streaming/audio/AACStream;)Landroid/media/AudioRecord;
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mAudioRecord:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic access$200(Lnet/majorkernelpanic/streaming/audio/AACStream;)Landroid/media/MediaCodec;
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaCodec:Landroid/media/MediaCodec;

    return-object p0
.end method

.method private testADTS()V
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const-string v0, "Temp file could not be erased"

    const-string v1, "AACStream"

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lnet/majorkernelpanic/streaming/audio/AudioStream;->setAudioEncoder(I)V

    const/4 v3, 0x0

    const/4 v4, 0x6

    :try_start_0
    const-class v5, Landroid/media/MediaRecorder$OutputFormat;

    const-string v6, "AAC_ADTS"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {p0, v5}, Lnet/majorkernelpanic/streaming/audio/AudioStream;->setOutputFormat(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0, v4}, Lnet/majorkernelpanic/streaming/audio/AudioStream;->setOutputFormat(I)V

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "libstreaming-aac-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lnet/majorkernelpanic/streaming/audio/AudioStream;->mQuality:Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    iget v6, v6, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->samplingRate:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mSettings:Landroid/content/SharedPreferences;

    const-string v7, ","

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v6, :cond_0

    invoke-interface {v6, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/audio/AudioStream;->mQuality:Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    aget-object v2, v0, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->samplingRate:I

    aget-object v1, v0, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mConfig:I

    aget-object v0, v0, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mChannel:I

    return-void

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/spydroid-test.adts"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v11

    const-string v12, "mounted"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/16 v11, 0x9

    new-array v11, v11, [B

    new-instance v12, Landroid/media/MediaRecorder;

    invoke-direct {v12}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v12, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v13, p0, Lnet/majorkernelpanic/streaming/audio/AudioStream;->mAudioSource:I

    invoke-virtual {v12, v13}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    iget-object v12, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v13, p0, Lnet/majorkernelpanic/streaming/audio/AudioStream;->mOutputFormat:I

    invoke-virtual {v12, v13}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    iget-object v12, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v13, p0, Lnet/majorkernelpanic/streaming/audio/AudioStream;->mAudioEncoder:I

    invoke-virtual {v12, v13}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    iget-object v12, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v12, v10}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    iget-object v12, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v13, p0, Lnet/majorkernelpanic/streaming/audio/AudioStream;->mQuality:Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    iget v13, v13, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->samplingRate:I

    invoke-virtual {v12, v13}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    iget-object v12, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v13, p0, Lnet/majorkernelpanic/streaming/audio/AudioStream;->mQuality:Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    iget v13, v13, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->bitRate:I

    invoke-virtual {v12, v13}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    iget-object v12, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v12, v6}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    iget-object v12, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v13, 0x3e8

    invoke-virtual {v12, v13}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    iget-object v12, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v12}, Landroid/media/MediaRecorder;->prepare()V

    iget-object v12, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v12}, Landroid/media/MediaRecorder;->start()V

    const-wide/16 v12, 0x7d0

    :try_start_1
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iget-object v12, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v12}, Landroid/media/MediaRecorder;->stop()V

    iget-object v12, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v12}, Landroid/media/MediaRecorder;->release()V

    iput-object v3, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_2
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v12, "r"

    invoke-direct {v6, v3, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_1
    :try_start_3
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v12

    const/16 v13, 0xff

    and-int/2addr v12, v13

    if-ne v12, v13, :cond_1

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v12

    aput-byte v12, v11, v9

    aget-byte v12, v11, v9

    const/16 v13, 0xf0

    and-int/2addr v12, v13

    if-ne v12, v13, :cond_1

    const/4 v12, 0x5

    invoke-virtual {v6, v11, v10, v12}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    aget-byte v0, v11, v10

    and-int/lit8 v0, v0, 0x3c

    shr-int/2addr v0, v8

    iput v0, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mSamplingRateIndex:I

    aget-byte v3, v11, v10

    and-int/lit16 v3, v3, 0xc0

    shr-int/2addr v3, v4

    add-int/2addr v3, v10

    iput v3, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mProfile:I

    aget-byte v6, v11, v10

    and-int/2addr v6, v10

    shl-int/2addr v6, v8

    aget-byte v8, v11, v8

    and-int/lit16 v8, v8, 0xc0

    shr-int/lit8 v4, v8, 0x6

    or-int/2addr v4, v6

    iput v4, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mChannel:I

    iget-object v6, p0, Lnet/majorkernelpanic/streaming/audio/AudioStream;->mQuality:Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    sget-object v8, Lnet/majorkernelpanic/streaming/audio/AACStream;->AUDIO_SAMPLING_RATES:[I

    aget v8, v8, v0

    iput v8, v6, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->samplingRate:I

    and-int/lit8 v3, v3, 0x1f

    shl-int/lit8 v3, v3, 0xb

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0x7

    or-int/2addr v0, v3

    and-int/lit8 v3, v4, 0xf

    shl-int/2addr v3, v2

    or-int/2addr v0, v3

    iput v0, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mConfig:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MPEG VERSION: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, v11, v9

    and-int/lit8 v3, v3, 0x8

    shr-int/lit8 v2, v3, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PROTECTION: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, v11, v9

    and-int/2addr v2, v10

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PROFILE: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lnet/majorkernelpanic/streaming/audio/AACStream;->AUDIO_OBJECT_TYPES:[Ljava/lang/String;

    iget v3, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mProfile:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAMPLING FREQUENCY: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/audio/AudioStream;->mQuality:Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    iget v2, v2, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->samplingRate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANNEL: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mChannel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mSettings:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/audio/AudioStream;->mQuality:Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    iget v2, v2, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->samplingRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mConfig:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mChannel:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v5, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    :try_start_5
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_6
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No external storage or external storage not ready !"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public declared-synchronized configure()V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lnet/majorkernelpanic/streaming/MediaStream;->configure()V

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/audio/AudioStream;->mRequestedQuality:Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->copyOf(Lnet/majorkernelpanic/streaming/audio/AudioQuality;)Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    move-result-object v0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/audio/AudioStream;->mQuality:Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lnet/majorkernelpanic/streaming/audio/AACStream;->AUDIO_SAMPLING_RATES:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lnet/majorkernelpanic/streaming/audio/AACStream;->AUDIO_SAMPLING_RATES:[I

    aget v2, v2, v1

    iget-object v3, p0, Lnet/majorkernelpanic/streaming/audio/AudioStream;->mQuality:Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    iget v3, v3, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->samplingRate:I

    if-ne v2, v3, :cond_0

    iput v1, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mSamplingRateIndex:I

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/16 v2, 0xc

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/audio/AudioStream;->mQuality:Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    const/16 v2, 0x3e80

    iput v2, v1, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->samplingRate:I

    :cond_2
    iget-byte v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMode:B

    iget-byte v2, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRequestedMode:B

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    if-nez v1, :cond_5

    :cond_3
    iget-byte v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRequestedMode:B

    iput-byte v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMode:B

    if-ne v1, v3, :cond_4

    new-instance v1, Lnet/majorkernelpanic/streaming/rtp/AACADTSPacketizer;

    invoke-direct {v1}, Lnet/majorkernelpanic/streaming/rtp/AACADTSPacketizer;-><init>()V

    :goto_2
    iput-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    goto :goto_3

    :cond_4
    new-instance v1, Lnet/majorkernelpanic/streaming/rtp/AACLATMPacketizer;

    invoke-direct {v1}, Lnet/majorkernelpanic/streaming/rtp/AACLATMPacketizer;-><init>()V

    goto :goto_2

    :goto_3
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mDestination:Ljava/net/InetAddress;

    iget v4, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtpPort:I

    iget v5, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtcpPort:I

    invoke-virtual {v1, v2, v4, v5}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->setDestination(Ljava/net/InetAddress;II)V

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    invoke-virtual {v1}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->getRtpSocket()Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    move-result-object v1

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mOutputStream:Ljava/io/OutputStream;

    iget-byte v4, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mChannelIdentifier:B

    invoke-virtual {v1, v2, v4}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->setOutputStream(Ljava/io/OutputStream;B)V

    :cond_5
    iget-byte v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMode:B

    if-ne v1, v3, :cond_6

    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/audio/AACStream;->testADTS()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m=audio "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/MediaStream;->getDestinationPorts()[I

    move-result-object v2

    aget v0, v2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " RTP/AVP 96\r\na=rtpmap:96 mpeg4-generic/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/audio/AudioStream;->mQuality:Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    iget v0, v0, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->samplingRate:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\r\na=fmtp:96 streamtype=5; profile-level-id=15; mode=AAC-hbr; config="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mConfig:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; SizeLength=13; IndexLength=3; IndexDeltaLength=3;\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mSessionDescription:Ljava/lang/String;

    goto :goto_5

    :cond_6
    const/4 v1, 0x2

    iput v1, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mProfile:I

    iput v3, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mChannel:I

    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v1, v1, 0xb

    iget v2, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mSamplingRateIndex:I

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v1, v2

    and-int/lit8 v2, v3, 0xf

    shl-int/lit8 v2, v2, 0x3

    or-int/2addr v1, v2

    iput v1, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mConfig:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m=audio "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/MediaStream;->getDestinationPorts()[I

    move-result-object v2

    aget v0, v2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " RTP/AVP 96\r\na=rtpmap:96 mpeg4-generic/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/audio/AudioStream;->mQuality:Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    iget v0, v0, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->samplingRate:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\r\na=fmtp:96 streamtype=5; profile-level-id=15; mode=AAC-hbr; config="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mConfig:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; SizeLength=13; IndexLength=3; IndexDeltaLength=3;\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected encodeWithMediaCodec()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi",
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/audio/AudioStream;->mQuality:Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    iget v0, v0, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->samplingRate:I

    const/16 v1, 0x10

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    mul-int/2addr v0, v2

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    check-cast v1, Lnet/majorkernelpanic/streaming/rtp/AACLATMPacketizer;

    iget-object v3, p0, Lnet/majorkernelpanic/streaming/audio/AudioStream;->mQuality:Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    iget v3, v3, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->samplingRate:I

    invoke-virtual {v1, v3}, Lnet/majorkernelpanic/streaming/rtp/AACLATMPacketizer;->setSamplingRate(I)V

    new-instance v1, Landroid/media/AudioRecord;

    iget-object v3, p0, Lnet/majorkernelpanic/streaming/audio/AudioStream;->mQuality:Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    iget v5, v3, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->samplingRate:I

    const/4 v4, 0x1

    const/16 v6, 0x10

    const/4 v7, 0x2

    move-object v3, v1

    move v8, v0

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v1, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mAudioRecord:Landroid/media/AudioRecord;

    const-string v1, "audio/mp4a-latm"

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    iput-object v3, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaCodec:Landroid/media/MediaCodec;

    new-instance v3, Landroid/media/MediaFormat;

    invoke-direct {v3}, Landroid/media/MediaFormat;-><init>()V

    const-string v4, "mime"

    invoke-virtual {v3, v4, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/audio/AudioStream;->mQuality:Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    iget v1, v1, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->bitRate:I

    const-string v4, "bitrate"

    invoke-virtual {v3, v4, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "channel-count"

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/audio/AudioStream;->mQuality:Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    iget v1, v1, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->samplingRate:I

    const-string v5, "sample-rate"

    invoke-virtual {v3, v5, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "aac-profile"

    invoke-virtual {v3, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "max-input-size"

    invoke-virtual {v3, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2, v2, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    new-instance v1, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-direct {v1, v2}, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;-><init>(Landroid/media/MediaCodec;)V

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Lnet/majorkernelpanic/streaming/audio/AACStream$1;

    invoke-direct {v5, p0, v2, v0}, Lnet/majorkernelpanic/streaming/audio/AACStream$1;-><init>(Lnet/majorkernelpanic/streaming/audio/AACStream;[Ljava/nio/ByteBuffer;I)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    invoke-virtual {v0, v1}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->setInputStream(Ljava/io/InputStream;)V

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->start()V

    iput-boolean v4, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mStreaming:Z

    return-void
.end method

.method protected encodeWithMediaRecorder()V
    .locals 2

    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/audio/AACStream;->testADTS()V

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    check-cast v0, Lnet/majorkernelpanic/streaming/rtp/AACADTSPacketizer;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/audio/AudioStream;->mQuality:Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    iget v1, v1, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->samplingRate:I

    invoke-virtual {v0, v1}, Lnet/majorkernelpanic/streaming/rtp/AACADTSPacketizer;->setSamplingRate(I)V

    invoke-super {p0}, Lnet/majorkernelpanic/streaming/audio/AudioStream;->encodeWithMediaRecorder()V

    return-void
.end method

.method public getSessionDescription()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mSessionDescription:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You need to call configure() first !"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPreferences(Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mSettings:Landroid/content/SharedPreferences;

    return-void
.end method

.method public declared-synchronized start()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mStreaming:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/audio/AACStream;->configure()V

    invoke-super {p0}, Lnet/majorkernelpanic/streaming/MediaStream;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mStreaming:Z

    if-eqz v0, :cond_1

    iget-byte v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMode:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "AACStream"

    const-string v1, "Interrupting threads..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/audio/AACStream;->mAudioRecord:Landroid/media/AudioRecord;

    :cond_0
    invoke-super {p0}, Lnet/majorkernelpanic/streaming/MediaStream;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
