.class interface abstract Landroid/hardware/miuiface/BiometricClient$ServiceCallback;
.super Ljava/lang/Object;
.source "BiometricClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/miuiface/BiometricClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ServiceCallback"
.end annotation


# virtual methods
.method public abstract onBiometricBundleCallback(IILandroid/os/Bundle;)V
.end method

.method public abstract onBiometricEventCallback(IIII)V
.end method

.method public abstract onBiometricEventClassLoader(Landroid/os/Bundle;)V
.end method

.method public abstract onBiometricServiceConnected()V
.end method

.method public abstract onBiometricServiceDisconnected()V
.end method
