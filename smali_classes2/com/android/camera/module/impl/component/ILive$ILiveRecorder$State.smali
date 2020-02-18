.class public interface abstract Lcom/android/camera/module/impl/component/ILive$ILiveRecorder$State;
.super Ljava/lang/Object;
.source "ILive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "State"
.end annotation


# static fields
.field public static final IDLE:I = 0x0

.field public static final PENDING_PAUSE_RECORDING:I = 0x6

.field public static final PENDING_RESUME_RECORDING:I = 0x7

.field public static final PENDING_START_RECORDING:I = 0x4

.field public static final PENDING_STOP_RECORDING:I = 0x5

.field public static final PREVIEWING:I = 0x1

.field public static final RECORDING:I = 0x2

.field public static final RECORDING_DONE:I = 0x8

.field public static final RECORDING_ERROR:I = 0x9

.field public static final RECORDING_PAUSED:I = 0x3
