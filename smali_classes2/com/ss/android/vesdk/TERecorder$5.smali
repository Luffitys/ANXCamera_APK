.class Lcom/ss/android/vesdk/TERecorder$5;
.super Ljava/lang/Object;
.source "TERecorder.java"

# interfaces
.implements Lcom/ss/android/medialib/listener/NativeInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/TERecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TERecorder;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TERecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$5;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeInitCallBack(I)V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$5;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$100(Lcom/ss/android/vesdk/TERecorder;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$5;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$100(Lcom/ss/android/vesdk/TERecorder;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ss/android/vesdk/TERecorder$NativeInitListenerInvoker;

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$5;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {p0}, Lcom/ss/android/vesdk/TERecorder;->access$1000(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VEListener$VERecorderNativeInitListener;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Lcom/ss/android/vesdk/TERecorder$NativeInitListenerInvoker;-><init>(Lcom/ss/android/vesdk/VEListener$VERecorderNativeInitListener;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$5;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$1000(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VEListener$VERecorderNativeInitListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$5;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {p0}, Lcom/ss/android/vesdk/TERecorder;->access$1000(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VEListener$VERecorderNativeInitListener;

    move-result-object p0

    const-string v0, ""

    invoke-interface {p0, p1, v0}, Lcom/ss/android/vesdk/VEListener$VERecorderNativeInitListener;->onNativeInit(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onNativeInitHardEncoderRetCallback(II)V
    .locals 3

    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder$5;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {p2}, Lcom/ss/android/vesdk/TERecorder;->access$100(Lcom/ss/android/vesdk/TERecorder;)Landroid/os/Handler;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder$5;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {p2}, Lcom/ss/android/vesdk/TERecorder;->access$100(Lcom/ss/android/vesdk/TERecorder;)Landroid/os/Handler;

    move-result-object p2

    new-instance v2, Lcom/ss/android/vesdk/TERecorder$NativeHardEncoderInitListenerInvoker;

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$5;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {p0}, Lcom/ss/android/vesdk/TERecorder;->access$1000(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VEListener$VERecorderNativeInitListener;

    move-result-object p0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {v2, p0, v0}, Lcom/ss/android/vesdk/TERecorder$NativeHardEncoderInitListenerInvoker;-><init>(Lcom/ss/android/vesdk/VEListener$VERecorderNativeInitListener;Z)V

    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_1
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder$5;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {p2}, Lcom/ss/android/vesdk/TERecorder;->access$1000(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VEListener$VERecorderNativeInitListener;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$5;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {p0}, Lcom/ss/android/vesdk/TERecorder;->access$1000(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VEListener$VERecorderNativeInitListener;

    move-result-object p0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-interface {p0, v0}, Lcom/ss/android/vesdk/VEListener$VERecorderNativeInitListener;->onHardEncoderInit(Z)V

    :cond_3
    :goto_2
    return-void
.end method
