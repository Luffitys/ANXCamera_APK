.class interface abstract Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract getCallback()Landroid/support/v4/media/session/MediaSessionCompat$Callback;
.end method

.method public abstract getCallingPackage()Ljava/lang/String;
.end method

.method public abstract getCurrentControllerInfo()Landroidx/media/MediaSessionManager$RemoteUserInfo;
.end method

.method public abstract getMediaSession()Ljava/lang/Object;
.end method

.method public abstract getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;
.end method

.method public abstract getRemoteControlClient()Ljava/lang/Object;
.end method

.method public abstract getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
.end method

.method public abstract isActive()Z
.end method

.method public abstract release()V
.end method

.method public abstract sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract setActive(Z)V
.end method

.method public abstract setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V
.end method

.method public abstract setCaptioningEnabled(Z)V
.end method

.method public abstract setCurrentControllerInfo(Landroidx/media/MediaSessionManager$RemoteUserInfo;)V
.end method

.method public abstract setExtras(Landroid/os/Bundle;)V
.end method

.method public abstract setFlags(I)V
.end method

.method public abstract setMediaButtonReceiver(Landroid/app/PendingIntent;)V
.end method

.method public abstract setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V
.end method

.method public abstract setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V
.end method

.method public abstract setPlaybackToLocal(I)V
.end method

.method public abstract setPlaybackToRemote(Landroidx/media/VolumeProviderCompat;)V
.end method

.method public abstract setQueue(Ljava/util/List;)V
.end method

.method public abstract setQueueTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract setRatingType(I)V
.end method

.method public abstract setRepeatMode(I)V
.end method

.method public abstract setSessionActivity(Landroid/app/PendingIntent;)V
.end method

.method public abstract setShuffleMode(I)V
.end method
