.class public final Landroid/telephony/ims/ImsReasonInfo;
.super Ljava/lang/Object;
.source "ImsReasonInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsReasonInfo$ImsCode;,
        Landroid/telephony/ims/ImsReasonInfo$UtReason;
    }
.end annotation


# static fields
.field public static final CODE_ACCESS_CLASS_BLOCKED:I = 0x5e8

.field public static final CODE_ANSWERED_ELSEWHERE:I = 0x3f6

.field public static final CODE_BLACKLISTED_CALL_ID:I = 0x1fa

.field public static final CODE_CALL_BARRED:I = 0xf0

.field public static final CODE_CALL_DROP_IWLAN_TO_LTE_UNAVAILABLE:I = 0x44c

.field public static final CODE_CALL_END_CAUSE_CALL_PULL:I = 0x3f8

.field public static final CODE_CALL_PULL_OUT_OF_SYNC:I = 0x3f7

.field public static final CODE_DATA_DISABLED:I = 0x57e

.field public static final CODE_DATA_LIMIT_REACHED:I = 0x57d

.field public static final CODE_DIAL_MODIFIED_TO_DIAL:I = 0xf6

.field public static final CODE_DIAL_MODIFIED_TO_DIAL_VIDEO:I = 0xf7

.field public static final CODE_DIAL_MODIFIED_TO_SS:I = 0xf5

.field public static final CODE_DIAL_MODIFIED_TO_USSD:I = 0xf4

.field public static final CODE_DIAL_VIDEO_MODIFIED_TO_DIAL:I = 0xf8

.field public static final CODE_DIAL_VIDEO_MODIFIED_TO_DIAL_VIDEO:I = 0xf9

.field public static final CODE_DIAL_VIDEO_MODIFIED_TO_SS:I = 0xfa

.field public static final CODE_DIAL_VIDEO_MODIFIED_TO_USSD:I = 0xfb

.field public static final CODE_ECBM_NOT_SUPPORTED:I = 0x385

.field public static final CODE_EMERGENCY_CALL_OVER_WFC_NOT_AVAILABLE:I = 0x656

.field public static final CODE_EMERGENCY_PERM_FAILURE:I = 0x16c

.field public static final CODE_EMERGENCY_TEMP_FAILURE:I = 0x16b

.field public static final CODE_EPDG_TUNNEL_ESTABLISH_FAILURE:I = 0x578

.field public static final CODE_EPDG_TUNNEL_LOST_CONNECTION:I = 0x57a

.field public static final CODE_EPDG_TUNNEL_REKEY_FAILURE:I = 0x579

.field public static final CODE_FDN_BLOCKED:I = 0xf1

.field public static final CODE_IKEV2_AUTH_FAILURE:I = 0x580

.field public static final CODE_IMEI_NOT_ACCEPTED:I = 0xf3

.field public static final CODE_IWLAN_DPD_FAILURE:I = 0x514

.field public static final CODE_LOCAL_CALL_BUSY:I = 0x8e

.field public static final CODE_LOCAL_CALL_CS_RETRY_REQUIRED:I = 0x92

.field public static final CODE_LOCAL_CALL_DECLINE:I = 0x8f

.field public static final CODE_LOCAL_CALL_EXCEEDED:I = 0x8d

.field public static final CODE_LOCAL_CALL_RESOURCE_RESERVATION_FAILED:I = 0x91

.field public static final CODE_LOCAL_CALL_TERMINATED:I = 0x94

.field public static final CODE_LOCAL_CALL_VCC_ON_PROGRESSING:I = 0x90

.field public static final CODE_LOCAL_CALL_VOLTE_RETRY_REQUIRED:I = 0x93

.field public static final CODE_LOCAL_ENDED_BY_CONFERENCE_MERGE:I = 0x6c

.field public static final CODE_LOCAL_HO_NOT_FEASIBLE:I = 0x95

.field public static final CODE_LOCAL_ILLEGAL_ARGUMENT:I = 0x65

.field public static final CODE_LOCAL_ILLEGAL_STATE:I = 0x66

.field public static final CODE_LOCAL_IMS_NOT_SUPPORTED_ON_DEVICE:I = 0x96

