.class public Landroid/telephony/ims/ProvisioningManager;
.super Ljava/lang/Object;
.source "ProvisioningManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ProvisioningManager$Callback;,
        Landroid/telephony/ims/ProvisioningManager$StringResultError;
    }
.end annotation


# static fields
.field public static final KEY_1X_EPDG_TIMER_SEC:I = 0x40

.field public static final KEY_1X_THRESHOLD:I = 0x3b

.field public static final KEY_AMR_BANDWIDTH_EFFICIENT_PAYLOAD_TYPE:I = 0x32

.field public static final KEY_AMR_CODEC_MODE_SET_VALUES:I = 0x0

.field public static final KEY_AMR_DEFAULT_ENCODING_MODE:I = 0x35

.field public static final KEY_AMR_OCTET_ALIGNED_PAYLOAD_TYPE:I = 0x31

.field public static final KEY_AMR_WB_BANDWIDTH_EFFICIENT_PAYLOAD_TYPE:I = 0x30

.field public static final KEY_AMR_WB_CODEC_MODE_SET_VALUES:I = 0x1

.field public static final KEY_AMR_WB_OCTET_ALIGNED_PAYLOAD_TYPE:I = 0x2f

.field public static final KEY_DTMF_NB_PAYLOAD_TYPE:I = 0x34

.field public static final KEY_DTMF_WB_PAYLOAD_TYPE:I = 0x33

.field public static final KEY_EAB_PROVISIONING_STATUS:I = 0x19

.field public static final KEY_ENABLE_SILENT_REDIAL:I = 0x6

.field public static final KEY_LOCAL_BREAKOUT_PCSCF_ADDRESS:I = 0x1f

.field public static final KEY_LTE_EPDG_TIMER_SEC:I = 0x3e

.field public static final KEY_LTE_THRESHOLD_1:I = 0x38

.field public static final KEY_LTE_THRESHOLD_2:I = 0x39

.field public static final KEY_LTE_THRESHOLD_3:I = 0x3a

.field public static final KEY_MINIMUM_SIP_SESSION_EXPIRATION_TIMER_SEC:I = 0x3

.field public static final KEY_MOBILE_DATA_ENABLED:I = 0x1d

.field public static final KEY_MULTIENDPOINT_ENABLED:I = 0x41

.field public static final KEY_RCS_AVAILABILITY_CACHE_EXPIRATION_SEC:I = 0x13

.field public static final KEY_RCS_CAPABILITIES_CACHE_EXPIRATION_SEC:I = 0x12

.field public static final KEY_RCS_CAPABILITIES_POLL_INTERVAL_SEC:I = 0x14

.field public static final KEY_RCS_CAPABILITY_DISCOVERY_ENABLED:I = 0x11

.field public static final KEY_RCS_CAPABILITY_POLL_LIST_SUB_EXP_SEC:I = 0x17

.field public static final KEY_RCS_MAX_NUM_ENTRIES_IN_RCL:I = 0x16

.field public static final KEY_RCS_PUBLISH_OFFLINE_AVAILABILITY_TIMER_SEC:I = 0x10

.field public static final KEY_RCS_PUBLISH_SOURCE_THROTTLE_MS:I = 0x15

.field public static final KEY_RCS_PUBLISH_TIMER_SEC:I = 0xf

.field public static final KEY_REGISTRATION_DOMAIN_NAME:I = 0xc

.field public static final KEY_REGISTRATION_RETRY_BASE_TIME_SEC:I = 0x21

.field public static final KEY_REGISTRATION_RETRY_MAX_TIME_SEC:I = 0x22

.field public static final KEY_RTP_SPEECH_END_PORT:I = 0x24

.field public static final KEY_RTP_SPEECH_START_PORT:I = 0x23

.field public static final KEY_RTT_ENABLED:I = 0x42

.field public static final KEY_SIP_ACK_RECEIPT_WAIT_TIME_MS:I = 0x2b

.field public static final KEY_SIP_ACK_RETRANSMIT_WAIT_TIME_MS:I = 0x2c

