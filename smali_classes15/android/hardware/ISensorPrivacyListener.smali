.class public interface abstract Landroid/hardware/ISensorPrivacyListener;
.super Ljava/lang/Object;
.source "ISensorPrivacyListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ISensorPrivacyListener$Stub;,
        Landroid/hardware/ISensorPrivacyListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onSensorPrivacyChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
