.class Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

.field final synthetic val$data1:[B


# direct methods
.method constructor <init>(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;[B)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$1;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    iput-object p2, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$1;->val$data1:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$1;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$000(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$1;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$1;->val$data1:[B

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->recognizeVoice([BII)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$1;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v3}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$1;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$1;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", data len:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$1;->val$data1:[B

    array-length v6, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", handle time:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", rtf:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    long-to-double v3, v3

    iget-object v7, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$1;->val$data1:[B

    array-length v7, v7

    int-to-double v7, v7

    const-wide/high16 v9, 0x4040000000000000L    # 32.0

    div-double/2addr v7, v9

    div-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v6, v5

    const-string v3, "%.3f"

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/asr/engine/WVPListener;->onDebug(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "zhang_san:0.7813"

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$1;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$1;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {p0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method
