.class public interface abstract Landroid/hardware/miuiface/IMiuiFaceManager;
.super Ljava/lang/Object;
.source "IMiuiFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/miuiface/IMiuiFaceManager$LockoutResetCallback;,
        Landroid/hardware/miuiface/IMiuiFaceManager$RemovalCallback;,
        Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;,
        Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;
    }
.end annotation


# static fields
.field public static final TEMPLATE_INVALIDATE:I = -0x1

.field public static final TEMPLATE_NONE:I = 0x0

.field public static final TEMPLATE_SERVICE_NOT_INIT:I = -0x2

.field public static final TEMPLATE_VALIDATE:I = 0x1


# virtual methods
.method public abstract addLockoutResetCallback(Landroid/hardware/miuiface/IMiuiFaceManager$LockoutResetCallback;)V
.end method

.method public abstract authenticate(Landroid/os/CancellationSignal;ILandroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;Landroid/os/Handler;I)V
.end method

.method public abstract enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;Landroid/view/Surface;Landroid/graphics/Rect;I)V
.end method

.method public abstract enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;Landroid/view/Surface;Landroid/graphics/RectF;Landroid/graphics/RectF;I)V
.end method

.method public abstract enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;Landroid/view/Surface;Landroid/graphics/RectF;Landroid/graphics/RectF;II)V
.end method

.method public abstract extCmd(II)I
.end method

.method public abstract getEnrolledFaces()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/miuiface/Miuiface;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getManagerVersion()I
.end method

.method public abstract getVendorInfo()Ljava/lang/String;
.end method

.method public abstract hasEnrolledFaces()I
.end method

.method public abstract isFaceFeatureEnabled()Z
.end method

.method public abstract isFaceFeatureSupport()Z
.end method

.method public abstract isFaceUnlockInited()Z
.end method

.method public abstract isReleased()Z
.end method

.method public abstract isSupportMultiFaceInput()Z
.end method

.method public abstract isSupportScreenOnDelayed()Z
.end method

.method public abstract preInitAuthen()V
.end method

.method public abstract release()V
.end method

.method public abstract remove(Landroid/hardware/miuiface/Miuiface;Landroid/hardware/miuiface/IMiuiFaceManager$RemovalCallback;)V
.end method

.method public abstract rename(ILjava/lang/String;)V
.end method

.method public abstract resetTimeout([B)V
.end method
