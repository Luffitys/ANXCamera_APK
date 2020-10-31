.class public Landroid/telephony/ims/compat/stub/ImsConfigImplBase;
.super Ljava/lang/Object;
.source "ImsConfigImplBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsConfigImplBase"


# instance fields
.field mImsConfigStub:Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;-><init>(Landroid/telephony/ims/compat/stub/ImsConfigImplBase;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;

    return-void
.end method


# virtual methods
.method public getFeatureValue(IILcom/android/ims/ImsConfigListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public getIImsConfig()Lcom/android/ims/internal/IImsConfig;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;

    return-object v0
.end method

.method public getProvisionedStringValue(I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProvisionedValue(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, -0x1

    return v0
.end method

.method public getVideoQuality(Lcom/android/ims/ImsConfigListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public getVolteProvisioned()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final notifyProvisionedValueChanged(II)V
    .registers 5

    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->updateCachedValue(IIZ)V

    return-void
.end method

.method public final notifyProvisionedValueChanged(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->updateCachedValue(ILjava/lang/String;Z)V

    return-void
.end method

.method public setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public setProvisionedStringValue(ILjava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public setProvisionedValue(II)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public setVideoQuality(ILcom/android/ims/ImsConfigListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
