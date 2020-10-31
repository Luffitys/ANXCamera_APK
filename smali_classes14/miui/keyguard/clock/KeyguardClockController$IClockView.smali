.class public interface abstract Lmiui/keyguard/clock/KeyguardClockController$IClockView;
.super Ljava/lang/Object;
.source "KeyguardClockController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/keyguard/clock/KeyguardClockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IClockView"
.end annotation


# virtual methods
.method public abstract getClockHeight()I
.end method

.method public abstract getClockVisibleHeight()F
.end method

.method public abstract getTopMargin()F
.end method

.method public abstract setClockAlpha(F)V
.end method

.method public abstract setOwnerInfo(Ljava/lang/String;)V
.end method

.method public abstract setScaleRatio(F)V
.end method

.method public abstract setShowLunarCalendar(Z)V
.end method

.method public abstract setTextColorDark(Z)V
.end method

.method public abstract updateResidentTimeZone(Ljava/lang/String;)V
.end method

.method public abstract updateTime()V
.end method

.method public abstract updateTimeZone(Ljava/lang/String;)V
.end method

.method public abstract updateViewTopMargin(Z)V
.end method