.field public static final CODE_LOCAL_IMS_SERVICE_DOWN:I = 0x6a

.field public static final CODE_LOCAL_INTERNAL_ERROR:I = 0x67

.field public static final CODE_LOCAL_LOW_BATTERY:I = 0x70

.field public static final CODE_LOCAL_NETWORK_IP_CHANGED:I = 0x7c

.field public static final CODE_LOCAL_NETWORK_NO_LTE_COVERAGE:I = 0x7a

.field public static final CODE_LOCAL_NETWORK_NO_SERVICE:I = 0x79

.field public static final CODE_LOCAL_NETWORK_ROAMING:I = 0x7b

.field public static final CODE_LOCAL_NOT_REGISTERED:I = 0x84

.field public static final CODE_LOCAL_NO_PENDING_CALL:I = 0x6b

.field public static final CODE_LOCAL_POWER_OFF:I = 0x6f

.field public static final CODE_LOCAL_SERVICE_UNAVAILABLE:I = 0x83

.field public static final CODE_LOW_BATTERY:I = 0x1f9

.field public static final CODE_MAXIMUM_NUMBER_OF_CALLS_REACHED:I = 0x57b

.field public static final CODE_MEDIA_INIT_FAILED:I = 0x191

.field public static final CODE_MEDIA_NOT_ACCEPTABLE:I = 0x193

.field public static final CODE_MEDIA_NO_DATA:I = 0x192

.field public static final CODE_MEDIA_UNSPECIFIED:I = 0x194

.field public static final CODE_MULTIENDPOINT_NOT_SUPPORTED:I = 0x386

.field public static final CODE_NETWORK_DETACH:I = 0x5e9

.field public static final CODE_NETWORK_REJECT:I = 0x5e0

.field public static final CODE_NETWORK_RESP_TIMEOUT:I = 0x5df

.field public static final CODE_NO_CSFB_IN_CS_ROAM:I = 0x5ec

.field public static final CODE_NO_VALID_SIM:I = 0x5dd

.field public static final CODE_OEM_CAUSE_1:I = 0xf001

.field public static final CODE_OEM_CAUSE_10:I = 0xf00a

.field public static final CODE_OEM_CAUSE_11:I = 0xf00b

.field public static final CODE_OEM_CAUSE_12:I = 0xf00c

.field public static final CODE_OEM_CAUSE_13:I = 0xf00d

.field public static final CODE_OEM_CAUSE_14:I = 0xf00e

.field public static final CODE_OEM_CAUSE_15:I = 0xf00f

.field public static final CODE_OEM_CAUSE_2:I = 0xf002

.field public static final CODE_OEM_CAUSE_3:I = 0xf003

.field public static final CODE_OEM_CAUSE_4:I = 0xf004

.field public static final CODE_OEM_CAUSE_5:I = 0xf005

.field public static final CODE_OEM_CAUSE_6:I = 0xf006

.field public static final CODE_OEM_CAUSE_7:I = 0xf007

.field public static final CODE_OEM_CAUSE_8:I = 0xf008

.field public static final CODE_OEM_CAUSE_9:I = 0xf009

.field public static final CODE_RADIO_ACCESS_FAILURE:I = 0x5e1

.field public static final CODE_RADIO_INTERNAL_ERROR:I = 0x5de

.field public static final CODE_RADIO_LINK_FAILURE:I = 0x5e2

.field public static final CODE_RADIO_LINK_LOST:I = 0x5e3

.field public static final CODE_RADIO_OFF:I = 0x5dc

.field public static final CODE_RADIO_RELEASE_ABNORMAL:I = 0x5e7

.field public static final CODE_RADIO_RELEASE_NORMAL:I = 0x5e6

.field public static final CODE_RADIO_SETUP_FAILURE:I = 0x5e5

.field public static final CODE_RADIO_UPLINK_FAILURE:I = 0x5e4

.field public static final CODE_REGISTRATION_ERROR:I = 0x3e8

.field public static final CODE_REJECTED_ELSEWHERE:I = 0x3f9

.field public static final CODE_REJECT_1X_COLLISION:I = 0x643

.field public static final CODE_REJECT_CALL_ON_OTHER_SUB:I = 0x642

