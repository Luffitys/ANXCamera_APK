.class public interface abstract Landroid/telephony/NumberVerificationCallback;
.super Ljava/lang/Object;
.source "NumberVerificationCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/NumberVerificationCallback$NumberVerificationFailureReason;
    }
.end annotation


# static fields
.field public static final REASON_CONCURRENT_REQUESTS:I = 0x4

.field public static final REASON_IN_ECBM:I = 0x5

.field public static final REASON_IN_EMERGENCY_CALL:I = 0x6

.field public static final REASON_NETWORK_NOT_AVAILABLE:I = 0x2

.field public static final REASON_TIMED_OUT:I = 0x1

.field public static final REASON_TOO_MANY_CALLS:I = 0x3

.field public static final REASON_UNSPECIFIED:I


# virtual methods
.method public onCallReceived(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onVerificationFailed(I)V
    .registers 2

    return-void
.end method
