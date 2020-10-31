.class Lcom/miui/mishare/app/view/MiShareTransmissionView$5;
.super Lcom/miui/mishare/IMiShareDiscoverCallback$Stub;
.source "MiShareTransmissionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/mishare/app/view/MiShareTransmissionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;


# direct methods
.method constructor <init>(Lcom/miui/mishare/app/view/MiShareTransmissionView;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    invoke-direct {p0}, Lcom/miui/mishare/IMiShareDiscoverCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceLost(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    # getter for: Lcom/miui/mishare/app/view/MiShareTransmissionView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->access$900(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$1;-><init>(Lcom/miui/mishare/app/view/MiShareTransmissionView$5;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDeviceUpdated(Lcom/miui/mishare/RemoteDevice;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    # getter for: Lcom/miui/mishare/app/view/MiShareTransmissionView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->access$900(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$2;-><init>(Lcom/miui/mishare/app/view/MiShareTransmissionView$5;Lcom/miui/mishare/RemoteDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