.field public static final CODE_REJECT_CALL_TYPE_NOT_ALLOWED:I = 0x645

.field public static final CODE_REJECT_CONFERENCE_TTY_NOT_ALLOWED:I = 0x651

.field public static final CODE_REJECT_INTERNAL_ERROR:I = 0x64c

.field public static final CODE_REJECT_MAX_CALL_LIMIT_REACHED:I = 0x648

.field public static final CODE_REJECT_ONGOING_CALL_SETUP:I = 0x647

.field public static final CODE_REJECT_ONGOING_CALL_TRANSFER:I = 0x64b

.field public static final CODE_REJECT_ONGOING_CALL_UPGRADE:I = 0x650

.field public static final CODE_REJECT_ONGOING_CALL_WAITING_DISABLED:I = 0x641

.field public static final CODE_REJECT_ONGOING_CONFERENCE_CALL:I = 0x652

.field public static final CODE_REJECT_ONGOING_CS_CALL:I = 0x655

.field public static final CODE_REJECT_ONGOING_E911_CALL:I = 0x646

.field public static final CODE_REJECT_ONGOING_ENCRYPTED_CALL:I = 0x654

.field public static final CODE_REJECT_ONGOING_HANDOVER:I = 0x64e

.field public static final CODE_REJECT_QOS_FAILURE:I = 0x64d

.field public static final CODE_REJECT_SERVICE_NOT_REGISTERED:I = 0x644

.field public static final CODE_REJECT_UNKNOWN:I = 0x640

.field public static final CODE_REJECT_UNSUPPORTED_SDP_HEADERS:I = 0x64a

.field public static final CODE_REJECT_UNSUPPORTED_SIP_HEADERS:I = 0x649

.field public static final CODE_REJECT_VT_AVPF_NOT_ALLOWED:I = 0x653

.field public static final CODE_REJECT_VT_TTY_NOT_ALLOWED:I = 0x64f

.field public static final CODE_REMOTE_CALL_DECLINE:I = 0x57c

.field public static final CODE_RETRY_ON_IMS_WITHOUT_RTT:I = 0xbb9

.field public static final CODE_SESSION_MODIFICATION_FAILED:I = 0x5ed

.field public static final CODE_SIP_ALTERNATE_EMERGENCY_CALL:I = 0x5ea

.field public static final CODE_SIP_AMBIGUOUS:I = 0x178

.field public static final CODE_SIP_BAD_ADDRESS:I = 0x151

.field public static final CODE_SIP_BAD_REQUEST:I = 0x14b

.field public static final CODE_SIP_BUSY:I = 0x152

.field public static final CODE_SIP_CALL_OR_TRANS_DOES_NOT_EXIST:I = 0x174

.field public static final CODE_SIP_CLIENT_ERROR:I = 0x156

.field public static final CODE_SIP_EXTENSION_REQUIRED:I = 0x172

.field public static final CODE_SIP_FORBIDDEN:I = 0x14c

.field public static final CODE_SIP_GLOBAL_ERROR:I = 0x16a

.field public static final CODE_SIP_INTERVAL_TOO_BRIEF:I = 0x173

.field public static final CODE_SIP_LOOP_DETECTED:I = 0x175

.field public static final CODE_SIP_METHOD_NOT_ALLOWED:I = 0x16e

.field public static final CODE_SIP_NOT_ACCEPTABLE:I = 0x154

.field public static final CODE_SIP_NOT_FOUND:I = 0x14d

.field public static final CODE_SIP_NOT_REACHABLE:I = 0x155

.field public static final CODE_SIP_NOT_SUPPORTED:I = 0x14e

.field public static final CODE_SIP_PROXY_AUTHENTICATION_REQUIRED:I = 0x16f

.field public static final CODE_SIP_REDIRECTED:I = 0x141

.field public static final CODE_SIP_REQUEST_CANCELLED:I = 0x153

.field public static final CODE_SIP_REQUEST_ENTITY_TOO_LARGE:I = 0x170

.field public static final CODE_SIP_REQUEST_PENDING:I = 0x179

.field public static final CODE_SIP_REQUEST_TIMEOUT:I = 0x14f

