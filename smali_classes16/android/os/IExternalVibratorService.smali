.class public interface abstract Landroid/os/IExternalVibratorService;
.super Ljava/lang/Object;
.source "IExternalVibratorService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IExternalVibratorService$Stub;,
        Landroid/os/IExternalVibratorService$Default;
    }
.end annotation


# static fields
.field public static final SCALE_HIGH:I = 0x1

.field public static final SCALE_LOW:I = -0x1

.field public static final SCALE_MUTE:I = -0x64

.field public static final SCALE_NONE:I = 0x0

.field public static final SCALE_VERY_HIGH:I = 0x2

.field public static final SCALE_VERY_LOW:I = -0x2


# virtual methods
.method public abstract onExternalVibrationStart(Landroid/os/ExternalVibration;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onExternalVibrationStop(Landroid/os/ExternalVibration;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
