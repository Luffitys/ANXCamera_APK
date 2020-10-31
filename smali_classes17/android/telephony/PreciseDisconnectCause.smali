.class public final Landroid/telephony/PreciseDisconnectCause;
.super Ljava/lang/Object;
.source "PreciseDisconnectCause.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final ACCESS_CLASS_BLOCKED:I = 0x104

.field public static final ACCESS_INFORMATION_DISCARDED:I = 0x2b

.field public static final ACM_LIMIT_EXCEEDED:I = 0x44

.field public static final BEARER_CAPABILITY_NOT_AUTHORIZED:I = 0x39

.field public static final BEARER_NOT_AVAIL:I = 0x3a

.field public static final BEARER_SERVICE_NOT_IMPLEMENTED:I = 0x41

.field public static final BUSY:I = 0x11

.field public static final CALL_BARRED:I = 0xf0

.field public static final CALL_REJECTED:I = 0x15

.field public static final CDMA_ACCESS_BLOCKED:I = 0x3f1

.field public static final CDMA_ACCESS_FAILURE:I = 0x3ee

.field public static final CDMA_DROP:I = 0x3e9

.field public static final CDMA_INTERCEPT:I = 0x3ea

.field public static final CDMA_LOCKED_UNTIL_POWER_CYCLE:I = 0x3e8

.field public static final CDMA_NOT_EMERGENCY:I = 0x3f0

.field public static final CDMA_PREEMPTED:I = 0x3ef

.field public static final CDMA_REORDER:I = 0x3eb

.field public static final CDMA_RETRY_ORDER:I = 0x3ed

.field public static final CDMA_SO_REJECT:I = 0x3ec

.field public static final CHANNEL_NOT_AVAIL:I = 0x2c

.field public static final CHANNEL_UNACCEPTABLE:I = 0x6

.field public static final CONDITIONAL_IE_ERROR:I = 0x64

.field public static final DESTINATION_OUT_OF_ORDER:I = 0x1b

.field public static final ERROR_UNSPECIFIED:I = 0xffff

.field public static final FACILITY_REJECTED:I = 0x1d

.field public static final FDN_BLOCKED:I = 0xf1

.field public static final IMEI_NOT_ACCEPTED:I = 0xf3

.field public static final IMSI_UNKNOWN_IN_VLR:I = 0xf2

.field public static final INCOMING_CALLS_BARRED_WITHIN_CUG:I = 0x37

.field public static final INCOMPATIBLE_DESTINATION:I = 0x58

.field public static final INFORMATION_ELEMENT_NON_EXISTENT:I = 0x63

.field public static final INTERWORKING_UNSPECIFIED:I = 0x7f

.field public static final INVALID_MANDATORY_INFORMATION:I = 0x60

.field public static final INVALID_NUMBER_FORMAT:I = 0x1c

.field public static final INVALID_TRANSACTION_IDENTIFIER:I = 0x51

.field public static final MESSAGE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE:I = 0x65

.field public static final MESSAGE_TYPE_NON_IMPLEMENTED:I = 0x61

.field public static final MESSAGE_TYPE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE:I = 0x62

.field public static final NETWORK_DETACH:I = 0x105

.field public static final NETWORK_OUT_OF_ORDER:I = 0x26

.field public static final NETWORK_REJECT:I = 0xfc

.field public static final NETWORK_RESP_TIMEOUT:I = 0xfb

.field public static final NORMAL:I = 0x10

.field public static final NORMAL_UNSPECIFIED:I = 0x1f

.field public static final NOT_VALID:I = -0x1

.field public static final NO_ANSWER_FROM_USER:I = 0x13

.field public static final NO_CIRCUIT_AVAIL:I = 0x22

.field public static final NO_DISCONNECT_CAUSE_AVAILABLE:I = 0x0

.field public static final NO_ROUTE_TO_DESTINATION:I = 0x3

.field public static final NO_USER_RESPONDING:I = 0x12

.field public static final NO_VALID_SIM:I = 0xf9

.field public static final NUMBER_CHANGED:I = 0x16

.field public static final OEM_CAUSE_1:I = 0xf001

.field public static final OEM_CAUSE_10:I = 0xf00a

.field public static final OEM_CAUSE_11:I = 0xf00b

.field public static final OEM_CAUSE_12:I = 0xf00c

.field public static final OEM_CAUSE_13:I = 0xf00d

.field public static final OEM_CAUSE_14:I = 0xf00e

.field public static final OEM_CAUSE_15:I = 0xf00f

.field public static final OEM_CAUSE_2:I = 0xf002

.field public static final OEM_CAUSE_3:I = 0xf003

.field public static final OEM_CAUSE_4:I = 0xf004

.field public static final OEM_CAUSE_5:I = 0xf005

.field public static final OEM_CAUSE_6:I = 0xf006

.field public static final OEM_CAUSE_7:I = 0xf007

.field public static final OEM_CAUSE_8:I = 0xf008

.field public static final OEM_CAUSE_9:I = 0xf009

.field public static final ONLY_DIGITAL_INFORMATION_BEARER_AVAILABLE:I = 0x46

.field public static final OPERATOR_DETERMINED_BARRING:I = 0x8

.field public static final OUT_OF_SRV:I = 0xf8

.field public static final PREEMPTION:I = 0x19

.field public static final PROTOCOL_ERROR_UNSPECIFIED:I = 0x6f

.field public static final QOS_NOT_AVAIL:I = 0x31

.field public static final RADIO_ACCESS_FAILURE:I = 0xfd

.field public static final RADIO_INTERNAL_ERROR:I = 0xfa

.field public static final RADIO_LINK_FAILURE:I = 0xfe

.field public static final RADIO_LINK_LOST:I = 0xff

.field public static final RADIO_OFF:I = 0xf7

.field public static final RADIO_RELEASE_ABNORMAL:I = 0x103

.field public static final RADIO_RELEASE_NORMAL:I = 0x102

.field public static final RADIO_SETUP_FAILURE:I = 0x101

.field public static final RADIO_UPLINK_FAILURE:I = 0x100

.field public static final RECOVERY_ON_TIMER_EXPIRED:I = 0x66

.field public static final REQUESTED_FACILITY_NOT_IMPLEMENTED:I = 0x45

.field public static final REQUESTED_FACILITY_NOT_SUBSCRIBED:I = 0x32

.field public static final RESOURCES_UNAVAILABLE_OR_UNSPECIFIED:I = 0x2f

.field public static final SEMANTICALLY_INCORRECT_MESSAGE:I = 0x5f

.field public static final SERVICE_OPTION_NOT_AVAILABLE:I = 0x3f

.field public static final SERVICE_OR_OPTION_NOT_IMPLEMENTED:I = 0x4f

.field public static final STATUS_ENQUIRY:I = 0x1e

.field public static final SWITCHING_CONGESTION:I = 0x2a

.field public static final TEMPORARY_FAILURE:I = 0x29

.field public static final UNOBTAINABLE_NUMBER:I = 0x1

.field public static final USER_NOT_MEMBER_OF_CUG:I = 0x57


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
