.class Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;


# direct methods
.method constructor <init>(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v2

    const-string v3, "WVPEngineImpl"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start msg.what:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v2, v1, Landroid/os/Message;->what:I

    const/16 v4, 0x10

    const/4 v5, 0x0

    if-eq v2, v4, :cond_18

    const-string v4, ""

    const/4 v6, 0x2

    const/4 v7, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$600(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->removeAllRegister()V

    goto/16 :goto_3

    :pswitch_1
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$600(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget v2, v1, Landroid/os/Message;->arg1:I

    iget-object v4, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->startEnrollment(I)V

    goto/16 :goto_3

    :pswitch_2
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-ne v2, v7, :cond_1

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "wakeup level two"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2, v7}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1602(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;Z)Z

    goto :goto_0

    :cond_1
    const-string v2, "end cal sv"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1702(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    :goto_0
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1500(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)I

    move-result v4

    add-int/2addr v4, v7

    invoke-static {v2, v4}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1502(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;I)I

    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1500(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)I

    move-result v2

    if-lt v2, v6, :cond_19

    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1600(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1700(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "stranger"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1700(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "error:empty"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1700(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "recognition failed"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sv-wakeup, res:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1700(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v2

    if-eqz v2, :cond_19

    new-instance v2, Lcom/xiaomi/asr/engine/PhraseWakeupResult;

    invoke-direct {v2}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;-><init>()V

    invoke-virtual {v2, v7}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setVoconWakeupPassed(Z)V

    const-string v4, "\u5c0f\u7231\u540c\u5b66"

    invoke-virtual {v2, v4}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setVoconPhrase(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setScore(F)V

    invoke-virtual {v2, v5}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setAec(Z)V

    iget-object v4, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/xiaomi/asr/engine/WVPListener;->onPhraseSpotted(Lcom/xiaomi/asr/engine/PhraseWakeupResult;)V

    goto/16 :goto_3

    :cond_4
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v2

    if-eqz v2, :cond_19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sv wakeup fail, sv res:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1700(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_3
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$700(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$800(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/record/VoiceRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->stopRecord()V

    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2, v5}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$702(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;Z)Z

    goto/16 :goto_3

    :pswitch_4
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$600(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$700(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$800(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/record/VoiceRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->stopRecord()V

    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2, v5}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$702(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;Z)Z

    :cond_5
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$500(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;->wakeupDestroy()I

    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->release()V

    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2, v5}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$602(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;Z)Z

    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2, v5}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$902(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;Z)Z

    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v2

    if-eqz v2, :cond_19

    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaomi/asr/engine/WVPListener;->onRelease()V

    goto/16 :goto_3

    :pswitch_5
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$600(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2, v7}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$902(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;Z)Z

    goto/16 :goto_3

    :pswitch_6
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$600(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_3

    :cond_6
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$900(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto/16 :goto_3

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v8, "data"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iget v8, v1, Landroid/os/Message;->arg1:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    div-int/lit8 v11, v8, 0x2

    new-array v12, v11, [B

    move v13, v5

    move v14, v13

    :goto_1
    if-ge v13, v8, :cond_8

    aget-byte v15, v2, v13

    aput-byte v15, v12, v14

    add-int/lit8 v15, v14, 0x1

    add-int/lit8 v16, v13, 0x1

    aget-byte v16, v2, v16

    aput-byte v16, v12, v15

    add-int/lit8 v13, v13, 0x4

    add-int/2addr v14, v6

    goto :goto_1

    :cond_8
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1000(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)J

    move-result-wide v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v9

    add-long/2addr v13, v15

    invoke-static {v2, v13, v14}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1002(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;J)J

    :cond_9
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1100(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->writeBuffer([B)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$500(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;

    move-result-object v2

    invoke-virtual {v2, v12, v11, v5}, Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;->wakeupFeedData([BII)I

    move-result v2

    iget-object v10, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v10}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v10

    if-eqz v10, :cond_a

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "wakeup feed return:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v10}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1200(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)J

    move-result-wide v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v8

    add-long/2addr v13, v15

    invoke-static {v10, v13, v14}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1202(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;J)J

    iget-object v8, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v8}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)J

    move-result-wide v9

    int-to-long v13, v11

    add-long/2addr v9, v13

    invoke-static {v8, v9, v10}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1302(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;J)J

    :cond_a
    const-string v8, "\n"

    if-ne v2, v7, :cond_d

    iget-object v9, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v9}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v9

    if-eqz v9, :cond_c

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wakeup-voice-level-one, voice data size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v10}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", voice handle time:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v10}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1200(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", rtf:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v10, v7, [Ljava/lang/Object;

    iget-object v11, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v11}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1200(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)J

    move-result-wide v13

    long-to-double v13, v13

    iget-object v11, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v11}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)J

    move-result-wide v6

    long-to-double v6, v6

    const-wide/high16 v17, 0x4040000000000000L    # 32.0

    div-double v6, v6, v17

    div-double/2addr v13, v6

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v10, v5

    const-string v6, "%.3f"

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", split data handle time:"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v7}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1000(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", split rtf:"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    new-array v10, v7, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v7}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1000(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)J

    move-result-wide v13

    long-to-double v13, v13

    iget-object v7, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    move-object/from16 v19, v6

    invoke-static {v7}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)J

    move-result-wide v5

    long-to-double v5, v5

    div-double v5, v5, v17

    div-double/2addr v13, v5

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v10, v6

    move-object/from16 v5, v19

    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v6}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v6

    if-eqz v6, :cond_b

    iget-object v6, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v6}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Lcom/xiaomi/asr/engine/WVPListener;->onDebug(Ljava/lang/String;)V

    :cond_b
    iget-object v5, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1402(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;J)J

    iget-object v5, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1202(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;J)J

    iget-object v5, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v5, v6, v7}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1002(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;J)J

    iget-object v5, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v5, v6, v7}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1302(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;J)J

    :cond_c
    iget-object v5, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1502(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;I)I

    iget-object v5, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v5, v6}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1602(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;Z)Z

    iget-object v5, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v5, v4}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1702(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v5}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1800(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)V

    iget-object v5, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v5}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1100(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->readBuffer()[B

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1902(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;[B)[B

    iget-object v5, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v5}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1100(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->reset()V

    iget-object v5, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$2002(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;Z)Z

    const/4 v5, 0x2

    goto :goto_2

    :cond_d
    move v5, v6

    :goto_2
    if-ne v2, v5, :cond_f

    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wakeup-voice-level-two, handle time:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v7}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1400(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)J

    move-result-wide v9

    sub-long/2addr v5, v9

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v5}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v5

    if-eqz v5, :cond_e

    iget-object v5, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v5}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Lcom/xiaomi/asr/engine/WVPListener;->onDebug(Ljava/lang/String;)V

    :cond_e
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    const/4 v5, 0x1

    invoke-static {v2, v5}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1602(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;Z)Z

    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Landroid/os/Handler;

    move-result-object v2

    const/4 v6, 0x7

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iput v5, v2, Landroid/os/Message;->arg1:I

    const-string v5, "keyword detected"

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v5, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v5}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_f
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$2000(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$2100(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->writeBuffer([B)V

    :cond_10
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$2100(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->isFull()Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1600(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v2

    if-eqz v2, :cond_11

    new-instance v2, Lcom/xiaomi/asr/engine/PhraseWakeupResult;

    invoke-direct {v2}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setVoconWakeupPassed(Z)V

    invoke-virtual {v2, v4}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setVoconPhrase(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/xiaomi/asr/engine/WVPListener;->onPhraseSpotted(Lcom/xiaomi/asr/engine/PhraseWakeupResult;)V

    :cond_11
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$500(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;->wakeupReset()I

    :cond_12
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$2100(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->readBuffer()[B

    move-result-object v2

    iget-object v4, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v4

    if-eqz v4, :cond_13

    iget-object v4, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1900(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)[B

    move-result-object v4

    array-length v4, v4

    array-length v5, v2

    add-int/2addr v4, v5

    new-array v4, v4, [B

    iget-object v5, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v5}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1900(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)[B

    move-result-object v5

    iget-object v6, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v6}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1900(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)[B

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x0

    invoke-static {v5, v7, v4, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v5}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1900(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)[B

    move-result-object v5

    array-length v5, v5

    array-length v6, v2

    invoke-static {v2, v7, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/xiaomi/asr/engine/WVPListener;->onAudioData([B)V

    :cond_13
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$2100(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->reset()V

    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1902(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;[B)[B

    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$2002(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;Z)Z

    goto/16 :goto_3

    :pswitch_7
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$600(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$700(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$800(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/record/VoiceRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->startRecord()V

    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$702(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;Z)Z

    :cond_14
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$902(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;Z)Z

    goto/16 :goto_3

    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "path"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v6}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v6

    if-eqz v6, :cond_15

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vp_model_path:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", vp_speaker:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    iget-object v6, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v6}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$500(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;->wakeupInit(Ljava/lang/String;)I

    move-result v4

    iget-object v6, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v6}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->init(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    add-int/2addr v4, v2

    if-nez v4, :cond_16

    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$602(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;Z)Z

    :cond_16
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$600(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "init failed"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v2

    if-eqz v2, :cond_19

    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v2

    iget-object v4, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$600(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v4

    invoke-interface {v2, v4}, Lcom/xiaomi/asr/engine/WVPListener;->onInit(Z)V

    goto :goto_3

    :cond_18
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$600(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->generateModel()V

    :cond_19
    :goto_3
    iget-object v0, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end msg.what:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
