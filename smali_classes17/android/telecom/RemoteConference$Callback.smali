.class public abstract Landroid/telecom/RemoteConference$Callback;
.super Ljava/lang/Object;
.source "RemoteConference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConferenceableConnectionsChanged(Landroid/telecom/RemoteConference;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/RemoteConference;",
            "Ljava/util/List<",
            "Landroid/telecom/RemoteConnection;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onConnectionAdded(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConnection;)V
    .registers 3

    return-void
.end method

.method public onConnectionCapabilitiesChanged(Landroid/telecom/RemoteConference;I)V
    .registers 3

    return-void
.end method

.method public onConnectionPropertiesChanged(Landroid/telecom/RemoteConference;I)V
    .registers 3

    return-void
.end method

.method public onConnectionRemoved(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConnection;)V
    .registers 3

    return-void
.end method

.method public onDestroyed(Landroid/telecom/RemoteConference;)V
    .registers 2

    return-void
.end method

.method public onDisconnected(Landroid/telecom/RemoteConference;Landroid/telecom/DisconnectCause;)V
    .registers 3

    return-void
.end method

.method public onExtrasChanged(Landroid/telecom/RemoteConference;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onStateChanged(Landroid/telecom/RemoteConference;II)V
    .registers 4

    return-void
.end method
