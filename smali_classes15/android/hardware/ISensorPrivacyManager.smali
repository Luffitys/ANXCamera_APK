.class public interface abstract Landroid/hardware/ISensorPrivacyManager;
.super Ljava/lang/Object;
.source "ISensorPrivacyManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ISensorPrivacyManager$Stub;,
        Landroid/hardware/ISensorPrivacyManager$Default;
    }
.end annotation


# virtual methods
.method public abstract addSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isSensorPrivacyEnabled()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setSensorPrivacy(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
