.class public Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback;
.super Ljava/lang/Object;
.source "ImsRcsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsRcsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AvailabilityCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback$CapabilityBinder;
    }
.end annotation


# instance fields
.field private final mBinder:Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback$CapabilityBinder;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback$CapabilityBinder;

    invoke-direct {v0, p0}, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback$CapabilityBinder;-><init>(Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback;)V

    iput-object v0, p0, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback;->mBinder:Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback$CapabilityBinder;

    return-void
.end method

.method static synthetic access$100(Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback;Ljava/util/concurrent/Executor;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback;->setExecutor(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private setExecutor(Ljava/util/concurrent/Executor;)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback;->mBinder:Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback$CapabilityBinder;

    # invokes: Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback$CapabilityBinder;->setExecutor(Ljava/util/concurrent/Executor;)V
    invoke-static {v0, p1}, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback$CapabilityBinder;->access$000(Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback$CapabilityBinder;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final getBinder()Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback;->mBinder:Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback$CapabilityBinder;

    return-object v0
.end method

.method public onAvailabilityChanged(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V
    .registers 2

    return-void
.end method
