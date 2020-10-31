.class Landroid/telephony/data/QualifiedNetworksService$IQualifiedNetworksServiceWrapper;
.super Landroid/telephony/data/IQualifiedNetworksService$Stub;
.source "QualifiedNetworksService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/QualifiedNetworksService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IQualifiedNetworksServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/data/QualifiedNetworksService;


# direct methods
.method private constructor <init>(Landroid/telephony/data/QualifiedNetworksService;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/data/QualifiedNetworksService$IQualifiedNetworksServiceWrapper;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-direct {p0}, Landroid/telephony/data/IQualifiedNetworksService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/telephony/data/QualifiedNetworksService;Landroid/telephony/data/QualifiedNetworksService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/data/QualifiedNetworksService$IQualifiedNetworksServiceWrapper;-><init>(Landroid/telephony/data/QualifiedNetworksService;)V

    return-void
.end method


# virtual methods
.method public createNetworkAvailabilityProvider(ILandroid/telephony/data/IQualifiedNetworksServiceCallback;)V
    .registers 6

    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService$IQualifiedNetworksServiceWrapper;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    # getter for: Landroid/telephony/data/QualifiedNetworksService;->mHandler:Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;
    invoke-static {v0}, Landroid/telephony/data/QualifiedNetworksService;->access$200(Landroid/telephony/data/QualifiedNetworksService;)Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public removeNetworkAvailabilityProvider(I)V
    .registers 5

    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService$IQualifiedNetworksServiceWrapper;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    # getter for: Landroid/telephony/data/QualifiedNetworksService;->mHandler:Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;
    invoke-static {v0}, Landroid/telephony/data/QualifiedNetworksService;->access$200(Landroid/telephony/data/QualifiedNetworksService;)Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
