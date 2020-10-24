.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$FastmotionProAdjust;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# static fields
.field public static final ADJUST_MANUAL:I = 0x1

.field public static final ADJUST_NOT_SPECIFIED:I = -0x1

.field public static final ADJUST_NULL:I = 0x0

.field public static final DISMISS_ALPHA:I = 0x3

.field public static final DISMISS_SILENT:I = 0x1

.field public static final DISMISS_SLIDE:I = 0x2

.field public static final KEEP:I = 0x0

.field public static final TYPE_TAG:I = 0x3a4


# virtual methods
.method public abstract dismiss(II)Z
.end method

.method public abstract isShowing()Z
.end method

.method public abstract resetManually()V
.end method

.method public abstract setManuallyLayoutVisible(ZI)V
.end method

.method public abstract show()V
.end method

.method public abstract visibleHeight()I
.end method
