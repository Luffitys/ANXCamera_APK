.class Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;


# direct methods
.method constructor <init>(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 12

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$000(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Z

    move-result v0

    const-string v1, "WakeupEngineImpl"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start msg.what:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_10

    const/4 v4, 0x2

    if-eq v0, v4, :cond_f

    const/4 v5, 0x3

    if-eq v0, v5, :cond_4

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$500(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$600(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/record/VoiceRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->stopRecord()V

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0, v3}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$502(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;Z)Z

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$500(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$600(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/record/VoiceRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->stopRecord()V

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0, v3}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$502(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;Z)Z

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;->wakeupDestroy()I

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0, v3}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$302(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;Z)Z

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/asr/engine/WVPListener;->onRelease()V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "data"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iget v5, p1, Landroid/os/Message;->arg1:I

    div-int/lit8 v6, v5, 0x2

    new-array v7, v6, [B

    move v8, v3

    move v9, v8

    :goto_0
    if-ge v8, v5, :cond_6

    aget-byte v10, v0, v8

    aput-byte v10, v7, v9

    add-int/lit8 v10, v9, 0x1

    add-int/lit8 v11, v8, 0x1

    aget-byte v11, v0, v11

    aput-byte v11, v7, v10

    add-int/lit8 v8, v8, 0x4

    add-int/2addr v9, v4

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$700(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->writeBuffer([B)V

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$800(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$900(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->writeFile([B)V

    :cond_7
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;

    move-result-object v0

    invoke-virtual {v0, v7, v6, v3}, Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;->wakeupFeedData([BII)I

    move-result v0

    iget-object v5, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v5}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$000(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Z

    move-result v5

    if-eqz v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wakeup feed return:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-ne v0, v2, :cond_9

    const-string v5, "Voice wakeup: r == FEED_RESULT_DETECTED_LEVEL_ONE"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v5, v3}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$1002(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;Z)Z

    :cond_9
    if-ne v0, v4, :cond_a

    const-string v0, "Voice wakeup: r == FEED_RESULT_DETECTED_END"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0, v2}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$1002(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;Z)Z

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$700(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->readBuffer()[B

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$1102(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;[B)[B

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$700(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->reset()V

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0, v2}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$1202(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;Z)Z

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/xiaomi/asr/engine/PhraseWakeupResult;

    invoke-direct {v0}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;-><init>()V

    invoke-virtual {v0, v2}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setVoconWakeupPassed(Z)V

    const-string v2, "\u5c0f\u7231\u540c\u5b66"

    invoke-virtual {v0, v2}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setVoconPhrase(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setScore(F)V

    invoke-virtual {v0, v3}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setAec(Z)V

    const-string v2, "Voice wakeup has been successful"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/xiaomi/asr/engine/WVPListener;->onPhraseSpotted(Lcom/xiaomi/asr/engine/PhraseWakeupResult;)V

    :cond_a
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$1200(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$1300(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->writeBuffer([B)V

    :cond_b
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$1300(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->isFull()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$1000(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/xiaomi/asr/engine/PhraseWakeupResult;

    invoke-direct {v0}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;-><init>()V

    invoke-virtual {v0, v3}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setVoconWakeupPassed(Z)V

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setVoconPhrase(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/xiaomi/asr/engine/WVPListener;->onPhraseSpotted(Lcom/xiaomi/asr/engine/PhraseWakeupResult;)V

    :cond_c
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;->wakeupReset()I

    :cond_d
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$1300(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->readBuffer()[B

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$1100(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)[B

    move-result-object v2

    array-length v2, v2

    array-length v4, v0

    add-int/2addr v2, v4

    new-array v2, v2, [B

    iget-object v4, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$1100(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)[B

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v5}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$1100(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)[B

    move-result-object v5

    array-length v5, v5

    invoke-static {v4, v3, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$1100(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)[B

    move-result-object v4

    array-length v4, v4

    array-length v5, v0

    invoke-static {v0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/xiaomi/asr/engine/WVPListener;->onAudioData([B)V

    :cond_e
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$1300(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->reset()V

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$1102(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;[B)[B

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0, v3}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$1202(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;Z)Z

    goto/16 :goto_1

    :cond_f
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$500(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$600(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/record/VoiceRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->startRecord()V

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0, v2}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$502(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;Z)Z

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;->wakeupReset()I

    goto :goto_1

    :cond_10
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v4, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ModelPath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;->wakeupInit(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0, v2}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$302(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;Z)Z

    :cond_11
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "init failed"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/xiaomi/asr/engine/WVPListener;->onInit(Z)V

    :cond_13
    :goto_1
    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {p0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$000(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Z

    move-result p0

    if-eqz p0, :cond_14

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "end msg.what:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return v3
.end method
