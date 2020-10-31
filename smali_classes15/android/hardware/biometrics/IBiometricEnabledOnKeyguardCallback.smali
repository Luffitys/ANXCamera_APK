.class public interface abstract Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;
.super Ljava/lang/Object;
.source "IBiometricEnabledOnKeyguardCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback$Stub;,
        Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onChanged(Landroid/hardware/biometrics/BiometricSourceType;ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
