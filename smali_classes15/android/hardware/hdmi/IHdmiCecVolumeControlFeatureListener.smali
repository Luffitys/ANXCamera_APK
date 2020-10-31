.class public interface abstract Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;
.super Ljava/lang/Object;
.source "IHdmiCecVolumeControlFeatureListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener$Stub;,
        Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onHdmiCecVolumeControlFeature(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
