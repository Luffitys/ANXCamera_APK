.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# static fields
.field public static final DISMISS_ALPHA:I = 0x3

.field public static final DISMISS_SILENT:I = 0x1

.field public static final DISMISS_SLIDE:I = 0x2

.field public static final KEEP:I = 0x0

.field public static final TYPE_TAG:I = 0xfd


# virtual methods
.method public abstract dismiss(II)Z
.end method

.method public abstract getDistanceForWM()I
.end method

.method public abstract isWatermarkPanelShow()Z
.end method

.method public abstract requestLocationPermission(Lcom/android/camera/aiwatermark/lisenter/IPermissionListener;)V
.end method

.method public abstract show()V
.end method

.method public abstract startDottedLineAnimation(Landroid/view/View;)V
.end method

.method public abstract switchType(Ljava/lang/String;Z)V
.end method
