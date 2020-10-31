.class public final Landroid/telephony/DisconnectCause;
.super Ljava/lang/Object;
.source "DisconnectCause.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final ACCESS_INFORMATION_DISCARDED:I = 0x78

.field public static final ALREADY_DIALING:I = 0x48

.field public static final ANSWERED_ELSEWHERE:I = 0x34

.field public static final BEARER_CAPABILITY_NOT_AUTHORIZED:I = 0x6e

.field public static final BEARER_CAPABILITY_UNAVAILABLE:I = 0x53

.field public static final BEARER_SERVICE_NOT_IMPLEMENTED:I = 0x55

.field public static final BUSY:I = 0x4

.field public static final CALLING_DISABLED:I = 0x4a

.field public static final CALL_BARRED:I = 0x14

.field public static final CALL_FAIL_DESTINATION_OUT_OF_ORDER:I = 0x6d

.field public static final CALL_FAIL_NO_ANSWER_FROM_USER:I = 0x6c

.field public static final CALL_FAIL_NO_USER_RESPONDING:I = 0x6b

.field public static final CALL_PULLED:I = 0x33

.field public static final CALL_REJECTED:I = 0x70

.field public static final CANT_CALL_WHILE_RINGING:I = 0x49

.field public static final CDMA_ACCESS_BLOCKED:I = 0x23

.field public static final CDMA_ACCESS_FAILURE:I = 0x20

.field public static final CDMA_ALREADY_ACTIVATED:I = 0x31

.field public static final CDMA_CALL_LOST:I = 0x29

.field public static final CDMA_DROP:I = 0x1b

.field public static final CDMA_INTERCEPT:I = 0x1c

.field public static final CDMA_LOCKED_UNTIL_POWER_CYCLE:I = 0x1a

.field public static final CDMA_NOT_EMERGENCY:I = 0x22

.field public static final CDMA_PREEMPTED:I = 0x21

.field public static final CDMA_REORDER:I = 0x1d

.field public static final CDMA_RETRY_ORDER:I = 0x1f

.field public static final CDMA_SO_REJECT:I = 0x1e

.field public static final CHANNEL_UNACCEPTABLE:I = 0x6f

.field public static final CONDITIONAL_IE_ERROR:I = 0x62

.field public static final CONGESTION:I = 0x5

.field public static final CS_RESTRICTED:I = 0x16

.field public static final CS_RESTRICTED_EMERGENCY:I = 0x18

.field public static final CS_RESTRICTED_NORMAL:I = 0x17

.field public static final DATA_DISABLED:I = 0x36

.field public static final DATA_LIMIT_REACHED:I = 0x37

.field public static final DIALED_CALL_FORWARDING_WHILE_ROAMING:I = 0x39

.field public static final DIALED_MMI:I = 0x27

.field public static final DIAL_LOW_BATTERY:I = 0x3e

.field public static final DIAL_MODIFIED_TO_DIAL:I = 0x30

.field public static final DIAL_MODIFIED_TO_DIAL_VIDEO:I = 0x42

.field public static final DIAL_MODIFIED_TO_SS:I = 0x2f

.field public static final DIAL_MODIFIED_TO_USSD:I = 0x2e

.field public static final DIAL_VIDEO_MODIFIED_TO_DIAL:I = 0x45

.field public static final DIAL_VIDEO_MODIFIED_TO_DIAL_VIDEO:I = 0x46

.field public static final DIAL_VIDEO_MODIFIED_TO_SS:I = 0x43

.field public static final DIAL_VIDEO_MODIFIED_TO_USSD:I = 0x44

.field public static final EMERGENCY_CALL_OVER_WFC_NOT_AVAILABLE:I = 0x4e

.field public static final EMERGENCY_ONLY:I = 0x25

.field public static final EMERGENCY_PERM_FAILURE:I = 0x40

.field public static final EMERGENCY_TEMP_FAILURE:I = 0x3f

.field public static final ERROR_UNSPECIFIED:I = 0x24

.field public static final EXITED_ECM:I = 0x2a

.field public static final FACILITY_REJECTED:I = 0x73

.field public static final FDN_BLOCKED:I = 0x15

.field public static final HO_NOT_FEASIBLE:I = 0x7d

.field public static final ICC_ERROR:I = 0x13

.field public static final IMEI_NOT_ACCEPTED:I = 0x3a