.field public static final CODE_SIP_REQUEST_URI_TOO_LARGE:I = 0x171

.field public static final CODE_SIP_SERVER_ERROR:I = 0x162

.field public static final CODE_SIP_SERVER_INTERNAL_ERROR:I = 0x15f

.field public static final CODE_SIP_SERVER_TIMEOUT:I = 0x161

.field public static final CODE_SIP_SERVICE_UNAVAILABLE:I = 0x160

.field public static final CODE_SIP_TEMPRARILY_UNAVAILABLE:I = 0x150

.field public static final CODE_SIP_TOO_MANY_HOPS:I = 0x176

.field public static final CODE_SIP_TRANSACTION_DOES_NOT_EXIST:I = 0x157

.field public static final CODE_SIP_UNDECIPHERABLE:I = 0x17a

.field public static final CODE_SIP_USER_MARKED_UNWANTED:I = 0x16d

.field public static final CODE_SIP_USER_REJECTED:I = 0x169

.field public static final CODE_SUPP_SVC_CANCELLED:I = 0x4b2

.field public static final CODE_SUPP_SVC_FAILED:I = 0x4b1

.field public static final CODE_SUPP_SVC_REINVITE_COLLISION:I = 0x4b3

.field public static final CODE_TIMEOUT_1XX_WAITING:I = 0xc9

.field public static final CODE_TIMEOUT_NO_ANSWER:I = 0xca

.field public static final CODE_TIMEOUT_NO_ANSWER_CALL_UPDATE:I = 0xcb

.field public static final CODE_UNOBTAINABLE_NUMBER:I = 0x5eb

.field public static final CODE_UNSPECIFIED:I = 0x0

.field public static final CODE_USER_CANCELLED_SESSION_MODIFICATION:I = 0x200

.field public static final CODE_USER_DECLINE:I = 0x1f8

.field public static final CODE_USER_IGNORE:I = 0x1f7

.field public static final CODE_USER_NOANSWER:I = 0x1f6

.field public static final CODE_USER_REJECTED_SESSION_MODIFICATION:I = 0x1ff

.field public static final CODE_USER_TERMINATED:I = 0x1f5

.field public static final CODE_USER_TERMINATED_BY_REMOTE:I = 0x1fe

.field public static final CODE_UT_CB_PASSWORD_MISMATCH:I = 0x335

.field public static final CODE_UT_NETWORK_ERROR:I = 0x324

.field public static final CODE_UT_NOT_SUPPORTED:I = 0x321

.field public static final CODE_UT_OPERATION_NOT_ALLOWED:I = 0x323

.field public static final CODE_UT_SERVICE_UNAVAILABLE:I = 0x322

.field public static final CODE_UT_SS_MODIFIED_TO_DIAL:I = 0x336

.field public static final CODE_UT_SS_MODIFIED_TO_DIAL_VIDEO:I = 0x339

.field public static final CODE_UT_SS_MODIFIED_TO_SS:I = 0x338

.field public static final CODE_UT_SS_MODIFIED_TO_USSD:I = 0x337

.field public static final CODE_WFC_SERVICE_NOT_AVAILABLE_IN_THIS_LOCATION:I = 0x657

.field public static final CODE_WIFI_LOST:I = 0x57f

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/ImsReasonInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_CODE_CALL_RETRY_BY_SETTINGS:I = 0x3

.field public static final EXTRA_CODE_CALL_RETRY_NORMAL:I = 0x1

.field public static final EXTRA_CODE_CALL_RETRY_SILENT_REDIAL:I = 0x2

.field public static final EXTRA_MSG_SERVICE_NOT_AUTHORIZED:Ljava/lang/String; = "Forbidden. Not Authorized for Service"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field public mCode:I

.field public mExtraCode:I

.field public mExtraMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/ims/ImsReasonInfo$1;

    invoke-direct {v0}, Landroid/telephony/ims/ImsReasonInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    iput v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    iput p2, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    iput p2, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    iput-object p3, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/ims/ImsReasonInfo$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCode()I
    .registers 2

    iget v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    return v0
.end method

.method public getExtraCode()I
    .registers 2

    iget v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    return v0
.end method

.method public getExtraMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsReasonInfo :: {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
