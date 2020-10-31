.class final Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackWrapperInternal;
.super Landroid/service/carrier/ICarrierMessagingCallback$Stub;
.source "CarrierMessagingServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/CarrierMessagingServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CarrierMessagingCallbackWrapperInternal"
.end annotation


# instance fields
.field mCarrierMessagingCallbackWrapper:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackWrapper;

.field final synthetic this$0:Landroid/service/carrier/CarrierMessagingServiceWrapper;


# direct methods
.method constructor <init>(Landroid/service/carrier/CarrierMessagingServiceWrapper;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackWrapper;)V
    .registers 3

    iput-object p1, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackWrapperInternal;->this$0:Landroid/service/carrier/CarrierMessagingServiceWrapper;

    invoke-direct {p0}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;-><init>()V

    iput-object p2, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackWrapperInternal;->mCarrierMessagingCallbackWrapper:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackWrapper;

    return-void
.end method


# virtual methods
.method public onDownloadMmsComplete(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackWrapperInternal;->mCarrierMessagingCallbackWrapper:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackWrapper;

    invoke-virtual {v0, p1}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackWrapper;->onDownloadMmsComplete(I)V

    return-void
.end method

.method public onFilterComplete(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackWrapperInternal;->mCarrierMessagingCallbackWrapper:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackWrapper;

    invoke-virtual {v0, p1}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackWrapper;->onFilterComplete(I)V

    return-void
.end method

.method public onSendMmsComplete(I[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackWrapperInternal;->mCarrierMessagingCallbackWrapper:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackWrapper;->onSendMmsComplete(I[B)V

    return-void
.end method

.method public onSendMultipartSmsComplete(I[I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackWrapperInternal;->mCarrierMessagingCallbackWrapper:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackWrapper;->onSendMultipartSmsComplete(I[I)V

    return-void
.end method

.method public onSendSmsComplete(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackWrapperInternal;->mCarrierMessagingCallbackWrapper:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackWrapper;->onSendSmsComplete(II)V

    return-void
.end method
