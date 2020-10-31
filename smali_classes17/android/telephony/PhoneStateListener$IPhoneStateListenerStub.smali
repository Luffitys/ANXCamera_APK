.class Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;
.super Lcom/android/internal/telephony/IPhoneStateListener$Stub;
.source "PhoneStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IPhoneStateListenerStub"
.end annotation


# instance fields
.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/telephony/PhoneStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/telephony/PhoneStateListener;Ljava/util/concurrent/Executor;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic lambda$onActiveDataSubIdChanged$56(Landroid/telephony/PhoneStateListener;I)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onActiveDataSubscriptionIdChanged(I)V

    return-void
.end method

.method static synthetic lambda$onBarringInfoChanged$62(Landroid/telephony/PhoneStateListener;Landroid/telephony/BarringInfo;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onBarringInfoChanged(Landroid/telephony/BarringInfo;)V

    return-void
.end method

.method static synthetic lambda$onCallAttributesChanged$54(Landroid/telephony/PhoneStateListener;Landroid/telephony/CallAttributes;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onCallAttributesChanged(Landroid/telephony/CallAttributes;)V

    return-void
.end method

.method static synthetic lambda$onCallDisconnectCauseChanged$24(Landroid/telephony/PhoneStateListener;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallDisconnectCauseChanged(II)V

    return-void
.end method

.method static synthetic lambda$onCallForwardingIndicatorChanged$6(Landroid/telephony/PhoneStateListener;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onCallForwardingIndicatorChanged(Z)V

    return-void
.end method

.method static synthetic lambda$onCallStateChanged$10(Landroid/telephony/PhoneStateListener;ILjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onCarrierNetworkChange$42(Landroid/telephony/PhoneStateListener;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onCarrierNetworkChange(Z)V

    return-void
.end method

.method static synthetic lambda$onCellInfoChanged$20(Landroid/telephony/PhoneStateListener;Ljava/util/List;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$onCellLocationChanged$8(Landroid/telephony/PhoneStateListener;Landroid/telephony/CellLocation;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellLocation;)V

    return-void
.end method

.method static synthetic lambda$onDataActivationStateChanged$34(Landroid/telephony/PhoneStateListener;I)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onDataActivationStateChanged(I)V

    return-void
.end method

.method static synthetic lambda$onDataActivity$16(Landroid/telephony/PhoneStateListener;I)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onDataActivity(I)V

    return-void
.end method

.method static synthetic lambda$onDataConnectionRealTimeInfoChanged$28(Landroid/telephony/PhoneStateListener;Landroid/telephony/DataConnectionRealTimeInfo;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V

    return-void
.end method

.method static synthetic lambda$onDataConnectionStateChanged$12(Landroid/telephony/PhoneStateListener;I)V
    .registers 3

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(II)V

    invoke-virtual {p0, v0}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(I)V

    return-void
.end method

.method static synthetic lambda$onDataConnectionStateChanged$14(Landroid/telephony/PhoneStateListener;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(II)V

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(I)V

    return-void
.end method

.method static synthetic lambda$onDisplayInfoChanged$38(Landroid/telephony/PhoneStateListener;Landroid/telephony/TelephonyDisplayInfo;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V

    return-void
.end method

.method static synthetic lambda$onEmergencyNumberListChanged$44(Landroid/telephony/PhoneStateListener;Ljava/util/Map;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onEmergencyNumberListChanged(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic lambda$onImsCallDisconnectCauseChanged$58(Landroid/telephony/PhoneStateListener;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onImsCallDisconnectCauseChanged(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method static synthetic lambda$onMessageWaitingIndicatorChanged$4(Landroid/telephony/PhoneStateListener;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V

    return-void
.end method

.method static synthetic lambda$onOemHookRawEvent$40(Landroid/telephony/PhoneStateListener;[B)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onOemHookRawEvent([B)V

    return-void
.end method

.method static synthetic lambda$onOutgoingEmergencyCall$46(Landroid/telephony/PhoneStateListener;Landroid/telephony/emergency/EmergencyNumber;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onOutgoingEmergencyCall(Landroid/telephony/emergency/EmergencyNumber;)V

    return-void
.end method

.method static synthetic lambda$onOutgoingEmergencySms$48(Landroid/telephony/PhoneStateListener;Landroid/telephony/emergency/EmergencyNumber;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onOutgoingEmergencySms(Landroid/telephony/emergency/EmergencyNumber;)V

    return-void
.end method

.method static synthetic lambda$onPhoneCapabilityChanged$50(Landroid/telephony/PhoneStateListener;Landroid/telephony/PhoneCapability;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V

    return-void
.end method

.method static synthetic lambda$onPreciseCallStateChanged$22(Landroid/telephony/PhoneStateListener;Landroid/telephony/PreciseCallState;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V

    return-void
.end method

.method static synthetic lambda$onPreciseDataConnectionStateChanged$26(Landroid/telephony/PhoneStateListener;Landroid/telephony/PreciseDataConnectionState;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V

    return-void
.end method

.method static synthetic lambda$onRadioPowerStateChanged$52(Landroid/telephony/PhoneStateListener;I)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onRadioPowerStateChanged(I)V

    return-void
.end method

.method static synthetic lambda$onRegistrationFailed$60(Landroid/telephony/PhoneStateListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Landroid/telephony/PhoneStateListener;->onRegistrationFailed(Landroid/telephony/CellIdentity;Ljava/lang/String;III)V

    return-void
.end method

.method static synthetic lambda$onServiceStateChanged$0(Landroid/telephony/PhoneStateListener;Landroid/telephony/ServiceState;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic lambda$onSignalStrengthChanged$2(Landroid/telephony/PhoneStateListener;I)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthChanged(I)V

    return-void
.end method

.method static synthetic lambda$onSignalStrengthsChanged$18(Landroid/telephony/PhoneStateListener;Landroid/telephony/SignalStrength;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method static synthetic lambda$onSrvccStateChanged$30(Landroid/telephony/PhoneStateListener;I)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onSrvccStateChanged(I)V

    return-void
.end method

.method static synthetic lambda$onUserMobileDataStateChanged$36(Landroid/telephony/PhoneStateListener;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onUserMobileDataStateChanged(Z)V

    return-void
.end method

.method static synthetic lambda$onVoiceActivationStateChanged$32(Landroid/telephony/PhoneStateListener;I)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onVoiceActivationStateChanged(I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onActiveDataSubIdChanged$57$PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$xj3Oc59znNki36q4HkPlDthcris;

    invoke-direct {v1, p1, p2}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$xj3Oc59znNki36q4HkPlDthcris;-><init>(Landroid/telephony/PhoneStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onBarringInfoChanged$63$PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;Landroid/telephony/BarringInfo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$enPCQDzvJfQRZN3T7bDULTM8LbU;

    invoke-direct {v1, p1, p2}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$enPCQDzvJfQRZN3T7bDULTM8LbU;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/BarringInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onCallAttributesChanged$55$PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;Landroid/telephony/CallAttributes;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$Up-d_3alwM9q0g0LsqopmPRkRrc;

    invoke-direct {v1, p1, p2}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$Up-d_3alwM9q0g0LsqopmPRkRrc;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/CallAttributes;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onCallDisconnectCauseChanged$25$PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$hxq77a5O_MUfoptHg15ipzFvMkI;

    invoke-direct {v1, p1, p2, p3}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$hxq77a5O_MUfoptHg15ipzFvMkI;-><init>(Landroid/telephony/PhoneStateListener;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onCallForwardingIndicatorChanged$7$PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$WYWtWHdkZDxBd9anjoxyZozPWHc;

    invoke-direct {v1, p1, p2}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$WYWtWHdkZDxBd9anjoxyZozPWHc;-><init>(Landroid/telephony/PhoneStateListener;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onCallStateChanged$11$PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$6czWSGzxct0CXPVO54T0aq05qls;

    invoke-direct {v1, p1, p2, p3}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$6czWSGzxct0CXPVO54T0aq05qls;-><init>(Landroid/telephony/PhoneStateListener;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onCarrierNetworkChange$43$PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$dxRm9dBua84gnuIxdXsCrayRwig;

    invoke-direct {v1, p1, p2}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$dxRm9dBua84gnuIxdXsCrayRwig;-><init>(Landroid/telephony/PhoneStateListener;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onCellInfoChanged$21$PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$Q2A8FgYlU8_D6PD78tThGut_rTc;

    invoke-direct {v1, p1, p2}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$Q2A8FgYlU8_D6PD78tThGut_rTc;-><init>(Landroid/telephony/PhoneStateListener;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onCellLocationChanged$9$PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;Landroid/telephony/CellLocation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$2cMrwdqnKBpixpApeIX38rmRLak;

    invoke-direct {v1, p1, p2}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$2cMrwdqnKBpixpApeIX38rmRLak;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/CellLocation;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onDataActivationStateChanged$35$PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$W65ui1dCCc-JnQa7gon1I7Bz7Sk;

    invoke-direct {v1, p1, p2}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$W65ui1dCCc-JnQa7gon1I7Bz7Sk;-><init>(Landroid/telephony/PhoneStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onDataActivity$17$PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$FBJGFGXoSvidKfm50cEzC3i9rVk;

    invoke-direct {v1, p1, p2}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$FBJGFGXoSvidKfm50cEzC3i9rVk;-><init>(Landroid/telephony/PhoneStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onDataConnectionRealTimeInfoChanged$29$PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;Landroid/telephony/DataConnectionRealTimeInfo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$IU278K5QbmReF-mbpcNVAvVlhFI;

    invoke-direct {v1, p1, p2}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$IU278K5QbmReF-mbpcNVAvVlhFI;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/DataConnectionRealTimeInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onDataConnectionStateChanged$13$PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$VCD7izkh9A_sRz9zMUPYy-TktLo;

    invoke-direct {v1, p1, p2}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$VCD7izkh9A_sRz9zMUPYy-TktLo;-><init>(Landroid/telephony/PhoneStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onDataConnectionStateChanged$15$PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$2XBMUIj05jt4Xm08XAsE57q5gCc;

    invoke-direct {v1, p1, p2, p3}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$2XBMUIj05jt4Xm08XAsE57q5gCc;-><init>(Landroid/telephony/PhoneStateListener;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onDisplayInfoChanged$39$PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;Landroid/telephony/TelephonyDisplayInfo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$LUeazoo9zMnCFkFubo9xMWZDEO0;

    invoke-direct {v1, p1, p2}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$LUeazoo9zMnCFkFubo9xMWZDEO0;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/TelephonyDisplayInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onEmergencyNumberListChanged$45$PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$jGj-qFMdpjbsKaUErqJEeOALEGo;

    invoke-direct {v1, p1, p2}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$jGj-qFMdpjbsKaUErqJEeOALEGo;-><init>(Landroid/telephony/PhoneStateListener;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onImsCallDisconnectCauseChanged$59$PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$McXM4TNoGqMoeW3gLTJl6vK5wTE;

    invoke-direct {v1, p1, p2}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$McXM4TNoGqMoeW3gLTJl6vK5wTE;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/ims/ImsReasonInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onMessageWaitingIndicatorChanged$5$PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$TqrkuLPlaG_ucU7VbLS4tnf8hG8;

    invoke-direct {v1, p1, p2}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$TqrkuLPlaG_ucU7VbLS4tnf8hG8;-><init>(Landroid/telephony/PhoneStateListener;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onOemHookRawEvent$41$PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$3c5FK_Juffs31qkHzWgSSJac9TU;

    invoke-direct {v1, p1, p2}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$3c5FK_Juffs31qkHzWgSSJac9TU;-><init>(Landroid/telephony/PhoneStateListener;[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onOutgoingEmergencyCall$47$PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;Landroid/telephony/emergency/EmergencyNumber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$xu0QkHLAeED9Ly-ML3fa5OlPURk;

    invoke-direct {v1, p1, p2}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$xu0QkHLAeED9Ly-ML3fa5OlPURk;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/emergency/EmergencyNumber;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onOutgoingEmergencySms$49$PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;Landroid/telephony/emergency/EmergencyNumber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$85JHkw2A6rMO6fdvXlKO8s3mvuo;

    invoke-direct {v1, p1, p2}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$85JHkw2A6rMO6fdvXlKO8s3mvuo;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/emergency/EmergencyNumber;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onPhoneCapabilityChanged$51$PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;Landroid/telephony/PhoneCapability;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$tYwneWpJ9F_F7uty5T42Ut4IQgA;

    invoke-direct {v1, p1, p2}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$tYwneWpJ9F_F7uty5T42Ut4IQgA;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/PhoneCapability;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onPreciseCallStateChanged$23$PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;Landroid/telephony/PreciseCallState;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$4NHt5Shg_DHV-T1IxfcQLHP5-j0;

    invoke-direct {v1, p1, p2}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$4NHt5Shg_DHV-T1IxfcQLHP5-j0;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/PreciseCallState;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onPreciseDataConnectionStateChanged$27$PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;Landroid/telephony/PreciseDataConnectionState;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$HEcWn-J1WRb0wLERu2qoMIZDfjY;

    invoke-direct {v1, p1, p2}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$HEcWn-J1WRb0wLERu2qoMIZDfjY;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/PreciseDataConnectionState;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onRadioPowerStateChanged$53$PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$1srlma37eoivpgTHDxtCv705NxM;

    invoke-direct {v1, p1, p2}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$1srlma37eoivpgTHDxtCv705NxM;-><init>(Landroid/telephony/PhoneStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onRegistrationFailed$61$PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v8, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$F094bbf2wiAS4Xek655AoA3XPqk;

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$F094bbf2wiAS4Xek655AoA3XPqk;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onServiceStateChanged$1$PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;Landroid/telephony/ServiceState;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$nrGqSRBJrc3_EwotCDNwfKeizIo;

    invoke-direct {v1, p1, p2}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$nrGqSRBJrc3_EwotCDNwfKeizIo;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/ServiceState;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onSignalStrengthChanged$3$PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$5J-sdvem6pUpdVwRdm8IbDhvuv8;

    invoke-direct {v1, p1, p2}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$5J-sdvem6pUpdVwRdm8IbDhvuv8;-><init>(Landroid/telephony/PhoneStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onSignalStrengthsChanged$19$PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;Landroid/telephony/SignalStrength;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$lP7_Xy6P82nXGbUQ_ZUY6rZR4bI;

    invoke-direct {v1, p1, p2}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$lP7_Xy6P82nXGbUQ_ZUY6rZR4bI;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/SignalStrength;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onSrvccStateChanged$31$PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$ygzOWFRiY4sZQ4WYUPIefqgiGvM;

    invoke-direct {v1, p1, p2}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$ygzOWFRiY4sZQ4WYUPIefqgiGvM;-><init>(Landroid/telephony/PhoneStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onUserMobileDataStateChanged$37$PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$5Uf5OZWCyPD0lZtySzbYw18FWhU;

    invoke-direct {v1, p1, p2}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$5Uf5OZWCyPD0lZtySzbYw18FWhU;-><init>(Landroid/telephony/PhoneStateListener;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onVoiceActivationStateChanged$33$PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$y-tK7my_uXPo_oQ7AytfnekGEbU;

    invoke-direct {v1, p1, p2}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$y-tK7my_uXPo_oQ7AytfnekGEbU;-><init>(Landroid/telephony/PhoneStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActiveDataSubIdChanged(I)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$GJ2YJ4ARy5-u2bWutnqrYMAsLYA;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$GJ2YJ4ARy5-u2bWutnqrYMAsLYA;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onBarringInfoChanged(Landroid/telephony/BarringInfo;)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$jTiEa3GYrDHi81x7zieU4nSnaeQ;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$jTiEa3GYrDHi81x7zieU4nSnaeQ;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/BarringInfo;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onCallAttributesChanged(Landroid/telephony/CallAttributes;)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$XUG0CXbGDJ3aeL69w-T91MxLWmQ;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$XUG0CXbGDJ3aeL69w-T91MxLWmQ;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/CallAttributes;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onCallDisconnectCauseChanged(II)V
    .registers 5

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$icX71zgNszuMfnDaCmahcqWacFM;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$icX71zgNszuMfnDaCmahcqWacFM;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;II)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onCallForwardingIndicatorChanged(Z)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$1M3m0i6211i2YjWyTDT7l0bJm3I;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$1M3m0i6211i2YjWyTDT7l0bJm3I;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Z)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$oDAZqs8paeefe_3k_uRKV5plQW4;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$oDAZqs8paeefe_3k_uRKV5plQW4;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;ILjava/lang/String;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onCarrierNetworkChange(Z)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$SLDsZb_RTXJpIvKJwCENgXrSXcU;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$SLDsZb_RTXJpIvKJwCENgXrSXcU;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Z)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$yvQnAlFGg5EWDG2vcA9X-4xnalA;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$yvQnAlFGg5EWDG2vcA9X-4xnalA;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Ljava/util/List;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellIdentity;)V
    .registers 5

    if-nez p1, :cond_7

    invoke-static {}, Landroid/telephony/CellLocation;->getEmpty()Landroid/telephony/CellLocation;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-virtual {p1}, Landroid/telephony/CellIdentity;->asCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    :goto_b
    iget-object v1, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/PhoneStateListener;

    if-nez v1, :cond_16

    return-void

    :cond_16
    new-instance v2, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$Hbn6-eZxY2p3rjOfStodI04A8E8;

    invoke-direct {v2, p0, v1, v0}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$Hbn6-eZxY2p3rjOfStodI04A8E8;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/CellLocation;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onDataActivationStateChanged(I)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$t2gWJ_jA36kAdNXSmlzw85aU-tM;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$t2gWJ_jA36kAdNXSmlzw85aU-tM;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onDataActivity(I)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$l57DgyMDrONq3sajd_dBE967ClU;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$l57DgyMDrONq3sajd_dBE967ClU;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$OfwFKKtcQHRmtv70FCopw6FDAAU;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$OfwFKKtcQHRmtv70FCopw6FDAAU;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/DataConnectionRealTimeInfo;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .registers 6

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_b

    return-void

    :cond_b
    const/4 v1, 0x4

    if-ne p1, v1, :cond_23

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v1

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_23

    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$NjMtWvO8dQakD688KRREWiYI4JI;

    invoke-direct {v1, p0, v0, p2}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$NjMtWvO8dQakD688KRREWiYI4JI;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    goto :goto_2b

    :cond_23
    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$pLr-IfJJu1u_YG6I5LI0iHTuBi0;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$pLr-IfJJu1u_YG6I5LI0iHTuBi0;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;II)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :goto_2b
    return-void
.end method

.method public onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$Ju-ddK8E8x5tfEZmkvwBIYJDPvE;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$Ju-ddK8E8x5tfEZmkvwBIYJDPvE;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/TelephonyDisplayInfo;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onEmergencyNumberListChanged(Ljava/util/Map;)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$d9DVwzLraeX80tegF_wEzf_k2FI;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$d9DVwzLraeX80tegF_wEzf_k2FI;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Ljava/util/Map;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onImsCallDisconnectCauseChanged(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$kBtYmLansNh43SPn9TbXXwzfjhU;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$kBtYmLansNh43SPn9TbXXwzfjhU;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/ims/ImsReasonInfo;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$okPCYOx4UxYuvUHlM2iS425QGIg;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$okPCYOx4UxYuvUHlM2iS425QGIg;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Z)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onOemHookRawEvent([B)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$DwLKzyC4oFq0Am-zrmIKCBlAkSw;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$DwLKzyC4oFq0Am-zrmIKCBlAkSw;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;[B)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onOutgoingEmergencyCall(Landroid/telephony/emergency/EmergencyNumber;)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$BsQWpotqnIoEH_U0akIHaOPMJEw;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$BsQWpotqnIoEH_U0akIHaOPMJEw;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/emergency/EmergencyNumber;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onOutgoingEmergencySms(Landroid/telephony/emergency/EmergencyNumber;)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$T_JEoJRE8dPShC5x0Epb3dZudWU;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$T_JEoJRE8dPShC5x0Epb3dZudWU;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/emergency/EmergencyNumber;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$wjRj9OdX5wSkxhrYxPCG-Ew6YXQ;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$wjRj9OdX5wSkxhrYxPCG-Ew6YXQ;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/PhoneCapability;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$bELzxgwsPigyVKYkAXBO2BjcSm8;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$bELzxgwsPigyVKYkAXBO2BjcSm8;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/PreciseCallState;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$RC2x2ijetA-pQrLa4QakzMBjh_k;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$RC2x2ijetA-pQrLa4QakzMBjh_k;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/PreciseDataConnectionState;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onRadioPowerStateChanged(I)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$VxFLOQdMp2vINeouS7TeF9r-gG0;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$VxFLOQdMp2vINeouS7TeF9r-gG0;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onRegistrationFailed(Landroid/telephony/CellIdentity;Ljava/lang/String;III)V
    .registers 16

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v9, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$GgIjtfA23XjACIgpJdRWSJCTMJY;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$GgIjtfA23XjACIgpJdRWSJCTMJY;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V

    invoke-static {v9}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$uC5syhzl229gIpaK7Jfs__OCJxQ;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$uC5syhzl229gIpaK7Jfs__OCJxQ;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/ServiceState;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onSignalStrengthChanged(I)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$M39is_Zyt8D7Camw2NS4EGTDn-s;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$M39is_Zyt8D7Camw2NS4EGTDn-s;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$j6NpsS_PE3VHutxIDEmwFHop7Yc;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$j6NpsS_PE3VHutxIDEmwFHop7Yc;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/SignalStrength;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onSrvccStateChanged(I)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$nR7W5ox6SCgPxtH9IRcENwKeFI4;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$nR7W5ox6SCgPxtH9IRcENwKeFI4;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onUserMobileDataStateChanged(Z)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$5uu-05j4ojTh9mEHkN-ynQqQRGM;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$5uu-05j4ojTh9mEHkN-ynQqQRGM;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Z)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onVoiceActivationStateChanged(I)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v1, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$5rF2IFj8mrb7uZc0HMKiuCodUn0;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/-$$Lambda$PhoneStateListener$IPhoneStateListenerStub$5rF2IFj8mrb7uZc0HMKiuCodUn0;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
