.class public interface abstract Landroid/hardware/ICameraServiceProxy;
.super Ljava/lang/Object;
.source "ICameraServiceProxy.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ICameraServiceProxy$Stub;,
        Landroid/hardware/ICameraServiceProxy$Default;
    }
.end annotation


# static fields
.field public static final CAMERA_API_LEVEL_1:I = 0x1

.field public static final CAMERA_API_LEVEL_2:I = 0x2

.field public static final CAMERA_FACING_BACK:I = 0x0

.field public static final CAMERA_FACING_EXTERNAL:I = 0x2

.field public static final CAMERA_FACING_FRONT:I = 0x1

.field public static final CAMERA_STATE_ACTIVE:I = 0x1

.field public static final CAMERA_STATE_CLOSED:I = 0x3

.field public static final CAMERA_STATE_IDLE:I = 0x2

.field public static final CAMERA_STATE_OPEN:I


# virtual methods
.method public abstract notifyCameraState(Ljava/lang/String;IILjava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract pingForUserUpdate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
