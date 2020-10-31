.class abstract Landroid/telecom/Connection$Listener;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Listener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddressChanged(Landroid/telecom/Connection;Landroid/net/Uri;I)V
    .registers 4

    return-void
.end method

.method public onAudioModeIsVoipChanged(Landroid/telecom/Connection;Z)V
    .registers 3

    return-void
.end method

.method public onAudioRouteChanged(Landroid/telecom/Connection;ILjava/lang/String;)V
    .registers 4

    return-void
.end method

.method public onCallerDisplayNameChanged(Landroid/telecom/Connection;Ljava/lang/String;I)V
    .registers 4

    return-void
.end method

.method public onConferenceChanged(Landroid/telecom/Connection;Landroid/telecom/Conference;)V
    .registers 3

    return-void
.end method

.method public onConferenceMergeFailed(Landroid/telecom/Connection;)V
    .registers 2

    return-void
.end method

.method public onConferenceablesChanged(Landroid/telecom/Connection;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Connection;",
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onConnectionCapabilitiesChanged(Landroid/telecom/Connection;I)V
    .registers 3

    return-void
.end method

.method public onConnectionEvent(Landroid/telecom/Connection;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    return-void
.end method

.method public onConnectionPropertiesChanged(Landroid/telecom/Connection;I)V
    .registers 3

    return-void
.end method

.method public onConnectionTimeReset(Landroid/telecom/Connection;)V
    .registers 2

    return-void
.end method

.method public onDestroyed(Landroid/telecom/Connection;)V
    .registers 2

    return-void
.end method

.method public onDisconnected(Landroid/telecom/Connection;Landroid/telecom/DisconnectCause;)V
    .registers 3

    return-void
.end method

.method public onExtrasChanged(Landroid/telecom/Connection;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onExtrasRemoved(Landroid/telecom/Connection;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Connection;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPhoneAccountChanged(Landroid/telecom/Connection;Landroid/telecom/PhoneAccountHandle;)V
    .registers 3

    return-void
.end method

.method public onPostDialChar(Landroid/telecom/Connection;C)V
    .registers 3

    return-void
.end method

.method public onPostDialWait(Landroid/telecom/Connection;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onRemoteRttRequest(Landroid/telecom/Connection;)V
    .registers 2

    return-void
.end method

.method public onRingbackRequested(Landroid/telecom/Connection;Z)V
    .registers 3

    return-void
.end method

.method public onRttInitiationFailure(Landroid/telecom/Connection;I)V
    .registers 3

    return-void
.end method

.method public onRttInitiationSuccess(Landroid/telecom/Connection;)V
    .registers 2

    return-void
.end method

.method public onRttSessionRemotelyTerminated(Landroid/telecom/Connection;)V
    .registers 2

    return-void
.end method

.method public onStateChanged(Landroid/telecom/Connection;I)V
    .registers 3

    return-void
.end method

.method public onStatusHintsChanged(Landroid/telecom/Connection;Landroid/telecom/StatusHints;)V
    .registers 3

    return-void
.end method

.method public onSupportedAudioRoutesChanged(Landroid/telecom/Connection;I)V
    .registers 3

    return-void
.end method

.method public onVideoProviderChanged(Landroid/telecom/Connection;Landroid/telecom/Connection$VideoProvider;)V
    .registers 3

    return-void
.end method

.method public onVideoStateChanged(Landroid/telecom/Connection;I)V
    .registers 3

    return-void
.end method
