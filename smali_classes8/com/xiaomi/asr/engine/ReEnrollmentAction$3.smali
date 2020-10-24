.class Lcom/xiaomi/asr/engine/ReEnrollmentAction$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;


# direct methods
.method constructor <init>(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction$3;->this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "ReEnrollmentAction"

    const-string v1, "Start re-enroll with backup audio"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction$3;->this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    invoke-static {p0}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->access$000(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance v1, Lcom/xiaomi/asr/engine/record/XSpeedStreamingFileRecorderSource;

    sget-object v2, Lcom/xiaomi/asr/engine/record/AudioType;->PCM_16k:Lcom/xiaomi/asr/engine/record/AudioType;

    invoke-direct {v1, v2, p0}, Lcom/xiaomi/asr/engine/record/XSpeedStreamingFileRecorderSource;-><init>(Lcom/xiaomi/asr/engine/record/AudioType;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start re-enroll with backup audio: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    move-result-object p0

    const/16 v0, 0xbb8

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->startEnrollmentStreamingFileRecorder(Lcom/xiaomi/asr/engine/record/AudioSource;I)V

    return-void
.end method
