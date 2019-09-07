.class public Le/a/a/b;
.super Ljava/lang/Object;
.source "BufferedAudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/b$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BufferedAudioRecorder"

.field protected static channelConfigOffset:I = 0x0

.field protected static channelConfigSuggested:[I = null

.field protected static sampleRateOffset:I = -0x1

.field protected static sampleRateSuggested:[I


# instance fields
.field Bq:Lcom/ss/android/medialib/audio/AudioDataProcessThread;

.field Cq:Le/a/a/a;

.field Dq:Z

.field Eq:I

.field audio:Landroid/media/AudioRecord;

.field audioFormat:I

.field bufferSizeInBytes:I

.field channelConfig:I

.field isRecording:Z

.field sampleRateInHz:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Le/a/a/b;->sampleRateSuggested:[I

    const/4 v0, -0x1

    sput v0, Le/a/a/b;->channelConfigOffset:I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Le/a/a/b;->channelConfigSuggested:[I

    return-void

    :array_0
    .array-data 4
        0xac44
        0x1f40
        0x2b11
        0x3e80
        0x5622
    .end array-data

    :array_1
    .array-data 4
        0xc
        0x10
        0x1
    .end array-data
.end method

.method public constructor <init>(Le/a/a/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Le/a/a/b;->sampleRateInHz:I

    const/4 v1, 0x0

    iput v1, p0, Le/a/a/b;->bufferSizeInBytes:I

    iput v0, p0, Le/a/a/b;->channelConfig:I

    const/4 v0, 0x2

    iput v0, p0, Le/a/a/b;->audioFormat:I

    iput-boolean v1, p0, Le/a/a/b;->isRecording:Z

    iput-boolean v1, p0, Le/a/a/b;->Dq:Z

    const/4 v0, 0x1

    iput v0, p0, Le/a/a/b;->Eq:I

    iput-object p1, p0, Le/a/a/b;->Cq:Le/a/a/a;

    return-void
.end method


# virtual methods
.method public J(I)I
    .locals 0

    const/16 p0, 0x10

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method public Nj()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Le/a/a/b;->Dq:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(DZ)V
    .locals 2

    const-string v0, "BufferedAudioRecorder"

    const-string v1, "startRecording() called"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Le/a/a/b;->isRecording:Z

    if-eqz v0, :cond_1

    const-string v0, "BufferedAudioRecorder"

    const-string v1, "recorder is started"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Le/a/a/b;->a(D)Z

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    iget-object v0, p0, Le/a/a/b;->audio:Landroid/media/AudioRecord;

    if-nez v0, :cond_2

    iget v0, p0, Le/a/a/b;->Eq:I

    invoke-virtual {p0, v0}, Le/a/a/b;->init(I)V

    iget-object v0, p0, Le/a/a/b;->audio:Landroid/media/AudioRecord;

    if-nez v0, :cond_2

    const-string p1, "BufferedAudioRecorder"

    const-string p2, "recorder is null"

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Le/a/a/b;->isRecording:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Le/a/a/b$a;

    invoke-direct {v1, p0, p1, p2, p3}, Le/a/a/b$a;-><init>(Le/a/a/b;DZ)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    const-wide/16 v0, 0x64

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Le/a/a/b$a;

    invoke-direct {v1, p0, p1, p2, p3}, Le/a/a/b$a;-><init>(Le/a/a/b;DZ)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public a(D)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startFeeding() called with: speed = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BufferedAudioRecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Le/a/a/b;->isRecording:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Le/a/a/b;->Bq:Lcom/ss/android/medialib/audio/AudioDataProcessThread;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->isProcessing()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const-string p0, "startFeeding \u5931\u8d25\uff0c\u5df2\u7ecf\u8c03\u7528\u8fc7\u4e00\u6b21\u4e86"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    iput-boolean v3, p0, Le/a/a/b;->Dq:Z

    iget-object v0, p0, Le/a/a/b;->Bq:Lcom/ss/android/medialib/audio/AudioDataProcessThread;

    iget p0, p0, Le/a/a/b;->sampleRateInHz:I

    invoke-virtual {v0, p0, p1, p2}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->startFeeding(ID)V

    return v2

    :cond_2
    :goto_0
    const-string v0, "startFeeding \u5f55\u97f3\u672a\u542f\u52a8\uff0c\u5c06\u5148\u542f\u52a8startRecording"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, v2}, Le/a/a/b;->a(DZ)V

    return v2
.end method

.method public discard()V
    .locals 0

    iget-object p0, p0, Le/a/a/b;->Bq:Lcom/ss/android/medialib/audio/AudioDataProcessThread;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->discard()V

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Le/a/a/b;->audio:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/a/b;->audio:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    :cond_0
    iget-object v0, p0, Le/a/a/b;->audio:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Le/a/a/b;->audio:Landroid/media/AudioRecord;

    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public init(I)V
    .locals 20

    move-object/from16 v1, p0

    const-string v2, " "

    move/from16 v9, p1

    iput v9, v1, Le/a/a/b;->Eq:I

    iget-object v0, v1, Le/a/a/b;->audio:Landroid/media/AudioRecord;

    const-string v10, "BufferedAudioRecorder"

    if-eqz v0, :cond_0

    const-string v0, "second time audio init(), skip"

    invoke-static {v10, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v11, -0x1

    :try_start_0
    sget v0, Le/a/a/b;->channelConfigOffset:I

    if-eq v0, v11, :cond_1

    sget v0, Le/a/a/b;->sampleRateOffset:I

    if-eq v0, v11, :cond_1

    sget-object v0, Le/a/a/b;->channelConfigSuggested:[I

    sget v3, Le/a/a/b;->channelConfigOffset:I

    aget v0, v0, v3

    iput v0, v1, Le/a/a/b;->channelConfig:I

    sget-object v0, Le/a/a/b;->sampleRateSuggested:[I

    sget v3, Le/a/a/b;->sampleRateOffset:I

    aget v0, v0, v3

    iput v0, v1, Le/a/a/b;->sampleRateInHz:I

    iget v0, v1, Le/a/a/b;->sampleRateInHz:I

    iget v3, v1, Le/a/a/b;->channelConfig:I

    iget v4, v1, Le/a/a/b;->audioFormat:I

    invoke-static {v0, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, v1, Le/a/a/b;->bufferSizeInBytes:I

    new-instance v0, Landroid/media/AudioRecord;

    iget v5, v1, Le/a/a/b;->sampleRateInHz:I

    iget v6, v1, Le/a/a/b;->channelConfig:I

    iget v7, v1, Le/a/a/b;->audioFormat:I

    iget v8, v1, Le/a/a/b;->bufferSizeInBytes:I

    move-object v3, v0

    move/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, v1, Le/a/a/b;->audio:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4f7f\u7528\u9884\u8bbe\u914d\u7f6e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Le/a/a/b;->channelConfigOffset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Le/a/a/b;->sampleRateOffset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u5b9e\u4f8b\u5316audio recorder\u5931\u8d25\uff0c\u91cd\u65b0\u6d4b\u8bd5\u914d\u7f6e\u3002"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Le/a/a/b;->Cq:Le/a/a/a;

    invoke-interface {v0}, Le/a/a/a;->lackPermission()V

    :cond_1
    :goto_0
    iget-object v0, v1, Le/a/a/b;->audio:Landroid/media/AudioRecord;

    const/4 v12, 0x1

    if-nez v0, :cond_5

    sput v11, Le/a/a/b;->channelConfigOffset:I

    sget-object v13, Le/a/a/b;->channelConfigSuggested:[I

    array-length v14, v13

    const/4 v8, 0x0

    const/16 v16, 0x0

    :goto_1
    if-ge v8, v14, :cond_5

    aget v0, v13, v8

    iput v0, v1, Le/a/a/b;->channelConfig:I

    sget v0, Le/a/a/b;->channelConfigOffset:I

    add-int/2addr v0, v12

    sput v0, Le/a/a/b;->channelConfigOffset:I

    sput v11, Le/a/a/b;->sampleRateOffset:I

    sget-object v7, Le/a/a/b;->sampleRateSuggested:[I

    array-length v6, v7

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_3

    aget v4, v7, v5

    sget v0, Le/a/a/b;->sampleRateOffset:I

    add-int/2addr v0, v12

    sput v0, Le/a/a/b;->sampleRateOffset:I

    :try_start_1
    iget v0, v1, Le/a/a/b;->channelConfig:I

    iget v3, v1, Le/a/a/b;->audioFormat:I

    invoke-static {v4, v0, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, v1, Le/a/a/b;->bufferSizeInBytes:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bd5\u7528hz "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Le/a/a/b;->channelConfig:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Le/a/a/b;->audioFormat:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, v1, Le/a/a/b;->bufferSizeInBytes:I

    if-lez v0, :cond_2

    iput v4, v1, Le/a/a/b;->sampleRateInHz:I

    new-instance v0, Landroid/media/AudioRecord;

    iget v3, v1, Le/a/a/b;->sampleRateInHz:I

    iget v11, v1, Le/a/a/b;->channelConfig:I

    iget v15, v1, Le/a/a/b;->audioFormat:I

    iget v12, v1, Le/a/a/b;->bufferSizeInBytes:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move/from16 v17, v3

    move-object v3, v0

    move-object/from16 v18, v2

    move v2, v4

    move/from16 v4, p1

    move/from16 v19, v5

    move/from16 v5, v17

    move/from16 v17, v6

    move v6, v11

    move-object v11, v7

    move v7, v15

    move v15, v8

    move v8, v12

    :try_start_2
    invoke-direct/range {v3 .. v8}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, v1, Le/a/a/b;->audio:Landroid/media/AudioRecord;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v16, 0x1

    goto/16 :goto_5

    :cond_2
    move-object/from16 v18, v2

    move v2, v4

    move/from16 v19, v5

    move/from16 v17, v6

    move-object v11, v7

    move v15, v8

    sget v0, Le/a/a/b;->sampleRateOffset:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    sput v0, Le/a/a/b;->sampleRateOffset:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v2, 0x1

    const/4 v3, 0x0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v18, v2

    move v2, v4

    move/from16 v19, v5

    move/from16 v17, v6

    move-object v11, v7

    move v15, v8

    :goto_3
    const/4 v3, 0x0

    iput v3, v1, Le/a/a/b;->sampleRateInHz:I

    const/4 v4, 0x0

    iput-object v4, v1, Le/a/a/b;->audio:Landroid/media/AudioRecord;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apply audio record sample rate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " failed: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Le/a/a/b;->sampleRateOffset:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    sput v0, Le/a/a/b;->sampleRateOffset:I

    :goto_4
    add-int/lit8 v5, v19, 0x1

    move v12, v2

    move-object v7, v11

    move v8, v15

    move/from16 v6, v17

    move-object/from16 v2, v18

    const/4 v11, -0x1

    goto/16 :goto_2

    :cond_3
    move-object/from16 v18, v2

    move v15, v8

    move v2, v12

    const/4 v3, 0x0

    :goto_5
    if-eqz v16, :cond_4

    goto :goto_6

    :cond_4
    add-int/lit8 v8, v15, 0x1

    move v12, v2

    move-object/from16 v2, v18

    const/4 v11, -0x1

    goto/16 :goto_1

    :cond_5
    move v2, v12

    :goto_6
    iget v0, v1, Le/a/a/b;->sampleRateInHz:I

    if-gtz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!Init audio recorder failed, hz "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Le/a/a/b;->sampleRateInHz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    iget v0, v1, Le/a/a/b;->channelConfig:I

    const/16 v3, 0x10

    if-ne v0, v3, :cond_7

    goto :goto_7

    :cond_7
    const/4 v12, 0x2

    move v2, v12

    :goto_7
    iget-object v0, v1, Le/a/a/b;->Cq:Le/a/a/a;

    iget v3, v1, Le/a/a/b;->sampleRateInHz:I

    invoke-interface {v0, v3, v2}, Le/a/a/a;->initAudioConfig(II)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init audio recorder succeed, apply audio record sample rate "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Le/a/a/b;->sampleRateInHz:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " buffer "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Le/a/a/b;->bufferSizeInBytes:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " state "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Le/a/a/b;->audio:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized isProcessing()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Le/a/a/b;->Bq:Lcom/ss/android/medialib/audio/AudioDataProcessThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/a/b;->Bq:Lcom/ss/android/medialib/audio/AudioDataProcessThread;

    invoke-virtual {v0}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->isProcessing()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopFeeding()Z
    .locals 4

    const-string v0, "BufferedAudioRecorder"

    const-string v1, "stopFeeding() called"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Le/a/a/b;->isRecording:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Le/a/a/b;->audio:Landroid/media/AudioRecord;

    if-nez v1, :cond_1

    const-string v1, "stopFeeding: \u72b6\u6001\u5f02\u5e38\uff0c\u91cd\u7f6e\u72b6\u6001"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Le/a/a/b;->isRecording:Z

    iput-boolean v2, p0, Le/a/a/b;->Dq:Z

    iget-object p0, p0, Le/a/a/b;->Bq:Lcom/ss/android/medialib/audio/AudioDataProcessThread;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->stop()V

    :cond_0
    return v3

    :cond_1
    iget-boolean v1, p0, Le/a/a/b;->isRecording:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Le/a/a/b;->Bq:Lcom/ss/android/medialib/audio/AudioDataProcessThread;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->isProcessing()Z

    move-result v1

    if-nez v1, :cond_3

    const-string p0, "stopFeeding \u5931\u8d25\uff0c\u8bf7\u5148startFeeding\u518dstopFeeding"

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_3
    iget-object p0, p0, Le/a/a/b;->Bq:Lcom/ss/android/medialib/audio/AudioDataProcessThread;

    invoke-virtual {p0}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->stopFeeding()V

    return v2

    :cond_4
    :goto_0
    const-string p0, "stopFeeding \u5931\u8d25\uff0c\u8bf7\u5148\u8c03\u7528startRecording"

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public stopRecording()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "BufferedAudioRecorder"

    const-string v1, "stopRecording() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Le/a/a/b;->isRecording:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    iput-boolean v1, p0, Le/a/a/b;->isRecording:Z

    iget-object v0, p0, Le/a/a/b;->audio:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/a/b;->audio:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Le/a/a/b;->audio:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    goto :goto_0

    :cond_1
    const-string v0, "BufferedAudioRecorder"

    const-string v1, "\u672a\u542f\u52a8\u97f3\u9891\u6a21\u5757\u4f46\u8c03\u7528stopRecording"

    invoke-static {v0, v1}, Lcom/ss/android/medialib/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Le/a/a/b;->Bq:Lcom/ss/android/medialib/audio/AudioDataProcessThread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Le/a/a/b;->Bq:Lcom/ss/android/medialib/audio/AudioDataProcessThread;

    invoke-virtual {v0}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->stop()V

    :cond_3
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unInit()V
    .locals 1

    iget-boolean v0, p0, Le/a/a/b;->isRecording:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/a/a/b;->stopRecording()Z

    :cond_0
    iget-object v0, p0, Le/a/a/b;->audio:Landroid/media/AudioRecord;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/a/b;->audio:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    :cond_1
    iget-object v0, p0, Le/a/a/b;->audio:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Le/a/a/b;->audio:Landroid/media/AudioRecord;

    :cond_2
    const-string p0, "BufferedAudioRecorder"

    const-string v0, "unInit()"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public waitUtilAudioProcessDone()V
    .locals 0

    iget-object p0, p0, Le/a/a/b;->Bq:Lcom/ss/android/medialib/audio/AudioDataProcessThread;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->waitUtilAudioProcessDone()V

    :cond_0
    return-void
.end method
