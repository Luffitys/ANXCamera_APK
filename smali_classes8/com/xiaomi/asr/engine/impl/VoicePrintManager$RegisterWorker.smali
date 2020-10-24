.class Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RegisterWorker;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field final synthetic this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;


# direct methods
.method constructor <init>(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RegisterWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RegisterWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$400(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Lcom/xiaomi/asr/engine/jni/VoicePrintInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RegisterWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$300(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/asr/engine/jni/VoicePrintInterface;->voiceprintGenerateModel(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "VoicePrintManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RegisterWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$300(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " register success."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RegisterWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$200(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RegisterWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$200(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RegisterWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$300(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " register fail."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RegisterWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$200(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RegisterWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$200(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$RegisterWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {p0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$800(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/xiaomi/asr/engine/WVPListener;->onGenerateModel(ZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public start()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method
