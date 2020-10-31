.class Lcom/miui/mishare/app/view/MiShareTransmissionView$5$2;
.super Ljava/lang/Object;
.source "MiShareTransmissionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/mishare/app/view/MiShareTransmissionView$5;->onDeviceUpdated(Lcom/miui/mishare/RemoteDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/mishare/app/view/MiShareTransmissionView$5;

.field final synthetic val$remoteDevice:Lcom/miui/mishare/RemoteDevice;


# direct methods
.method constructor <init>(Lcom/miui/mishare/app/view/MiShareTransmissionView$5;Lcom/miui/mishare/RemoteDevice;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$2;->this$1:Lcom/miui/mishare/app/view/MiShareTransmissionView$5;

    iput-object p2, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$2;->val$remoteDevice:Lcom/miui/mishare/RemoteDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$2;->val$remoteDevice:Lcom/miui/mishare/RemoteDevice;

    if-eqz v0, :cond_8e

    invoke-virtual {v0}, Lcom/miui/mishare/RemoteDevice;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_c

    goto/16 :goto_8e

    :cond_c
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$2;->val$remoteDevice:Lcom/miui/mishare/RemoteDevice;

    invoke-virtual {v0}, Lcom/miui/mishare/RemoteDevice;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "sgnt"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/miui/mishare/app/model/MiShareDevice;

    invoke-direct {v2, v1}, Lcom/miui/mishare/app/model/MiShareDevice;-><init>(I)V

    iget-object v3, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$2;->this$1:Lcom/miui/mishare/app/view/MiShareTransmissionView$5;

    iget-object v3, v3, Lcom/miui/mishare/app/view/MiShareTransmissionView$5;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    # getter for: Lcom/miui/mishare/app/view/MiShareTransmissionView;->mFiles:Ljava/util/List;
    invoke-static {v3}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->access$400(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/mishare/app/model/MiShareDevice;->files:Ljava/util/List;

    iget-object v3, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$2;->val$remoteDevice:Lcom/miui/mishare/RemoteDevice;

    iput-object v3, v2, Lcom/miui/mishare/app/model/MiShareDevice;->remoteDevice:Lcom/miui/mishare/RemoteDevice;

    iget-object v3, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$2;->val$remoteDevice:Lcom/miui/mishare/RemoteDevice;

    invoke-virtual {v3}, Lcom/miui/mishare/RemoteDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/mishare/app/model/MiShareDevice;->deviceId:Ljava/lang/String;

    const-string v3, "model"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/mishare/app/model/MiShareDevice;->deviceModelName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$2;->this$1:Lcom/miui/mishare/app/view/MiShareTransmissionView$5;

    iget-object v3, v3, Lcom/miui/mishare/app/view/MiShareTransmissionView$5;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    const-string v4, "mc"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v4

    # invokes: Lcom/miui/mishare/app/view/MiShareTransmissionView;->getDeviceType(B)I
    invoke-static {v3, v4}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->access$1000(Lcom/miui/mishare/app/view/MiShareTransmissionView;B)I

    move-result v3

    iput v3, v2, Lcom/miui/mishare/app/model/MiShareDevice;->deviceType:I

    const-string v3, "nickname"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/mishare/app/model/MiShareDevice;->deviceName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$2;->this$1:Lcom/miui/mishare/app/view/MiShareTransmissionView$5;

    iget-object v3, v3, Lcom/miui/mishare/app/view/MiShareTransmissionView$5;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    # getter for: Lcom/miui/mishare/app/view/MiShareTransmissionView;->mMiShareDisabled:Landroid/view/View;
    invoke-static {v3}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->access$1100(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$2;->this$1:Lcom/miui/mishare/app/view/MiShareTransmissionView$5;

    iget-object v3, v3, Lcom/miui/mishare/app/view/MiShareTransmissionView$5;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    # getter for: Lcom/miui/mishare/app/view/MiShareTransmissionView;->mDeviceLv:Lcom/android/internal/widget/RecyclerView;
    invoke-static {v3}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->access$1200(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Lcom/android/internal/widget/RecyclerView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/RecyclerView;->setVisibility(I)V

    iget-object v3, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$2;->this$1:Lcom/miui/mishare/app/view/MiShareTransmissionView$5;

    iget-object v3, v3, Lcom/miui/mishare/app/view/MiShareTransmissionView$5;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    # getter for: Lcom/miui/mishare/app/view/MiShareTransmissionView;->mAdapter:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;
    invoke-static {v3}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->access$700(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->addOrUpdateDevice(Lcom/miui/mishare/app/model/MiShareDevice;)V

    iget-object v3, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$2;->this$1:Lcom/miui/mishare/app/view/MiShareTransmissionView$5;

    iget-object v3, v3, Lcom/miui/mishare/app/view/MiShareTransmissionView$5;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    # getter for: Lcom/miui/mishare/app/view/MiShareTransmissionView;->mAdapter:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;
    invoke-static {v3}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->access$700(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->notifyDataSetChanged()V

    return-void

    :cond_8e
    :goto_8e
    return-void
.end method
