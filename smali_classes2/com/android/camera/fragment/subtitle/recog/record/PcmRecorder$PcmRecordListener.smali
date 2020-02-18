.class public interface abstract Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder$PcmRecordListener;
.super Ljava/lang/Object;
.source "PcmRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PcmRecordListener"
.end annotation


# virtual methods
.method public abstract onError(I)V
.end method

.method public abstract onRecordBuffer([BIII)V
.end method

.method public abstract onRecordReleased()V
.end method

.method public abstract onRecordStarted(Z)V
.end method
