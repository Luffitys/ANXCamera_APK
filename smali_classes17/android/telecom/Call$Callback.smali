.class public abstract Landroid/telecom/Call$Callback;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Call$Callback$HandoverFailureErrors;
    }
.end annotation


# static fields
.field public static final HANDOVER_FAILURE_DEST_APP_REJECTED:I = 0x1

.field public static final HANDOVER_FAILURE_NOT_SUPPORTED:I = 0x2

.field public static final HANDOVER_FAILURE_ONGOING_EMERGENCY_CALL:I = 0x4

.field public static final HANDOVER_FAILURE_UNKNOWN:I = 0x5

.field public static final HANDOVER_FAILURE_USER_REJECTED:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallDestroyed(Landroid/telecom/Call;)V
    .registers 2

    return-void
.end method

.method public onCannedTextResponsesLoaded(Landroid/telecom/Call;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Call;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onChildrenChanged(Landroid/telecom/Call;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Call;",
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onConferenceableCallsChanged(Landroid/telecom/Call;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Call;",
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onConnectionEvent(Landroid/telecom/Call;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    return-void
.end method

.method public onDetailsChanged(Landroid/telecom/Call;Landroid/telecom/Call$Details;)V
    .registers 3

    return-void
.end method

.method public onHandoverComplete(Landroid/telecom/Call;)V
    .registers 2

    return-void
.end method

.method public onHandoverFailed(Landroid/telecom/Call;I)V
    .registers 3

    return-void
.end method

.method public onParentChanged(Landroid/telecom/Call;Landroid/telecom/Call;)V
    .registers 3

    return-void
.end method

.method public onPostDialWait(Landroid/telecom/Call;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onRttInitiationFailure(Landroid/telecom/Call;I)V
    .registers 3

    return-void
.end method

.method public onRttModeChanged(Landroid/telecom/Call;I)V
    .registers 3

    return-void
.end method

.method public onRttRequest(Landroid/telecom/Call;I)V
    .registers 3

    return-void
.end method

.method public onRttStatusChanged(Landroid/telecom/Call;ZLandroid/telecom/Call$RttCall;)V
    .registers 4

    return-void
.end method

.method public onStateChanged(Landroid/telecom/Call;I)V
    .registers 3

    return-void
.end method

.method public onVideoCallChanged(Landroid/telecom/Call;Landroid/telecom/InCallService$VideoCall;)V
    .registers 3

    return-void
.end method
