.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CALLING_KEY_BACK:I = 0x1

.field public static final CALLING_LONG_PRESS_SHUTTER:I = 0x8

.field public static final CALLING_RECEIVER_NOT_SPECIFIED:I = 0x1

.field public static final CALLING_RESTART_MODE:I = 0x7

.field public static final CALLING_SELF:I = 0x5

.field public static final CALLING_SHUTTER:I = 0x3

.field public static final CALLING_SWITCH_MODE:I = 0x4

.field public static final CALLING_TAP_DOWN:I = 0x2

.field public static final CALLING_TIMER_BURST_SHUTTER:I = 0x9

.field public static final CALLING_USER:I = 0x6


# virtual methods
.method public abstract canProvide()Z
.end method

.method public abstract onBackEvent(I)Z
.end method
