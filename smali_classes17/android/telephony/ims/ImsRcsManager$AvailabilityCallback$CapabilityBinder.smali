.class Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback$CapabilityBinder;
.super Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;
.source "ImsRcsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CapabilityBinder"
.end annotation


# instance fields
.field private mExecutor:Ljava/util/concurrent/Executor;

.field private final mLocalCallback:Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback;


# direct methods
.method constructor <init>(Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback;)V
    .registers 2

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback$CapabilityBinder;->mLocalCallback:Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback;

    return-void
.end method

.method static synthetic access$000(Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback$CapabilityBinder;Ljava/util/concurrent/Executor;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback$CapabilityBinder;->setExecutor(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private setExecutor(Ljava/util/concurrent/Executor;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback$CapabilityBinder;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCapabilitiesStatusChanged$0$ImsRcsManager$AvailabilityCallback$CapabilityBinder(I)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback$CapabilityBinder;->mLocalCallback:Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback;

    new-instance v1, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    invoke-direct {v1, p1}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback;->onAvailabilityChanged(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V

    return-void
.end method

.method public onCapabilitiesStatusChanged(I)V
    .registers 6

    iget-object v0, p0, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback$CapabilityBinder;->mLocalCallback:Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_9
    iget-object v2, p0, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback$CapabilityBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/-$$Lambda$ImsRcsManager$AvailabilityCallback$CapabilityBinder$PSokka9KL9vX-vXezL4volLutJg;

    invoke-direct {v3, p0, p1}, Landroid/telephony/ims/-$$Lambda$ImsRcsManager$AvailabilityCallback$CapabilityBinder$PSokka9KL9vX-vXezL4volLutJg;-><init>(Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback$CapabilityBinder;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    invoke-static {v0, v1}, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback$CapabilityBinder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback$CapabilityBinder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onChangeCapabilityConfigurationError(III)V
    .registers 4

    return-void
.end method

.method public onQueryCapabilityConfiguration(IIZ)V
    .registers 4

    return-void
.end method