.field public static final KEY_SIP_INVITE_ACK_WAIT_TIME_MS:I = 0x26

.field public static final KEY_SIP_INVITE_CANCELLATION_TIMER_MS:I = 0x4

.field public static final KEY_SIP_INVITE_REQUEST_TRANSMIT_INTERVAL_MS:I = 0x25

.field public static final KEY_SIP_INVITE_RESPONSE_RETRANSMIT_INTERVAL_MS:I = 0x2a

.field public static final KEY_SIP_INVITE_RESPONSE_RETRANSMIT_WAIT_TIME_MS:I = 0x27

.field public static final KEY_SIP_KEEP_ALIVE_ENABLED:I = 0x20

.field public static final KEY_SIP_NON_INVITE_REQUEST_RETRANSMISSION_WAIT_TIME_MS:I = 0x2d

.field public static final KEY_SIP_NON_INVITE_REQUEST_RETRANSMIT_INTERVAL_MS:I = 0x28

.field public static final KEY_SIP_NON_INVITE_RESPONSE_RETRANSMISSION_WAIT_TIME_MS:I = 0x2e

.field public static final KEY_SIP_NON_INVITE_TRANSACTION_TIMEOUT_TIMER_MS:I = 0x29

.field public static final KEY_SIP_SESSION_TIMER_SEC:I = 0x2

.field public static final KEY_SMS_FORMAT:I = 0xd

.field public static final KEY_SMS_OVER_IP_ENABLED:I = 0xe

.field public static final KEY_SMS_PUBLIC_SERVICE_IDENTITY:I = 0x36

.field public static final KEY_T1_TIMER_VALUE_MS:I = 0x7

.field public static final KEY_T2_TIMER_VALUE_MS:I = 0x8

.field public static final KEY_TF_TIMER_VALUE_MS:I = 0x9

.field public static final KEY_TRANSITION_TO_LTE_DELAY_MS:I = 0x5

.field public static final KEY_USE_GZIP_FOR_LIST_SUBSCRIPTION:I = 0x18

.field public static final KEY_VIDEO_QUALITY:I = 0x37

.field public static final KEY_VOICE_OVER_WIFI_ENABLED_OVERRIDE:I = 0x1c

.field public static final KEY_VOICE_OVER_WIFI_MODE_OVERRIDE:I = 0x1b

.field public static final KEY_VOICE_OVER_WIFI_ROAMING_ENABLED_OVERRIDE:I = 0x1a

.field public static final KEY_VOLTE_PROVISIONING_STATUS:I = 0xa

.field public static final KEY_VOLTE_USER_OPT_IN_STATUS:I = 0x1e

.field public static final KEY_VT_PROVISIONING_STATUS:I = 0xb

.field public static final KEY_WIFI_EPDG_TIMER_SEC:I = 0x3f

.field public static final KEY_WIFI_THRESHOLD_A:I = 0x3c

.field public static final KEY_WIFI_THRESHOLD_B:I = 0x3d

.field public static final PROVISIONING_RESULT_UNKNOWN:I = -0x1

.field public static final PROVISIONING_VALUE_DISABLED:I = 0x0

.field public static final PROVISIONING_VALUE_ENABLED:I = 0x1

.field public static final SMS_FORMAT_3GPP:I = 0x1

.field public static final SMS_FORMAT_3GPP2:I = 0x0

.field public static final STRING_QUERY_RESULT_ERROR_GENERIC:Ljava/lang/String; = "STRING_QUERY_RESULT_ERROR_GENERIC"

.field public static final STRING_QUERY_RESULT_ERROR_NOT_READY:Ljava/lang/String; = "STRING_QUERY_RESULT_ERROR_NOT_READY"

.field public static final VIDEO_QUALITY_HIGH:I = 0x1

.field public static final VIDEO_QUALITY_LOW:I


# instance fields
.field private mSubId:I


# direct methods
.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/ims/ProvisioningManager;->mSubId:I

    return-void
