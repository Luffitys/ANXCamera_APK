.class Lcom/xiaomi/asr/engine/record/VoiceRecord$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;


# direct methods
.method constructor <init>(Lcom/xiaomi/asr/engine/record/VoiceRecord;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$1;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->getInstance()Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->stop()V

    :try_start_0
    invoke-static {}, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->getInstance()Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->getCountDownLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$1;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$000(Lcom/xiaomi/asr/engine/record/VoiceRecord;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$1;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {p0}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$100(Lcom/xiaomi/asr/engine/record/VoiceRecord;)V

    :cond_0
    return-void
.end method