.field public static final IMS_ACCESS_BLOCKED:I = 0x3c

.field public static final IMS_MERGED_SUCCESSFULLY:I = 0x2d

.field public static final IMS_SIP_ALTERNATE_EMERGENCY_CALL:I = 0x47

.field public static final INCOMING_AUTO_REJECTED:I = 0x51

.field public static final INCOMING_CALLS_BARRED_WITHIN_CUG:I = 0x52

.field public static final INCOMING_MISSED:I = 0x1

.field public static final INCOMING_REJECTED:I = 0x10

.field public static final INCOMPATIBLE_DESTINATION:I = 0x5b

.field public static final INFORMATION_ELEMENT_NON_EXISTENT:I = 0x61

.field public static final INTERWORKING_UNSPECIFIED:I = 0x66

.field public static final INVALID_CREDENTIALS:I = 0xa

.field public static final INVALID_MANDATORY_INFORMATION:I = 0x5e

.field public static final INVALID_NUMBER:I = 0x7

.field public static final INVALID_TRANSACTION_IDENTIFIER:I = 0x59

.field public static final INVALID_TRANSIT_NW_SELECTION:I = 0x5c

.field public static final LIMIT_EXCEEDED:I = 0xf

.field public static final LOCAL:I = 0x3

.field public static final LOCAL_LOW_BATTERY:I = 0x67

.field public static final LOST_SIGNAL:I = 0xe

.field public static final LOW_BATTERY:I = 0x3d

.field public static final MAXIMUM_NUMBER_OF_CALLS_REACHED:I = 0x35

.field public static final MAXIMUM_VALID_VALUE:I = 0x7e

.field public static final MEDIA_TIMEOUT:I = 0x4d

.field public static final MESSAGE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE:I = 0x63

.field public static final MESSAGE_TYPE_NON_IMPLEMENTED:I = 0x5f

.field public static final MESSAGE_TYPE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE:I = 0x60

.field public static final MINIMUM_VALID_VALUE:I = 0x0

.field public static final MMI:I = 0x6

.field public static final NETWORK_OUT_OF_ORDER:I = 0x75

.field public static final NON_SELECTED_USER_CLEARING:I = 0x7e

.field public static final NORMAL:I = 0x2

.field public static final NORMAL_UNSPECIFIED:I = 0x41

.field public static final NOT_DISCONNECTED:I = 0x0

.field public static final NOT_VALID:I = -0x1

.field public static final NO_CIRCUIT_AVAIL:I = 0x68

.field public static final NO_PHONE_NUMBER_SUPPLIED:I = 0x26

.field public static final NO_ROUTE_TO_DESTINATION:I = 0x69

.field public static final NUMBER_CHANGED:I = 0x71

.field public static final NUMBER_UNREACHABLE:I = 0x8

.field public static final ONLY_DIGITAL_INFORMATION_BEARER_AVAILABLE:I = 0x57

.field public static final OPERATOR_DETERMINED_BARRING:I = 0x6a

.field public static final OTASP_PROVISIONING_IN_PROCESS:I = 0x4c

.field public static final OUTGOING_CANCELED:I = 0x2c

.field public static final OUTGOING_EMERGENCY_CALL_PLACED:I = 0x50

.field public static final OUTGOING_FAILURE:I = 0x2b

.field public static final OUT_OF_NETWORK:I = 0xb

.field public static final OUT_OF_SERVICE:I = 0x12

.field public static final POWER_OFF:I = 0x11

.field public static final PREEMPTION:I = 0x72

.field public static final PROTOCOL_ERROR_UNSPECIFIED:I = 0x65

.field public static final QOS_UNAVAILABLE:I = 0x7b

.field public static final RECOVERY_ON_TIMER_EXPIRED:I = 0x64

.field public static final REQUESTED_CIRCUIT_OR_CHANNEL_NOT_AVAILABLE:I = 0x79

.field public static final REQUESTED_FACILITY_NOT_IMPLEMENTED:I = 0x56

.field public static final REQUESTED_FACILITY_NOT_SUBSCRIBED:I = 0x7c

.field public static final RESOURCES_UNAVAILABLE_OR_UNSPECIFIED:I = 0x7a

.field public static final RESP_TO_STATUS_ENQUIRY:I = 0x74

