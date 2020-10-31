.class public final synthetic Landroid/telephony/ims/feature/-$$Lambda$ImsFeature$9bLETU1BeS-dFzQnbBBs3kwaz-8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/feature/ImsFeature$Capabilities;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/feature/-$$Lambda$ImsFeature$9bLETU1BeS-dFzQnbBBs3kwaz-8;->f$0:Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/feature/-$$Lambda$ImsFeature$9bLETU1BeS-dFzQnbBBs3kwaz-8;->f$0:Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    check-cast p1, Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    invoke-static {v0, p1}, Landroid/telephony/ims/feature/ImsFeature;->lambda$notifyCapabilitiesStatusChanged$1(Landroid/telephony/ims/feature/ImsFeature$Capabilities;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method
