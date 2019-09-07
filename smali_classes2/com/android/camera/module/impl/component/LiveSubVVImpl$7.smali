.class Lcom/android/camera/module/impl/component/LiveSubVVImpl$7;
.super Ljava/lang/Object;
.source "LiveSubVVImpl.java"

# interfaces
.implements Lcom/xiaomi/mediaprocess/EffectNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/impl/component/LiveSubVVImpl;->combineVideoAudio(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/impl/component/LiveSubVVImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/module/impl/component/LiveSubVVImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$7;->this$0:Lcom/android/camera/module/impl/component/LiveSubVVImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnReceiveFailed()V
    .locals 2

    invoke-static {}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ComposeCameraRecord OnReceiveFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$7;->this$0:Lcom/android/camera/module/impl/component/LiveSubVVImpl;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->access$700(Lcom/android/camera/module/impl/component/LiveSubVVImpl;)Lcom/android/camera/data/observeable/VMProcessing;

    move-result-object p0

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/camera/data/observeable/VMProcessing;->updateState(I)V

    return-void
.end method

.method public OnReceiveFinish()V
    .locals 2

    invoke-static {}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ComposeCameraRecord OnReceiveFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$7;->this$0:Lcom/android/camera/module/impl/component/LiveSubVVImpl;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->access$700(Lcom/android/camera/module/impl/component/LiveSubVVImpl;)Lcom/android/camera/data/observeable/VMProcessing;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/data/observeable/VMProcessing;->updateState(I)V

    return-void
.end method
