.class public Landroid/telephony/ims/compat/feature/MMTelFeature;
.super Landroid/telephony/ims/compat/feature/ImsFeature;
.source "MMTelFeature.java"


# instance fields
.field private final mImsMMTelBinder:Lcom/android/ims/internal/IImsMMTelFeature;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/telephony/ims/compat/feature/ImsFeature;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/compat/feature/MMTelFeature$1;-><init>(Landroid/telephony/ims/compat/feature/MMTelFeature;)V

    iput-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature;->mImsMMTelBinder:Lcom/android/ims/internal/IImsMMTelFeature;

    return-void
.end method

.method static synthetic access$000(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature;->mLock:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .registers 2

    return-void
.end method

.method public createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;
    .registers 5

    const/4 v0, 0x0

    return-object v0
.end method

.method public createCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    .registers 5

    const/4 v0, 0x0

    return-object v0
.end method

.method public endSession(I)V
    .registers 2

    return-void
.end method

.method public bridge synthetic getBinder()Landroid/os/IInterface;
    .registers 2

    invoke-virtual {p0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getBinder()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v0

    return-object v0
.end method

.method public final getBinder()Lcom/android/ims/internal/IImsMMTelFeature;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature;->mImsMMTelBinder:Lcom/android/ims/internal/IImsMMTelFeature;

    return-object v0
.end method

.method public getConfigInterface()Lcom/android/ims/internal/IImsConfig;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEcbmInterface()Landroid/telephony/ims/stub/ImsEcbmImplBase;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMultiEndpointInterface()Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUtInterface()Landroid/telephony/ims/stub/ImsUtImplBase;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public isConnected(II)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public isOpened()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onFeatureReady()V
    .registers 1

    return-void
.end method

.method public onFeatureRemoved()V
    .registers 1

    return-void
.end method

.method public removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .registers 2

    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .registers 3

    return-void
.end method

.method public startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public turnOffIms()V
    .registers 1

    return-void
.end method

.method public turnOnIms()V
    .registers 1

    return-void
.end method
