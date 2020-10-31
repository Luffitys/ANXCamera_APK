.class public Landroid/telephony/ims/compat/feature/RcsFeature;
.super Landroid/telephony/ims/compat/feature/ImsFeature;
.source "RcsFeature.java"


# instance fields
.field private final mImsRcsBinder:Lcom/android/ims/internal/IImsRcsFeature;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/telephony/ims/compat/feature/ImsFeature;-><init>()V

    new-instance v0, Landroid/telephony/ims/compat/feature/RcsFeature$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/compat/feature/RcsFeature$1;-><init>(Landroid/telephony/ims/compat/feature/RcsFeature;)V

    iput-object v0, p0, Landroid/telephony/ims/compat/feature/RcsFeature;->mImsRcsBinder:Lcom/android/ims/internal/IImsRcsFeature;

    return-void
.end method


# virtual methods
.method public bridge synthetic getBinder()Landroid/os/IInterface;
    .registers 2

    invoke-virtual {p0}, Landroid/telephony/ims/compat/feature/RcsFeature;->getBinder()Lcom/android/ims/internal/IImsRcsFeature;

    move-result-object v0

    return-object v0
.end method

.method public final getBinder()Lcom/android/ims/internal/IImsRcsFeature;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/RcsFeature;->mImsRcsBinder:Lcom/android/ims/internal/IImsRcsFeature;

    return-object v0
.end method

.method public onFeatureReady()V
    .registers 1

    return-void
.end method

.method public onFeatureRemoved()V
    .registers 1

    return-void
.end method
