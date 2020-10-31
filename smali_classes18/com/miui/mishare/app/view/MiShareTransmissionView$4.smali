.class Lcom/miui/mishare/app/view/MiShareTransmissionView$4;
.super Ljava/lang/Object;
.source "MiShareTransmissionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/mishare/app/view/MiShareTransmissionView;->send(Lcom/miui/mishare/app/model/MiShareDevice;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

.field final synthetic val$device:Lcom/miui/mishare/app/model/MiShareDevice;

.field final synthetic val$deviceX:I

.field final synthetic val$deviceY:I


# direct methods
.method constructor <init>(Lcom/miui/mishare/app/view/MiShareTransmissionView;Lcom/miui/mishare/app/model/MiShareDevice;II)V
    .registers 5

    iput-object p1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$4;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    iput-object p2, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$4;->val$device:Lcom/miui/mishare/app/model/MiShareDevice;

    iput p3, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$4;->val$deviceX:I

    iput p4, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$4;->val$deviceY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$4;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    invoke-virtual {v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$4;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    # getter for: Lcom/miui/mishare/app/view/MiShareTransmissionView;->mFiles:Ljava/util/List;
    invoke-static {v2}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->access$400(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/securityshare/SecurityShareHelper;->cleanImageInfo(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/miui/mishare/app/view/MiShareTransmissionView;->mFiles:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->access$402(Lcom/miui/mishare/app/view/MiShareTransmissionView;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$4;->val$device:Lcom/miui/mishare/app/model/MiShareDevice;

    iget-object v0, v0, Lcom/miui/mishare/app/model/MiShareDevice;->files:Ljava/util/List;

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$4;->val$device:Lcom/miui/mishare/app/model/MiShareDevice;

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$4;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    # getter for: Lcom/miui/mishare/app/view/MiShareTransmissionView;->mFiles:Ljava/util/List;
    invoke-static {v1}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->access$400(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/mishare/app/model/MiShareDevice;->files:Ljava/util/List;

    :cond_23
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$4;->val$device:Lcom/miui/mishare/app/model/MiShareDevice;

    iget-object v0, v0, Lcom/miui/mishare/app/model/MiShareDevice;->files:Ljava/util/List;

    if-eqz v0, :cond_61

    new-instance v0, Lcom/miui/mishare/MiShareTask;

    invoke-direct {v0}, Lcom/miui/mishare/MiShareTask;-><init>()V

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$4;->val$device:Lcom/miui/mishare/app/model/MiShareDevice;

    iget-object v1, v1, Lcom/miui/mishare/app/model/MiShareDevice;->remoteDevice:Lcom/miui/mishare/RemoteDevice;

    iput-object v1, v0, Lcom/miui/mishare/MiShareTask;->device:Lcom/miui/mishare/RemoteDevice;

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$4;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$4;->val$device:Lcom/miui/mishare/app/model/MiShareDevice;

    iget-object v2, v2, Lcom/miui/mishare/app/model/MiShareDevice;->files:Ljava/util/List;

    # invokes: Lcom/miui/mishare/app/view/MiShareTransmissionView;->getClipData(Ljava/util/List;)Landroid/content/ClipData;
    invoke-static {v1, v2}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->access$500(Lcom/miui/mishare/app/view/MiShareTransmissionView;Ljava/util/List;)Landroid/content/ClipData;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/mishare/MiShareTask;->clipData:Landroid/content/ClipData;

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$4;->val$device:Lcom/miui/mishare/app/model/MiShareDevice;

    iget-object v1, v1, Lcom/miui/mishare/app/model/MiShareDevice;->taskId:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/mishare/MiShareTask;->taskId:Ljava/lang/String;

    iget v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$4;->val$deviceX:I

    iput v1, v0, Lcom/miui/mishare/MiShareTask;->deviceX:I

    iget v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$4;->val$deviceY:I

    iput v1, v0, Lcom/miui/mishare/MiShareTask;->deviceY:I

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$4;->val$device:Lcom/miui/mishare/app/model/MiShareDevice;

    iget-object v1, v1, Lcom/miui/mishare/app/model/MiShareDevice;->files:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lcom/miui/mishare/MiShareTask;->count:I

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$4;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    # getter for: Lcom/miui/mishare/app/view/MiShareTransmissionView;->mConnectivity:Lcom/miui/mishare/app/connect/MiShareConnectivity;
    invoke-static {v1}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->access$600(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Lcom/miui/mishare/app/connect/MiShareConnectivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->sendData(Lcom/miui/mishare/MiShareTask;)V

    :cond_61
    return-void
.end method
