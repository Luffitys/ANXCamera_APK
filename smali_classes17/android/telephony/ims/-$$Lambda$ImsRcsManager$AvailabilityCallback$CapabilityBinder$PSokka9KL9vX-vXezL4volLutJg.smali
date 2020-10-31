.class public final synthetic Landroid/telephony/ims/-$$Lambda$ImsRcsManager$AvailabilityCallback$CapabilityBinder$PSokka9KL9vX-vXezL4volLutJg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback$CapabilityBinder;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback$CapabilityBinder;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/-$$Lambda$ImsRcsManager$AvailabilityCallback$CapabilityBinder$PSokka9KL9vX-vXezL4volLutJg;->f$0:Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback$CapabilityBinder;

    iput p2, p0, Landroid/telephony/ims/-$$Lambda$ImsRcsManager$AvailabilityCallback$CapabilityBinder$PSokka9KL9vX-vXezL4volLutJg;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/-$$Lambda$ImsRcsManager$AvailabilityCallback$CapabilityBinder$PSokka9KL9vX-vXezL4volLutJg;->f$0:Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback$CapabilityBinder;

    iget v1, p0, Landroid/telephony/ims/-$$Lambda$ImsRcsManager$AvailabilityCallback$CapabilityBinder$PSokka9KL9vX-vXezL4volLutJg;->f$1:I

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallback$CapabilityBinder;->lambda$onCapabilitiesStatusChanged$0$ImsRcsManager$AvailabilityCallback$CapabilityBinder(I)V

    return-void
.end method
