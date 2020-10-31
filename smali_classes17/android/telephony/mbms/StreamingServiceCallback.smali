.class public Landroid/telephony/mbms/StreamingServiceCallback;
.super Ljava/lang/Object;
.source "StreamingServiceCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/StreamingServiceCallback$StreamingServiceError;
    }
.end annotation


# static fields
.field public static final SIGNAL_STRENGTH_UNAVAILABLE:I = -0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBroadcastSignalStrengthUpdated(I)V
    .registers 2

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onMediaDescriptionUpdated()V
    .registers 1

    return-void
.end method

.method public onStreamMethodUpdated(I)V
    .registers 2

    return-void
.end method

.method public onStreamStateUpdated(II)V
    .registers 3

    return-void
.end method
