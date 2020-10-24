.class Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/asr/engine/WVPListener;


# instance fields
.field final synthetic this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;


# direct methods
.method private constructor <init>(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/asr/engine/ReEnrollmentAction;Lcom/xiaomi/asr/engine/ReEnrollmentAction$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;-><init>(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)V

    return-void
.end method

.method private logText(Ljava/lang/String;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ReEnrollmentAction"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onAbortEnrollmentComplete()V
    .locals 2

    const-string v0, "ReEnrollmentAction"

    const-string v1, "Aborted re-enroll with backup audio"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->access$200(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->access$202(Lcom/xiaomi/asr/engine/ReEnrollmentAction;I)I

    invoke-static {}, Lcom/xiaomi/asr/engine/W2VPEngine;->release()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->access$200(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    invoke-static {p0}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->access$800(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAudioData([B)V
    .locals 0

    return-void
.end method

.method public onCommitEnrollmentComplete()V
    .locals 3

    const-string v0, "ReEnrollmentAction"

    const-string v1, "Committed re-enroll with backup audio"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->access$200(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->access$100(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)Lcom/xiaomi/asr/engine/ReEnrollmentAction$ReEnrollmentActionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->access$900(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v0, v1, v2}, Lcom/xiaomi/asr/engine/ReEnrollmentAction$ReEnrollmentActionListener;->onAudioQualityChecked(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->access$200(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->access$100(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)Lcom/xiaomi/asr/engine/ReEnrollmentAction$ReEnrollmentActionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->access$900(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->access$1000(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->access$900(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    invoke-static {p0}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->access$800(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)V

    return-void
.end method

.method public onConflictAudio()V
    .locals 0

    return-void
.end method

.method public onDebug(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onEndOfSpeech()V
    .locals 0

    return-void
.end method

.method public onEnergyLevelAvailable(FZ)V
    .locals 0

    return-void
.end method

.method public onEnrollAudioBufferAvailable([BZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnrollAudioBufferAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " var: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->logText(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    invoke-static {p0}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->access$700(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "_enroll.pcm"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onEnrollmentComplete(ZZFI)V
    .locals 0

    const-string p2, "ReEnrollmentAction"

    const-string p3, "Finshed re-enroll with backup audio"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->access$000(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    invoke-static {p0}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->access$600(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/xiaomi/asr/engine/W2VPEngine;->commitEnrollment()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xiaomi/asr/engine/W2VPEngine;->abortEnrollment()V

    :goto_0
    return-void
.end method

.method public onGenerateModel(ZLjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGenerateModel, success:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", modelFilePath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->logText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    invoke-static {p0, p1, p2}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->access$300(Lcom/xiaomi/asr/engine/ReEnrollmentAction;ZLjava/lang/String;)V

    return-void
.end method

.method public onGrammarUpdated(Z)V
    .locals 1

    const-string v0, "onGrammarUpdated"

    invoke-direct {p0, v0}, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->logText(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->access$000(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->access$000(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->access$500(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    invoke-static {p0}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->access$600(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->access$300(Lcom/xiaomi/asr/engine/ReEnrollmentAction;ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onInit(Z)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/xiaomi/asr/engine/W2VPEngine;->version()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-nez v1, :cond_0

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onInit:sdk\u7248\u672c\u53f7:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v1, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->logText(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5524\u9192\u5f15\u64ce\u7248\u672c\u53f7:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->logText(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u58f0\u7eb9\u5f15\u64ce\u7248\u672c\u53f7:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v3

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->logText(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->access$100(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)Lcom/xiaomi/asr/engine/ReEnrollmentAction$ReEnrollmentActionListener;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/xiaomi/asr/engine/ReEnrollmentAction$ReEnrollmentActionListener;->onEngineVersionChecked(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->access$200(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)I

    move-result p1

    if-ne p1, v3, :cond_1

    iget-object p1, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    const/4 v0, 0x3

    :goto_0
    invoke-static {p1, v0}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->access$202(Lcom/xiaomi/asr/engine/ReEnrollmentAction;I)I

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->access$200(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->onGrammarUpdated(Z)V

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->access$300(Lcom/xiaomi/asr/engine/ReEnrollmentAction;ZLjava/lang/String;)V

    :goto_2
    return-void
.end method

.method public onPhraseSpotted(Lcom/xiaomi/asr/engine/PhraseWakeupResult;)V
    .locals 0

    return-void
.end method

.method public onRelease()V
    .locals 3

    const-string v0, "onRelease"

    invoke-direct {p0, v0}, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->logText(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "this.mCurrentProcess =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->access$200(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReEnrollmentAction"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->access$200(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)I

    move-result v0

    const-string v1, "reEnroll"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    const/4 v2, 0x2

    :goto_0
    invoke-static {v0, v2}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->access$202(Lcom/xiaomi/asr/engine/ReEnrollmentAction;I)I

    iget-object p0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    invoke-static {p0}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->access$400(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/xiaomi/asr/engine/W2VPEngine;->init(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->access$200(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;->this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    const/4 v2, 0x5

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onStartAudio()V
    .locals 0

    return-void
.end method

.method public onStartOfSpeech()V
    .locals 0

    return-void
.end method

.method public onStopAudio()V
    .locals 0

    return-void
.end method
