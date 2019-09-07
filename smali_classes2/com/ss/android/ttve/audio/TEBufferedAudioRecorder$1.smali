.class Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder$1;
.super Ljava/lang/Object;
.source "TEBufferedAudioRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->startRecording(Ljava/lang/String;DII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;


# direct methods
.method constructor <init>(Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder$1;->this$0:Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "TEBufferedAudioRecorder"

    iget-object v1, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder$1;->this$0:Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;

    iget v2, v1, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->bufferSizeInBytes:I

    new-array v2, v2, [B

    :try_start_0
    iget-object v3, v1, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    if-eqz v3, :cond_4

    iget-object v1, v1, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    move v3, v1

    :catch_0
    :goto_0
    iget-object v4, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder$1;->this$0:Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;

    iget-boolean v5, v4, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->isRecording:Z

    if-eqz v5, :cond_4

    iget-object v5, v4, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    if-eqz v5, :cond_0

    iget v3, v4, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->bufferSizeInBytes:I

    invoke-virtual {v5, v2, v1, v3}, Landroid/media/AudioRecord;->read([BII)I

    move-result v3

    :cond_0
    const/4 v4, -0x3

    if-eq v4, v3, :cond_3

    if-lez v3, :cond_2

    :try_start_1
    iget-object v4, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder$1;->this$0:Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;

    iget-boolean v4, v4, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->isRecording:Z

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder$1;->this$0:Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;

    iget-object v4, v4, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->audioCaller:Lcom/ss/android/ttve/audio/TEAudioWriterInterface;

    invoke-interface {v4, v2, v3}, Lcom/ss/android/ttve/audio/TEAudioWriterInterface;->addPCMData([BI)I

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x32

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad audio buffer len "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    return-void

    :catch_1
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder$1;->this$0:Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;

    iget-object v2, v2, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder$1;->this$0:Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;

    iget-object v2, v2, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_5
    iget-object p0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder$1;->this$0:Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio recording failed!"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
