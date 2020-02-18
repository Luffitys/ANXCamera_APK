.class public interface abstract Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;
.super Ljava/lang/Object;
.source "ConferenceCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/conferencemanager/callback/ConferenceCallback$ParticipantVolume;
    }
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/String;Lcom/xiaomi/conferencemanager/ConferenceManager$EngineErrorTypeT;)V
.end method

.method public abstract onGetFirstAudioSample()V
.end method

.method public abstract onGetFirstVideoSample(Ljava/lang/String;)V
.end method

.method public abstract onGetSpeekerDetect([Ljava/lang/String;)V
.end method

.method public abstract onLoad(Z)V
.end method

.method public abstract onLocalUserJoined()V
.end method

.method public abstract onLocalUserLeaved(Lcom/xiaomi/conferencemanager/ConferenceManager$EngineErrorTypeT;)V
.end method

.method public abstract onParticipantsVolumeChanged([Lcom/xiaomi/conferencemanager/callback/ConferenceCallback$ParticipantVolume;)V
.end method

.method public abstract onRemoteAudioStreamCreated(Ljava/lang/String;)V
.end method

.method public abstract onRemoteAudioStreamRemoved(Ljava/lang/String;)V
.end method

.method public abstract onRemoteSourceAdded(Ljava/lang/String;J)V
.end method

.method public abstract onRemoteSourceRemoved(Ljava/lang/String;J)V
.end method

.method public abstract onRemoteUserJoined(Ljava/lang/String;)V
.end method

.method public abstract onRemoteUserLeaved(Ljava/lang/String;)V
.end method

.method public abstract onRemoteVidResize(Ljava/lang/String;II)V
.end method

.method public abstract onRemoteVidStreamCreated(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onRemoteVidStreamRemoved(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSpeakingStatusChanged(Ljava/lang/String;Z)V
.end method

.method public abstract onStartCamera()V
.end method

.method public abstract onStopCamera()V
.end method
