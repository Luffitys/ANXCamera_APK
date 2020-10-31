.class public abstract Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackWrapper;
.super Ljava/lang/Object;
.source "CarrierMessagingServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/CarrierMessagingServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CarrierMessagingCallbackWrapper"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadMmsComplete(I)V
    .registers 2

    return-void
.end method

.method public onFilterComplete(I)V
    .registers 2

    return-void
.end method

.method public onSendMmsComplete(I[B)V
    .registers 3

    return-void
.end method

.method public onSendMultipartSmsComplete(I[I)V
    .registers 3

    return-void
.end method

.method public onSendSmsComplete(II)V
    .registers 3

    return-void
.end method
