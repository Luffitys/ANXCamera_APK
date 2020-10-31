.class public Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;
.super Ljava/lang/Object;
.source "ImsMmTelManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsMmTelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CapabilityCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;
    }
.end annotation


# instance fields
.field private final mBinder:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;

    invoke-direct {v0, p0}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;-><init>(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;)V

    iput-object v0, p0, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;->mBinder:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;

    return-void
.end method


# virtual methods
.method public final getBinder()Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;->mBinder:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;

    return-object v0
.end method

.method public onCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .registers 2

    return-void
.end method

.method public final setExecutor(Ljava/util/concurrent/Executor;)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;->mBinder:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;

    # invokes: Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;->setExecutor(Ljava/util/concurrent/Executor;)V
    invoke-static {v0, p1}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;->access$000(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;Ljava/util/concurrent/Executor;)V

    return-void
.end method
