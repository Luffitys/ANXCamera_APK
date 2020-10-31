.class public Landroid/service/carrier/CarrierMessagingClientService;
.super Landroid/app/Service;
.source "CarrierMessagingClientService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/carrier/CarrierMessagingClientService$ICarrierMessagingClientServiceImpl;
    }
.end annotation


# instance fields
.field private final mImpl:Landroid/service/carrier/CarrierMessagingClientService$ICarrierMessagingClientServiceImpl;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/service/carrier/CarrierMessagingClientService$ICarrierMessagingClientServiceImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/carrier/CarrierMessagingClientService$ICarrierMessagingClientServiceImpl;-><init>(Landroid/service/carrier/CarrierMessagingClientService;Landroid/service/carrier/CarrierMessagingClientService$1;)V

    iput-object v0, p0, Landroid/service/carrier/CarrierMessagingClientService;->mImpl:Landroid/service/carrier/CarrierMessagingClientService$ICarrierMessagingClientServiceImpl;

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingClientService;->mImpl:Landroid/service/carrier/CarrierMessagingClientService$ICarrierMessagingClientServiceImpl;

    invoke-virtual {v0}, Landroid/service/carrier/CarrierMessagingClientService$ICarrierMessagingClientServiceImpl;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
