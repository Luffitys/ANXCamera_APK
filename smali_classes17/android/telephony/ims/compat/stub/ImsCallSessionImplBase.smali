.class public Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase;
.super Lcom/android/ims/internal/IImsCallSession$Stub;
.source "ImsCallSessionImplBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 3

    return-void
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method public consultativeTransfer(Lcom/android/ims/internal/IImsCallSession;)V
    .registers 2

    return-void
.end method

.method public deflect(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public extendToConference([Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public getCallId()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 2

    return-void
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public isInCall()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isMultiparty()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public merge()V
    .registers 1

    return-void
.end method

.method public reject(I)V
    .registers 2

    return-void
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 2

    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .registers 3

    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 2

    return-void
.end method

.method public sendRttModifyResponse(Z)V
    .registers 2

    return-void
.end method

.method public sendUssd(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final setListener(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;-><init>(Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase;Landroid/telephony/ims/aidl/IImsCallSessionListener;)V

    invoke-virtual {p0, v0}, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase;->setListener(Lcom/android/ims/internal/IImsCallSessionListener;)V

    return-void
.end method

.method public setListener(Lcom/android/ims/internal/IImsCallSessionListener;)V
    .registers 2

    return-void
.end method

.method public setMute(Z)V
    .registers 2

    return-void
.end method

.method public start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3

    return-void
.end method

.method public startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3

    return-void
.end method

.method public startDtmf(C)V
    .registers 2

    return-void
.end method

.method public stopDtmf()V
    .registers 1

    return-void
.end method

.method public terminate(I)V
    .registers 2

    return-void
.end method

.method public transfer(Ljava/lang/String;Z)V
    .registers 3

    return-void
.end method

.method public update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 3

    return-void
.end method
