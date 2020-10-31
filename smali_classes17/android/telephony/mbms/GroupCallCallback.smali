.class public interface abstract Landroid/telephony/mbms/GroupCallCallback;
.super Ljava/lang/Object;
.source "GroupCallCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/GroupCallCallback$GroupCallError;
    }
.end annotation


# static fields
.field public static final SIGNAL_STRENGTH_UNAVAILABLE:I = -0x1


# virtual methods
.method public onBroadcastSignalStrengthUpdated(I)V
    .registers 2

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onGroupCallStateChanged(II)V
    .registers 3

    return-void
.end method
