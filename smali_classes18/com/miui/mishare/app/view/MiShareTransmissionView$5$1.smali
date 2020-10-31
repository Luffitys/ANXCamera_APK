.class Lcom/miui/mishare/app/view/MiShareTransmissionView$5$1;
.super Ljava/lang/Object;
.source "MiShareTransmissionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/mishare/app/view/MiShareTransmissionView$5;->onDeviceLost(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/mishare/app/view/MiShareTransmissionView$5;

.field final synthetic val$deviceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/mishare/app/view/MiShareTransmissionView$5;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$1;->this$1:Lcom/miui/mishare/app/view/MiShareTransmissionView$5;

    iput-object p2, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$1;->val$deviceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$1;->this$1:Lcom/miui/mishare/app/view/MiShareTransmissionView$5;

    iget-object v0, v0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    # getter for: Lcom/miui/mishare/app/view/MiShareTransmissionView;->mAdapter:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;
    invoke-static {v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->access$700(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$1;->val$deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->removeDevice(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$1;->this$1:Lcom/miui/mishare/app/view/MiShareTransmissionView$5;

    iget-object v0, v0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    # getter for: Lcom/miui/mishare/app/view/MiShareTransmissionView;->mAdapter:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;
    invoke-static {v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->access$700(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$1;->this$1:Lcom/miui/mishare/app/view/MiShareTransmissionView$5;

    iget-object v0, v0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    # getter for: Lcom/miui/mishare/app/view/MiShareTransmissionView;->mAdapter:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;
    invoke-static {v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->access$700(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$1;->this$1:Lcom/miui/mishare/app/view/MiShareTransmissionView$5;

    iget-object v0, v0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    # invokes: Lcom/miui/mishare/app/view/MiShareTransmissionView;->setEmptyView()V
    invoke-static {v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->access$800(Lcom/miui/mishare/app/view/MiShareTransmissionView;)V

    :cond_2d
    return-void
.end method
