.class Lcom/android/camera/module/impl/component/MiLiveRecorder$2;
.super Landroid/os/CountDownTimer;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

.field final synthetic val$listener:Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;


# direct methods
.method constructor <init>(Lcom/android/camera/module/impl/component/MiLiveRecorder;JJLcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$2;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    iput-object p6, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$2;->val$listener:Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$2;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->access$900(Lcom/android/camera/module/impl/component/MiLiveRecorder;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "count down onFinish~"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTick(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$2;->val$listener:Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$2;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->access$1000(Lcom/android/camera/module/impl/component/MiLiveRecorder;)F

    move-result p0

    invoke-interface {v0, p1, p2, p0}, Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;->onRecordingTimeUpdate(JF)V

    :cond_0
    return-void
.end method
