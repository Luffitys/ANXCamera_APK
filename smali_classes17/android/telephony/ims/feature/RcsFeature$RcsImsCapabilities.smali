.class public Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;
.super Landroid/telephony/ims/feature/ImsFeature$Capabilities;
.source "RcsFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/feature/RcsFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RcsImsCapabilities"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities$RcsImsCapabilityFlag;
    }
.end annotation


# static fields
.field public static final CAPABILITY_TYPE_NONE:I = 0x0

.field public static final CAPABILITY_TYPE_OPTIONS_UCE:I = 0x1

.field public static final CAPABILITY_TYPE_PRESENCE_UCE:I = 0x2


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;-><init>(I)V

    return-void
.end method

.method private constructor <init>(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V
    .registers 3

    invoke-virtual {p1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->getMask()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/telephony/ims/feature/ImsFeature$Capabilities;Landroid/telephony/ims/feature/RcsFeature$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;-><init>(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V

    return-void
.end method


# virtual methods
.method public addCapabilities(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->addCapabilities(I)V

    return-void
.end method

.method public isCapable(I)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->isCapable(I)Z

    move-result v0

    return v0
.end method

.method public removeCapabilities(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->removeCapabilities(I)V

    return-void
.end method
