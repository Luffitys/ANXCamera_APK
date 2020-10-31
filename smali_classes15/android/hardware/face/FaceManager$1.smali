.class Landroid/hardware/face/FaceManager$1;
.super Landroid/hardware/face/IFaceServiceReceiver$Stub;
.source "FaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/FaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/face/FaceManager;


# direct methods
.method constructor <init>(Landroid/hardware/face/FaceManager;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    invoke-direct {p0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcquired(JII)V
    .registers 8

    iget-object v0, p0, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    # getter for: Landroid/hardware/face/FaceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/hardware/face/FaceManager;->access$000(Landroid/hardware/face/FaceManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v0, v2, p3, p4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onAuthenticationFailed(J)V
    .registers 5

    iget-object v0, p0, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    # getter for: Landroid/hardware/face/FaceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/hardware/face/FaceManager;->access$000(Landroid/hardware/face/FaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onAuthenticationSucceeded(JLandroid/hardware/face/Face;IZ)V
    .registers 8

    iget-object v0, p0, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    # getter for: Landroid/hardware/face/FaceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/hardware/face/FaceManager;->access$000(Landroid/hardware/face/FaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p4, p5, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onEnrollResult(JII)V
    .registers 9

    iget-object v0, p0, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    # getter for: Landroid/hardware/face/FaceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/hardware/face/FaceManager;->access$000(Landroid/hardware/face/FaceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/hardware/face/Face;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p3, p1, p2}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p4, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onEnumerated(JII)V
    .registers 5

    return-void
.end method

.method public onError(JII)V
    .registers 8

    iget-object v0, p0, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    # getter for: Landroid/hardware/face/FaceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/hardware/face/FaceManager;->access$000(Landroid/hardware/face/FaceManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x68

    invoke-virtual {v0, v2, p3, p4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onFeatureGet(ZIZ)V
    .registers 7

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    # getter for: Landroid/hardware/face/FaceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/hardware/face/FaceManager;->access$000(Landroid/hardware/face/FaceManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x6a

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onFeatureSet(ZI)V
    .registers 7

    iget-object v0, p0, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    # getter for: Landroid/hardware/face/FaceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/hardware/face/FaceManager;->access$000(Landroid/hardware/face/FaceManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x6b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onRemoved(JII)V
    .registers 9

    iget-object v0, p0, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    # getter for: Landroid/hardware/face/FaceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/hardware/face/FaceManager;->access$000(Landroid/hardware/face/FaceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/hardware/face/Face;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p3, p1, p2}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    const/16 v2, 0x69

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p4, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
