.class public interface abstract Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;
.super Ljava/lang/Object;
.source "IHdmiControlStatusChangeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/IHdmiControlStatusChangeListener$Stub;,
        Landroid/hardware/hdmi/IHdmiControlStatusChangeListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onStatusChange(ZZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
