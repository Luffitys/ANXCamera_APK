.class Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl$1;
.super Ljava/lang/Object;
.source "MiLiveConfigChangesImpl.java"

# interfaces
.implements Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordingTimeFinish()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->access$000(Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;)Lcom/android/camera/ActivityBase;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->access$000(Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;)Lcom/android/camera/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->access$000(Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;)Lcom/android/camera/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/module/MiLiveModule;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->access$000(Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;)Lcom/android/camera/ActivityBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/MiLiveModule;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/camera/module/MiLiveModule;->stopVideoRecording(ZZ)V

    return-void
.end method

.method public onRecordingTimeUpdate(JF)V
    .locals 1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa2

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    if-eqz p0, :cond_0

    long-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    div-float/2addr p1, p3

    float-to-long p1, p1

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/android/camera/Util;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->updateRecordingTime(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