.field public static final SEMANTICALLY_INCORRECT_MESSAGE:I = 0x5d

.field public static final SERVER_ERROR:I = 0xc

.field public static final SERVER_UNREACHABLE:I = 0x9

.field public static final SERVICE_OPTION_NOT_AVAILABLE:I = 0x54

.field public static final SERVICE_OR_OPTION_NOT_IMPLEMENTED:I = 0x58

.field public static final SWITCHING_EQUIPMENT_CONGESTION:I = 0x77

.field public static final TEMPORARY_FAILURE:I = 0x76

.field public static final TIMED_OUT:I = 0xd

.field public static final TOO_MANY_ONGOING_CALLS:I = 0x4b

.field public static final UNOBTAINABLE_NUMBER:I = 0x19

.field public static final USER_NOT_MEMBER_OF_CUG:I = 0x5a

.field public static final VIDEO_CALL_NOT_ALLOWED_WHILE_TTY_ENABLED:I = 0x32

.field public static final VOICEMAIL_NUMBER_MISSING:I = 0x28

.field public static final WFC_SERVICE_NOT_AVAILABLE_IN_THIS_LOCATION:I = 0x4f

.field public static final WIFI_LOST:I = 0x3b


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_18c

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_15
    const-string v0, "NON_SELECTED_USER_CLEARING"

    return-object v0

    :pswitch_18
    const-string v0, "HO_NOT_FEASIBLE"

    return-object v0

    :pswitch_1b
    const-string v0, "REQUESTED_FACILITY_NOT_SUBSCRIBED"

    return-object v0

    :pswitch_1e
    const-string v0, "QOS_UNAVAILABLE"

    return-object v0

    :pswitch_21
    const-string v0, "RESOURCES_UNAVAILABLE_OR_UNSPECIFIED"

    return-object v0

    :pswitch_24
    const-string v0, "REQUESTED_CIRCUIT_OR_CHANNEL_NOT_AVAILABLE"

    return-object v0

    :pswitch_27
    const-string v0, "ACCESS_INFORMATION_DISCARDED"

    return-object v0

    :pswitch_2a
    const-string v0, "SWITCHING_EQUIPMENT_CONGESTION"

    return-object v0

    :pswitch_2d
    const-string v0, "TEMPORARY_FAILURE"

    return-object v0

    :pswitch_30
    const-string v0, "NETWORK_OUT_OF_ORDER"

    return-object v0

    :pswitch_33
    const-string v0, "RESP_TO_STATUS_ENQUIRY"

    return-object v0

    :pswitch_36
    const-string v0, "FACILITY_REJECTED"

    return-object v0

    :pswitch_39
    const-string v0, "PREEMPTION"

    return-object v0

    :pswitch_3c
    const-string v0, "NUMBER_CHANGED"

    return-object v0

    :pswitch_3f
    const-string v0, "CALL_REJECTED"

    return-object v0

    :pswitch_42
    const-string v0, "CHANNEL_UNACCEPTABLE"

    return-object v0

    :pswitch_45
    const-string v0, "BEARER_CAPABILITY_NOT_AUTHORIZED"

    return-object v0

    :pswitch_48
    const-string v0, "CALL_FAIL_DESTINATION_OUT_OF_ORDER"

    return-object v0

    :pswitch_4b
    const-string v0, "CALL_FAIL_NO_ANSWER_FROM_USER"

    return-object v0

    :pswitch_4e
    const-string v0, "CALL_FAIL_NO_USER_RESPONDING"

    return-object v0

    :pswitch_51
    const-string v0, "OPERATOR_DETERMINED_BARRING"

    return-object v0

    :pswitch_54
    const-string v0, "NO_ROUTE_TO_DESTINATION"

    return-object v0

    :pswitch_57
    const-string v0, "NO_CIRCUIT_AVAIL"

    return-object v0

    :pswitch_5a
    const-string v0, "LOCAL_LOW_BATTERY"

    return-object v0

    :pswitch_5d
    const-string v0, "INTERWORKING_UNSPECIFIED"

    return-object v0

    :pswitch_60
    const-string v0, "PROTOCOL_ERROR_UNSPECIFIED"

    return-object v0

    :pswitch_63
    const-string v0, "RECOVERY_ON_TIMER_EXPIRED"

    return-object v0

    :pswitch_66
    const-string v0, "MESSAGE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE"

    return-object v0

    :pswitch_69
    const-string v0, "CONDITIONAL_IE_ERROR"

    return-object v0

    :pswitch_6c
    const-string v0, "INFORMATION_ELEMENT_NON_EXISTENT"

    return-object v0

    :pswitch_6f
    const-string v0, "MESSAGE_TYPE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE"

    return-object v0

    :pswitch_72
    const-string v0, "MESSAGE_TYPE_NON_IMPLEMENTED"

    return-object v0

    :pswitch_75
    const-string v0, "INVALID_MANDATORY_INFORMATION"

    return-object v0

    :pswitch_78
    const-string v0, "SEMANTICALLY_INCORRECT_MESSAGE"

    return-object v0

    :pswitch_7b
    const-string v0, "INVALID_TRANSIT_NW_SELECTION"

    return-object v0

    :pswitch_7e
    const-string v0, "INCOMPATIBLE_DESTINATION"

    return-object v0

    :pswitch_81
    const-string v0, "USER_NOT_MEMBER_OF_CUG"

    return-object v0

    :pswitch_84
    const-string v0, "INVALID_TRANSACTION_IDENTIFIER"

    return-object v0

    :pswitch_87
    const-string v0, "SERVICE_OR_OPTION_NOT_IMPLEMENTED"

    return-object v0

    :pswitch_8a
    const-string v0, "ONLY_DIGITAL_INFORMATION_BEARER_AVAILABLE"

    return-object v0

    :pswitch_8d
    const-string v0, "REQUESTED_FACILITY_NOT_IMPLEMENTED"

    return-object v0

    :pswitch_90
    const-string v0, "BEARER_SERVICE_NOT_IMPLEMENTED"

    return-object v0

    :pswitch_93
    const-string v0, "SERVICE_OPTION_NOT_AVAILABLE"

    return-object v0

    :pswitch_96
    const-string v0, "BEARER_CAPABILITY_UNAVAILABLE"

    return-object v0

    :pswitch_99
    const-string v0, "INCOMING_CALLS_BARRED_WITHIN_CUG"

    return-object v0

    :pswitch_9c
    const-string v0, "INCOMING_AUTO_REJECTED"

    return-object v0

    :pswitch_9f
    const-string v0, "OUTGOING_EMERGENCY_CALL_PLACED"

    return-object v0

    :pswitch_a2
    const-string v0, "WFC_SERVICE_NOT_AVAILABLE_IN_THIS_LOCATION"

    return-object v0

    :pswitch_a5
    const-string v0, "EMERGENCY_CALL_OVER_WFC_NOT_AVAILABLE"

    return-object v0

    :pswitch_a8
    const-string v0, "MEDIA_TIMEOUT"

    return-object v0

    :pswitch_ab
    const-string v0, "OTASP_PROVISIONING_IN_PROCESS"

    return-object v0

    :pswitch_ae
    const-string v0, "TOO_MANY_ONGOING_CALLS"

    return-object v0

    :pswitch_b1
    const-string v0, "CALLING_DISABLED"

    return-object v0

    :pswitch_b4
    const-string v0, "CANT_CALL_WHILE_RINGING"

    return-object v0

    :pswitch_b7
    const-string v0, "ALREADY_DIALING"

    return-object v0

    :pswitch_ba
    const-string v0, "IMS_SIP_ALTERNATE_EMERGENCY_CALL"

    return-object v0

    :pswitch_bd
    const-string v0, "DIAL_VIDEO_MODIFIED_TO_DIAL_VIDEO"

    return-object v0

    :pswitch_c0
    const-string v0, "DIAL_VIDEO_MODIFIED_TO_DIAL"

    return-object v0

    :pswitch_c3
    const-string v0, "DIAL_VIDEO_MODIFIED_TO_USSD"

    return-object v0

    :pswitch_c6
    const-string v0, "DIAL_VIDEO_MODIFIED_TO_SS"

    return-object v0

    :pswitch_c9
    const-string v0, "DIAL_MODIFIED_TO_DIAL_VIDEO"

    return-object v0

    :pswitch_cc
    const-string v0, "NORMAL_UNSPECIFIED"

    return-object v0

    :pswitch_cf
    const-string v0, "EMERGENCY_PERM_FAILURE"

    return-object v0

    :pswitch_d2
    const-string v0, "EMERGENCY_TEMP_FAILURE"

    return-object v0

    :pswitch_d5
    const-string v0, "DIAL_LOW_BATTERY"

    return-object v0

    :pswitch_d8
    const-string v0, "LOW_BATTERY"

    return-object v0

    :pswitch_db
    const-string v0, "IMS_ACCESS_BLOCKED"

    return-object v0

    :pswitch_de
    const-string v0, "WIFI_LOST"

    return-object v0

    :pswitch_e1
    const-string v0, "IMEI_NOT_ACCEPTED"

    return-object v0

    :pswitch_e4
    const-string v0, "DIALED_CALL_FORWARDING_WHILE_ROAMING"

    return-object v0

    :pswitch_e7
    const-string v0, "DATA_LIMIT_REACHED"

    return-object v0

    :pswitch_ea
    const-string v0, "DATA_DISABLED"

    return-object v0

    :pswitch_ed
    const-string v0, "MAXIMUM_NUMER_OF_CALLS_REACHED"

    return-object v0

    :pswitch_f0
    const-string v0, "ANSWERED_ELSEWHERE"

    return-object v0

    :pswitch_f3
    const-string v0, "CALL_PULLED"

    return-object v0

    :pswitch_f6
    const-string v0, "VIDEO_CALL_NOT_ALLOWED_WHILE_TTY_ENABLED"

    return-object v0

    :pswitch_f9
    const-string v0, "CDMA_ALREADY_ACTIVATED"

    return-object v0

    :pswitch_fc
    const-string v0, "DIAL_MODIFIED_TO_DIAL"

    return-object v0

    :pswitch_ff
    const-string v0, "DIAL_MODIFIED_TO_SS"

    return-object v0

    :pswitch_102
    const-string v0, "DIAL_MODIFIED_TO_USSD"

    return-object v0

    :pswitch_105
    const-string v0, "IMS_MERGED_SUCCESSFULLY"

    return-object v0

    :pswitch_108
    const-string v0, "OUTGOING_CANCELED"

    return-object v0

    :pswitch_10b
    const-string v0, "OUTGOING_FAILURE"

    return-object v0

    :pswitch_10e
    const-string v0, "EXITED_ECM"

    return-object v0

    :pswitch_111
    const-string v0, "CDMA_CALL_LOST"

    return-object v0

    :pswitch_114
    const-string v0, "VOICEMAIL_NUMBER_MISSING"

    return-object v0

    :pswitch_117
    const-string v0, "DIALED_MMI"

    return-object v0

    :pswitch_11a
    const-string v0, "NO_PHONE_NUMBER_SUPPLIED"

    return-object v0

    :pswitch_11d
    const-string v0, "EMERGENCY_ONLY"

    return-object v0

    :pswitch_120
    const-string v0, "ERROR_UNSPECIFIED"

    return-object v0

    :pswitch_123
    const-string v0, "CDMA_ACCESS_BLOCKED"

    return-object v0

    :pswitch_126
    const-string v0, "CDMA_NOT_EMERGENCY"

    return-object v0

    :pswitch_129
    const-string v0, "CDMA_PREEMPTED"

    return-object v0

    :pswitch_12c
    const-string v0, "CDMA_ACCESS_FAILURE"

    return-object v0

    :pswitch_12f
    const-string v0, "CDMA_RETRY_ORDER"

    return-object v0

    :pswitch_132
    const-string v0, "CDMA_SO_REJECT"

    return-object v0

    :pswitch_135
    const-string v0, "CDMA_REORDER"

    return-object v0

    :pswitch_138
    const-string v0, "CDMA_INTERCEPT"

    return-object v0

    :pswitch_13b
    const-string v0, "CDMA_DROP"

    return-object v0

    :pswitch_13e
    const-string v0, "CDMA_LOCKED_UNTIL_POWER_CYCLE"

    return-object v0

    :pswitch_141
    const-string v0, "UNOBTAINABLE_NUMBER"

    return-object v0

    :pswitch_144
    const-string v0, "CS_RESTRICTED_EMERGENCY"

    return-object v0

    :pswitch_147
    const-string v0, "CS_RESTRICTED_NORMAL"

    return-object v0

    :pswitch_14a
    const-string v0, "CS_RESTRICTED"

    return-object v0

    :pswitch_14d
    const-string v0, "FDN_BLOCKED"

    return-object v0

    :pswitch_150
    const-string v0, "CALL_BARRED"

    return-object v0

    :pswitch_153
    const-string v0, "ICC_ERROR"

    return-object v0

    :pswitch_156
    const-string v0, "OUT_OF_SERVICE"

    return-object v0

    :pswitch_159
    const-string v0, "POWER_OFF"

    return-object v0

    :pswitch_15c
    const-string v0, "INCOMING_REJECTED"

    return-object v0

    :pswitch_15f
    const-string v0, "LIMIT_EXCEEDED"

    return-object v0

    :pswitch_162
    const-string v0, "LOST_SIGNAL"

    return-object v0

    :pswitch_165
    const-string v0, "TIMED_OUT"

    return-object v0

    :pswitch_168
    const-string v0, "SERVER_ERROR"

    return-object v0

    :pswitch_16b
    const-string v0, "OUT_OF_NETWORK"

    return-object v0

    :pswitch_16e
    const-string v0, "INVALID_CREDENTIALS"

    return-object v0

    :pswitch_171
    const-string v0, "SERVER_UNREACHABLE"

    return-object v0

    :pswitch_174
    const-string v0, "NUMBER_UNREACHABLE"

    return-object v0

    :pswitch_177
    const-string v0, "INVALID_NUMBER"

    return-object v0

    :pswitch_17a
    const-string v0, "CONGESTION"

    return-object v0

    :pswitch_17d
    const-string v0, "BUSY"

    return-object v0

    :pswitch_180
    const-string v0, "LOCAL"

    return-object v0

    :pswitch_183
    const-string v0, "NORMAL"

    return-object v0

    :pswitch_186
    const-string v0, "INCOMING_MISSED"

    return-object v0

    :pswitch_189
    const-string v0, "NOT_DISCONNECTED"

    return-object v0

    :pswitch_data_18c
    .packed-switch 0x0
        :pswitch_189
        :pswitch_186
        :pswitch_183
        :pswitch_180
        :pswitch_17d
        :pswitch_17a
        :pswitch_3
        :pswitch_177
        :pswitch_174
        :pswitch_171
        :pswitch_16e
        :pswitch_16b
        :pswitch_168
        :pswitch_165
        :pswitch_162
        :pswitch_15f
        :pswitch_15c
        :pswitch_159
        :pswitch_156
        :pswitch_153
        :pswitch_150
        :pswitch_14d
        :pswitch_14a
        :pswitch_147
        :pswitch_144
        :pswitch_141
        :pswitch_13e
        :pswitch_13b
        :pswitch_138
        :pswitch_135
        :pswitch_132
        :pswitch_12f
        :pswitch_12c
        :pswitch_129
        :pswitch_126
        :pswitch_123
        :pswitch_120
        :pswitch_11d
        :pswitch_11a
        :pswitch_117
        :pswitch_114
        :pswitch_111
        :pswitch_10e
        :pswitch_10b
        :pswitch_108
        :pswitch_105
        :pswitch_102
        :pswitch_ff
        :pswitch_fc
        :pswitch_f9
        :pswitch_f6
        :pswitch_f3
        :pswitch_f0
        :pswitch_ed
        :pswitch_ea
        :pswitch_e7
        :pswitch_3
        :pswitch_e4
        :pswitch_e1
        :pswitch_de
        :pswitch_db
        :pswitch_d8
        :pswitch_d5
        :pswitch_d2
        :pswitch_cf
        :pswitch_cc
        :pswitch_c9
        :pswitch_c6
        :pswitch_c3
        :pswitch_c0
        :pswitch_bd
        :pswitch_ba
        :pswitch_b7
        :pswitch_b4
        :pswitch_b1
        :pswitch_ae
        :pswitch_ab
        :pswitch_a8
        :pswitch_a5
        :pswitch_a2
        :pswitch_9f
        :pswitch_9c
        :pswitch_99
        :pswitch_96
        :pswitch_93
        :pswitch_90
        :pswitch_8d
        :pswitch_8a
        :pswitch_87
        :pswitch_84
        :pswitch_81
        :pswitch_7e
        :pswitch_7b
        :pswitch_78
        :pswitch_75
        :pswitch_72
        :pswitch_6f
        :pswitch_6c
        :pswitch_69
        :pswitch_66
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method
