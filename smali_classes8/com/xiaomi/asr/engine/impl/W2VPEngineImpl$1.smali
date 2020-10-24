.class Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

.field final synthetic val$data1:[B


# direct methods
.method constructor <init>(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;[B)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$1;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    iput-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$1;->val$data1:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$1;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$000(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$1;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$1;->val$data1:[B

    iget-object v4, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$1;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->isWakeupAec()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    :goto_0
    invoke-virtual {v2, v3, v4, v6}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->recognizeVoice([BII)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$1;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v3}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$1;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->getWakeupEndTime()J

    move-result-wide v0

    iget-object v7, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$1;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v7}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->getWakeupStartTime()J

    move-result-wide v7

    sub-long/2addr v0, v7

    long-to-float v0, v0

    iget-object v1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$1;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", sv handle data len:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$1;->val$data1:[B

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", handle time:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", rtf:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v6, [Ljava/lang/Object;

    long-to-float v3, v3

    div-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v6, v5

    const-string v0, "%.3f"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/xiaomi/asr/engine/WVPListener;->onDebug(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v2, "zhang_san:0.7813"

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$1;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$1;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$1;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$500(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$1;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$600(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$1;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$700(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_sv.mfcc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$1;->val$data1:[B

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method
