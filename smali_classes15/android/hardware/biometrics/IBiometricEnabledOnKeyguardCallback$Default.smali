.class public Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback$Default;
.super Ljava/lang/Object;
.source "IBiometricEnabledOnKeyguardCallback.java"

# interfaces
.implements Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public onChanged(Landroid/hardware/biometrics/BiometricSourceType;ZI)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