.end method

.method public static createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;
    .registers 3

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Landroid/telephony/ims/ProvisioningManager;

    invoke-direct {v0, p0}, Landroid/telephony/ims/ProvisioningManager;-><init>(I)V

    return-object v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid subscription ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getITelephony()Lcom/android/internal/telephony/ITelephony;
    .registers 3

    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getTelephonyServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_13

    return-object v0

    :cond_13
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not find Telephony Service."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getProvisioningIntValue(I)I
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/telephony/ims/ProvisioningManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ProvisioningManager;->mSubId:I

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->getImsProvisioningInt(II)I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getProvisioningStatusForCapability(II)Z
    .registers 5

    :try_start_0
    invoke-static {}, Landroid/telephony/ims/ProvisioningManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ProvisioningManager;->mSubId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getImsProvisioningStatusForCapability(III)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getProvisioningStringValue(I)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/telephony/ims/ProvisioningManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ProvisioningManager;->mSubId:I

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->getImsProvisioningString(II)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getRcsProvisioningStatusForCapability(I)Z
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/telephony/ims/ProvisioningManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ProvisioningManager;->mSubId:I

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->getRcsProvisioningStatusForCapability(II)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public notifyRcsAutoConfigurationReceived([BZ)V
    .registers 5

    if-eqz p1, :cond_13

    :try_start_2
    invoke-static {}, Landroid/telephony/ims/ProvisioningManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ProvisioningManager;->mSubId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->notifyRcsAutoConfigurationReceived(I[BZ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_d

    nop

    return-void

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null config XML file."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerProvisioningChangedCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ProvisioningManager$Callback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    invoke-virtual {p2, p1}, Landroid/telephony/ims/ProvisioningManager$Callback;->setExecutor(Ljava/util/concurrent/Executor;)V

    :try_start_3
    invoke-static {}, Landroid/telephony/ims/ProvisioningManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ProvisioningManager;->mSubId:I

    invoke-virtual {p2}, Landroid/telephony/ims/ProvisioningManager$Callback;->getBinder()Landroid/telephony/ims/aidl/IImsConfigCallback;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->registerImsProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IImsConfigCallback;)V
    :try_end_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_10} :catch_1e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_10} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_10} :catch_12

    nop

    return-void

    :catch_12
    move-exception v0

    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    :catch_1e
    move-exception v0

    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public setProvisioningIntValue(II)I
    .registers 5

    :try_start_0
    invoke-static {}, Landroid/telephony/ims/ProvisioningManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ProvisioningManager;->mSubId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setImsProvisioningInt(III)I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setProvisioningStatusForCapability(IIZ)V
    .registers 6

    :try_start_0
    invoke-static {}, Landroid/telephony/ims/ProvisioningManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ProvisioningManager;->mSubId:I

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setImsProvisioningStatusForCapability(IIIZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    nop

    return-void

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setProvisioningStringValue(ILjava/lang/String;)I
    .registers 5

    :try_start_0
    invoke-static {}, Landroid/telephony/ims/ProvisioningManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ProvisioningManager;->mSubId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setImsProvisioningString(IILjava/lang/String;)I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setRcsProvisioningStatusForCapability(IZ)V
    .registers 5

    :try_start_0
    invoke-static {}, Landroid/telephony/ims/ProvisioningManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ProvisioningManager;->mSubId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setRcsProvisioningStatusForCapability(IIZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    nop

    return-void

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unregisterProvisioningChangedCallback(Landroid/telephony/ims/ProvisioningManager$Callback;)V
    .registers 5

    :try_start_0
    invoke-static {}, Landroid/telephony/ims/ProvisioningManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ProvisioningManager;->mSubId:I

    invoke-virtual {p1}, Landroid/telephony/ims/ProvisioningManager$Callback;->getBinder()Landroid/telephony/ims/aidl/IImsConfigCallback;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->unregisterImsProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IImsConfigCallback;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    nop

    return-void

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
