.class Lcom/android/camera/module/AmbilightModule$5;
.super Landroid/os/CountDownTimer;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/AmbilightModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/AmbilightModule;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/AmbilightModule$5;->this$0:Lcom/android/camera/module/AmbilightModule;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    return-void
.end method

.method public onTick(J)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/android/camera/Util;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/AmbilightModule$5;->this$0:Lcom/android/camera/module/AmbilightModule;

    invoke-static {p2}, Lcom/android/camera/module/AmbilightModule;->access$200(Lcom/android/camera/module/AmbilightModule;)Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule$5;->this$0:Lcom/android/camera/module/AmbilightModule;

    invoke-static {p0}, Lcom/android/camera/module/AmbilightModule;->access$200(Lcom/android/camera/module/AmbilightModule;)Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateRecordingTime(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
