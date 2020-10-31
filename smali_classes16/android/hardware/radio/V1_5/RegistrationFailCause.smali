.class public final Landroid/hardware/radio/V1_5/RegistrationFailCause;
.super Ljava/lang/Object;
.source "RegistrationFailCause.java"


# static fields
.field public static final CALL_CANNOT_BE_IDENTIFIED:I = 0x26

.field public static final CONDITIONAL_IE_ERROR:I = 0x64

.field public static final CONGESTION:I = 0x16

.field public static final GPRS_AND_NON_GPRS_SERVICES_NOT_ALLOWED:I = 0x8

.field public static final GPRS_SERVICES_NOT_ALLOWED:I = 0x7

.field public static final GPRS_SERVICES_NOT_ALLOWED_IN_PLMN:I = 0xe

.field public static final GSM_AUTHENTICATION_UNACCEPTABLE:I = 0x17

.field public static final ILLEGAL_ME:I = 0x6

.field public static final ILLEGAL_MS:I = 0x3

.field public static final IMEI_NOT_ACCEPTED:I = 0x5

.field public static final IMPLICITLY_DETACHED:I = 0xa

.field public static final IMSI_UNKNOWN_IN_HLR:I = 0x2

.field public static final IMSI_UNKNOWN_IN_VLR:I = 0x4

.field public static final INFORMATION_ELEMENT_NON_EXISTENT_OR_NOT_IMPLEMENTED:I = 0x63

.field public static final INVALID_MANDATORY_INFORMATION:I = 0x60

.field public static final LOCATION_AREA_NOT_ALLOWED:I = 0xc

.field public static final MAC_FAILURE:I = 0x14

.field public static final MESSAGE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE:I = 0x65

.field public static final MESSAGE_TYPE_NON_EXISTENT_OR_NOT_IMPLEMENTED:I = 0x61

.field public static final MESSAGE_TYPE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE:I = 0x62

.field public static final MSC_TEMPORARILY_NOT_REACHABLE:I = 0xf

.field public static final MS_IDENTITY_CANNOT_BE_DERIVED_BY_NETWORK:I = 0x9

.field public static final NETWORK_FAILURE:I = 0x11

.field public static final NONE:I = 0x0

.field public static final NOT_AUTHORIZED_FOR_THIS_CSG:I = 0x19

.field public static final NO_PDP_CONTEXT_ACTIVATED:I = 0x28

.field public static final NO_SUITABLE_CELLS:I = 0xf

.field public static final PLMN_NOT_ALLOWED:I = 0xb

.field public static final PROTOCOL_ERROR_UNSPECIFIED:I = 0x6f

.field public static final RETRY_UPON_ENTRY_INTO_NEW_CELL_1:I = 0x30

.field public static final RETRY_UPON_ENTRY_INTO_NEW_CELL_10:I = 0x39

.field public static final RETRY_UPON_ENTRY_INTO_NEW_CELL_11:I = 0x3a

.field public static final RETRY_UPON_ENTRY_INTO_NEW_CELL_12:I = 0x3b

.field public static final RETRY_UPON_ENTRY_INTO_NEW_CELL_13:I = 0x3c

.field public static final RETRY_UPON_ENTRY_INTO_NEW_CELL_14:I = 0x3d

.field public static final RETRY_UPON_ENTRY_INTO_NEW_CELL_15:I = 0x3e

.field public static final RETRY_UPON_ENTRY_INTO_NEW_CELL_16:I = 0x3f

.field public static final RETRY_UPON_ENTRY_INTO_NEW_CELL_2:I = 0x31

.field public static final RETRY_UPON_ENTRY_INTO_NEW_CELL_3:I = 0x32

.field public static final RETRY_UPON_ENTRY_INTO_NEW_CELL_4:I = 0x33

.field public static final RETRY_UPON_ENTRY_INTO_NEW_CELL_5:I = 0x34

.field public static final RETRY_UPON_ENTRY_INTO_NEW_CELL_6:I = 0x35

.field public static final RETRY_UPON_ENTRY_INTO_NEW_CELL_7:I = 0x36

.field public static final RETRY_UPON_ENTRY_INTO_NEW_CELL_8:I = 0x37

.field public static final RETRY_UPON_ENTRY_INTO_NEW_CELL_9:I = 0x38

.field public static final ROAMING_NOT_ALLOWED:I = 0xd

.field public static final SEMANTICALLY_INCORRECT_MESSAGE:I = 0x5f

.field public static final SERVICE_OPTION_NOT_SUBSCRIBED:I = 0x21

.field public static final SERVICE_OPTION_NOT_SUPPORTED:I = 0x20

.field public static final SERVICE_OPTION_TEMPORARILY_OUT_OF_ORDER:I = 0x22

.field public static final SMS_PROVIDED_BY_GPRS_IN_ROUTING_AREA:I = 0x1a

.field public static final SYNC_FAILURE:I = 0x15


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_17

    const-string v2, "IMSI_UNKNOWN_IN_HLR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2

    :cond_17
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_23

    const-string v2, "ILLEGAL_MS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x3

    :cond_23
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2f

    const-string v2, "IMSI_UNKNOWN_IN_VLR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x4

    :cond_2f
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3b

    const-string v2, "IMEI_NOT_ACCEPTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x5

    :cond_3b
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_47

    const-string v2, "ILLEGAL_ME"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x6

    :cond_47
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_53

    const-string v2, "GPRS_SERVICES_NOT_ALLOWED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x7

    :cond_53
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_60

    const-string v2, "GPRS_AND_NON_GPRS_SERVICES_NOT_ALLOWED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x8

    :cond_60
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_6d

    const-string v2, "MS_IDENTITY_CANNOT_BE_DERIVED_BY_NETWORK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x9

    :cond_6d
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_7a

    const-string v2, "IMPLICITLY_DETACHED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xa

    :cond_7a
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_87

    const-string v2, "PLMN_NOT_ALLOWED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xb

    :cond_87
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_94

    const-string v2, "LOCATION_AREA_NOT_ALLOWED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xc

    :cond_94
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_a1

    const-string v2, "ROAMING_NOT_ALLOWED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xd

    :cond_a1
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_ae

    const-string v2, "GPRS_SERVICES_NOT_ALLOWED_IN_PLMN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xe

    :cond_ae
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_bb

    const-string v2, "NO_SUITABLE_CELLS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xf

    :cond_bb
    and-int/lit8 v2, p0, 0xf

    if-ne v2, v3, :cond_c6

    const-string v2, "MSC_TEMPORARILY_NOT_REACHABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xf

    :cond_c6
    and-int/lit8 v2, p0, 0x11

    const/16 v3, 0x11

    if-ne v2, v3, :cond_d3

    const-string v2, "NETWORK_FAILURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x11

    :cond_d3
    and-int/lit8 v2, p0, 0x14

    const/16 v3, 0x14

    if-ne v2, v3, :cond_e0

    const-string v2, "MAC_FAILURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x14

    :cond_e0
    and-int/lit8 v2, p0, 0x15

    const/16 v3, 0x15

    if-ne v2, v3, :cond_ed

    const-string v2, "SYNC_FAILURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x15

    :cond_ed
    and-int/lit8 v2, p0, 0x16

    const/16 v3, 0x16

    if-ne v2, v3, :cond_fa

    const-string v2, "CONGESTION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x16

    :cond_fa
    and-int/lit8 v2, p0, 0x17

    const/16 v3, 0x17

    if-ne v2, v3, :cond_107

    const-string v2, "GSM_AUTHENTICATION_UNACCEPTABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x17

    :cond_107
    and-int/lit8 v2, p0, 0x19

    const/16 v3, 0x19

    if-ne v2, v3, :cond_114

    const-string v2, "NOT_AUTHORIZED_FOR_THIS_CSG"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x19

    :cond_114
    and-int/lit8 v2, p0, 0x1a

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_121

    const-string v2, "SMS_PROVIDED_BY_GPRS_IN_ROUTING_AREA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1a

    :cond_121
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_12e

    const-string v2, "SERVICE_OPTION_NOT_SUPPORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x20

    :cond_12e
    and-int/lit8 v2, p0, 0x21

    const/16 v3, 0x21

    if-ne v2, v3, :cond_13b

    const-string v2, "SERVICE_OPTION_NOT_SUBSCRIBED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x21

    :cond_13b
    and-int/lit8 v2, p0, 0x22

    const/16 v3, 0x22

    if-ne v2, v3, :cond_148

    const-string v2, "SERVICE_OPTION_TEMPORARILY_OUT_OF_ORDER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x22

    :cond_148
    and-int/lit8 v2, p0, 0x26

    const/16 v3, 0x26

    if-ne v2, v3, :cond_155

    const-string v2, "CALL_CANNOT_BE_IDENTIFIED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x26

    :cond_155
    and-int/lit8 v2, p0, 0x28

    const/16 v3, 0x28

    if-ne v2, v3, :cond_162

    const-string v2, "NO_PDP_CONTEXT_ACTIVATED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x28

    :cond_162
    and-int/lit8 v2, p0, 0x30

    const/16 v3, 0x30

    if-ne v2, v3, :cond_16f

    const-string v2, "RETRY_UPON_ENTRY_INTO_NEW_CELL_1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x30

    :cond_16f
    and-int/lit8 v2, p0, 0x31

    const/16 v3, 0x31

    if-ne v2, v3, :cond_17c

    const-string v2, "RETRY_UPON_ENTRY_INTO_NEW_CELL_2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x31

    :cond_17c
    and-int/lit8 v2, p0, 0x32

    const/16 v3, 0x32

    if-ne v2, v3, :cond_189

    const-string v2, "RETRY_UPON_ENTRY_INTO_NEW_CELL_3"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x32

    :cond_189
    and-int/lit8 v2, p0, 0x33

    const/16 v3, 0x33

    if-ne v2, v3, :cond_196

    const-string v2, "RETRY_UPON_ENTRY_INTO_NEW_CELL_4"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x33

    :cond_196
    and-int/lit8 v2, p0, 0x34

    const/16 v3, 0x34

    if-ne v2, v3, :cond_1a3

    const-string v2, "RETRY_UPON_ENTRY_INTO_NEW_CELL_5"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x34

    :cond_1a3
    and-int/lit8 v2, p0, 0x35

    const/16 v3, 0x35

    if-ne v2, v3, :cond_1b0

    const-string v2, "RETRY_UPON_ENTRY_INTO_NEW_CELL_6"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x35

    :cond_1b0
    and-int/lit8 v2, p0, 0x36

    const/16 v3, 0x36

    if-ne v2, v3, :cond_1bd

    const-string v2, "RETRY_UPON_ENTRY_INTO_NEW_CELL_7"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x36

    :cond_1bd
    and-int/lit8 v2, p0, 0x37

    const/16 v3, 0x37

    if-ne v2, v3, :cond_1ca

    const-string v2, "RETRY_UPON_ENTRY_INTO_NEW_CELL_8"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x37

    :cond_1ca
    and-int/lit8 v2, p0, 0x38

    const/16 v3, 0x38

    if-ne v2, v3, :cond_1d7

    const-string v2, "RETRY_UPON_ENTRY_INTO_NEW_CELL_9"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x38

    :cond_1d7
    and-int/lit8 v2, p0, 0x39

    const/16 v3, 0x39

    if-ne v2, v3, :cond_1e4

    const-string v2, "RETRY_UPON_ENTRY_INTO_NEW_CELL_10"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x39

    :cond_1e4
    and-int/lit8 v2, p0, 0x3a

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_1f1

    const-string v2, "RETRY_UPON_ENTRY_INTO_NEW_CELL_11"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x3a

    :cond_1f1
    and-int/lit8 v2, p0, 0x3b

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_1fe

    const-string v2, "RETRY_UPON_ENTRY_INTO_NEW_CELL_12"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x3b

    :cond_1fe
    and-int/lit8 v2, p0, 0x3c

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_20b

    const-string v2, "RETRY_UPON_ENTRY_INTO_NEW_CELL_13"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x3c

    :cond_20b
    and-int/lit8 v2, p0, 0x3d

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_218

    const-string v2, "RETRY_UPON_ENTRY_INTO_NEW_CELL_14"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x3d

    :cond_218
    and-int/lit8 v2, p0, 0x3e

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_225

    const-string v2, "RETRY_UPON_ENTRY_INTO_NEW_CELL_15"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x3e

    :cond_225
    and-int/lit8 v2, p0, 0x3f

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_232

    const-string v2, "RETRY_UPON_ENTRY_INTO_NEW_CELL_16"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x3f

    :cond_232
    and-int/lit8 v2, p0, 0x5f

    const/16 v3, 0x5f

    if-ne v2, v3, :cond_23f

    const-string v2, "SEMANTICALLY_INCORRECT_MESSAGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x5f

    :cond_23f
    and-int/lit8 v2, p0, 0x60

    const/16 v3, 0x60

    if-ne v2, v3, :cond_24c

    const-string v2, "INVALID_MANDATORY_INFORMATION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x60

    :cond_24c
    and-int/lit8 v2, p0, 0x61

    const/16 v3, 0x61

    if-ne v2, v3, :cond_259

    const-string v2, "MESSAGE_TYPE_NON_EXISTENT_OR_NOT_IMPLEMENTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x61

    :cond_259
    and-int/lit8 v2, p0, 0x62

    const/16 v3, 0x62

    if-ne v2, v3, :cond_266

    const-string v2, "MESSAGE_TYPE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x62

    :cond_266
    and-int/lit8 v2, p0, 0x63

    const/16 v3, 0x63

    if-ne v2, v3, :cond_273

    const-string v2, "INFORMATION_ELEMENT_NON_EXISTENT_OR_NOT_IMPLEMENTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x63

    :cond_273
    and-int/lit8 v2, p0, 0x64

    const/16 v3, 0x64

    if-ne v2, v3, :cond_280

    const-string v2, "CONDITIONAL_IE_ERROR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x64

    :cond_280
    and-int/lit8 v2, p0, 0x65

    const/16 v3, 0x65

    if-ne v2, v3, :cond_28d

    const-string v2, "MESSAGE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x65

    :cond_28d
    and-int/lit8 v2, p0, 0x6f

    const/16 v3, 0x6f

    if-ne v2, v3, :cond_29a

    const-string v2, "PROTOCOL_ERROR_UNSPECIFIED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x6f

    :cond_29a
    if-eq p0, v1, :cond_2b6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b6
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    const-string v0, "NONE"

    return-object v0

    :cond_5
    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    const-string v0, "IMSI_UNKNOWN_IN_HLR"

    return-object v0

    :cond_b
    const/4 v0, 0x3

    if-ne p0, v0, :cond_11

    const-string v0, "ILLEGAL_MS"

    return-object v0

    :cond_11
    const/4 v0, 0x4

    if-ne p0, v0, :cond_17

    const-string v0, "IMSI_UNKNOWN_IN_VLR"

    return-object v0

    :cond_17
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1d

    const-string v0, "IMEI_NOT_ACCEPTED"

    return-object v0

    :cond_1d
    const/4 v0, 0x6

    if-ne p0, v0, :cond_23

    const-string v0, "ILLEGAL_ME"

    return-object v0

    :cond_23
    const/4 v0, 0x7

    if-ne p0, v0, :cond_29

    const-string v0, "GPRS_SERVICES_NOT_ALLOWED"

    return-object v0

    :cond_29
    const/16 v0, 0x8

    if-ne p0, v0, :cond_30

    const-string v0, "GPRS_AND_NON_GPRS_SERVICES_NOT_ALLOWED"

    return-object v0

    :cond_30
    const/16 v0, 0x9

    if-ne p0, v0, :cond_37

    const-string v0, "MS_IDENTITY_CANNOT_BE_DERIVED_BY_NETWORK"

    return-object v0

    :cond_37
    const/16 v0, 0xa

    if-ne p0, v0, :cond_3e

    const-string v0, "IMPLICITLY_DETACHED"

    return-object v0

    :cond_3e
    const/16 v0, 0xb

    if-ne p0, v0, :cond_45

    const-string v0, "PLMN_NOT_ALLOWED"

    return-object v0

    :cond_45
    const/16 v0, 0xc

    if-ne p0, v0, :cond_4c

    const-string v0, "LOCATION_AREA_NOT_ALLOWED"

    return-object v0

    :cond_4c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_53

    const-string v0, "ROAMING_NOT_ALLOWED"

    return-object v0

    :cond_53
    const/16 v0, 0xe

    if-ne p0, v0, :cond_5a

    const-string v0, "GPRS_SERVICES_NOT_ALLOWED_IN_PLMN"

    return-object v0

    :cond_5a
    const/16 v0, 0xf

    if-ne p0, v0, :cond_61

    const-string v0, "NO_SUITABLE_CELLS"

    return-object v0

    :cond_61
    if-ne p0, v0, :cond_66

    const-string v0, "MSC_TEMPORARILY_NOT_REACHABLE"

    return-object v0

    :cond_66
    const/16 v0, 0x11

    if-ne p0, v0, :cond_6d

    const-string v0, "NETWORK_FAILURE"

    return-object v0

    :cond_6d
    const/16 v0, 0x14

    if-ne p0, v0, :cond_74

    const-string v0, "MAC_FAILURE"

    return-object v0

    :cond_74
    const/16 v0, 0x15

    if-ne p0, v0, :cond_7b

    const-string v0, "SYNC_FAILURE"

    return-object v0

    :cond_7b
    const/16 v0, 0x16

    if-ne p0, v0, :cond_82

    const-string v0, "CONGESTION"

    return-object v0

    :cond_82
    const/16 v0, 0x17

    if-ne p0, v0, :cond_89

    const-string v0, "GSM_AUTHENTICATION_UNACCEPTABLE"

    return-object v0

    :cond_89
    const/16 v0, 0x19

    if-ne p0, v0, :cond_90

    const-string v0, "NOT_AUTHORIZED_FOR_THIS_CSG"

    return-object v0

    :cond_90
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_97

    const-string v0, "SMS_PROVIDED_BY_GPRS_IN_ROUTING_AREA"

    return-object v0

    :cond_97
    const/16 v0, 0x20

    if-ne p0, v0, :cond_9e

    const-string v0, "SERVICE_OPTION_NOT_SUPPORTED"

    return-object v0

    :cond_9e
    const/16 v0, 0x21

    if-ne p0, v0, :cond_a5

    const-string v0, "SERVICE_OPTION_NOT_SUBSCRIBED"

    return-object v0

    :cond_a5
    const/16 v0, 0x22

    if-ne p0, v0, :cond_ac

    const-string v0, "SERVICE_OPTION_TEMPORARILY_OUT_OF_ORDER"

    return-object v0

    :cond_ac
    const/16 v0, 0x26

    if-ne p0, v0, :cond_b3

    const-string v0, "CALL_CANNOT_BE_IDENTIFIED"

    return-object v0

    :cond_b3
    const/16 v0, 0x28

    if-ne p0, v0, :cond_ba

    const-string v0, "NO_PDP_CONTEXT_ACTIVATED"

    return-object v0

    :cond_ba
    const/16 v0, 0x30

    if-ne p0, v0, :cond_c1

    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_1"

    return-object v0

    :cond_c1
    const/16 v0, 0x31

    if-ne p0, v0, :cond_c8

    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_2"

    return-object v0

    :cond_c8
    const/16 v0, 0x32

    if-ne p0, v0, :cond_cf

    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_3"

    return-object v0

    :cond_cf
    const/16 v0, 0x33

    if-ne p0, v0, :cond_d6

    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_4"

    return-object v0

    :cond_d6
    const/16 v0, 0x34

    if-ne p0, v0, :cond_dd

    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_5"

    return-object v0

    :cond_dd
    const/16 v0, 0x35

    if-ne p0, v0, :cond_e4

    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_6"

    return-object v0

    :cond_e4
    const/16 v0, 0x36

    if-ne p0, v0, :cond_eb

    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_7"

    return-object v0

    :cond_eb
    const/16 v0, 0x37

    if-ne p0, v0, :cond_f2

    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_8"

    return-object v0

    :cond_f2
    const/16 v0, 0x38

    if-ne p0, v0, :cond_f9

    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_9"

    return-object v0

    :cond_f9
    const/16 v0, 0x39

    if-ne p0, v0, :cond_100

    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_10"

    return-object v0

    :cond_100
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_107

    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_11"

    return-object v0

    :cond_107
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_10e

    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_12"

    return-object v0

    :cond_10e
    const/16 v0, 0x3c

    if-ne p0, v0, :cond_115

    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_13"

    return-object v0

    :cond_115
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_11c

    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_14"

    return-object v0

    :cond_11c
    const/16 v0, 0x3e

    if-ne p0, v0, :cond_123

    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_15"

    return-object v0

    :cond_123
    const/16 v0, 0x3f

    if-ne p0, v0, :cond_12a

    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_16"

    return-object v0

    :cond_12a
    const/16 v0, 0x5f

    if-ne p0, v0, :cond_131

    const-string v0, "SEMANTICALLY_INCORRECT_MESSAGE"

    return-object v0

    :cond_131
    const/16 v0, 0x60

    if-ne p0, v0, :cond_138

    const-string v0, "INVALID_MANDATORY_INFORMATION"

    return-object v0

    :cond_138
    const/16 v0, 0x61

    if-ne p0, v0, :cond_13f

    const-string v0, "MESSAGE_TYPE_NON_EXISTENT_OR_NOT_IMPLEMENTED"

    return-object v0

    :cond_13f
    const/16 v0, 0x62

    if-ne p0, v0, :cond_146

    const-string v0, "MESSAGE_TYPE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE"

    return-object v0

    :cond_146
    const/16 v0, 0x63

    if-ne p0, v0, :cond_14d

    const-string v0, "INFORMATION_ELEMENT_NON_EXISTENT_OR_NOT_IMPLEMENTED"

    return-object v0

    :cond_14d
    const/16 v0, 0x64

    if-ne p0, v0, :cond_154

    const-string v0, "CONDITIONAL_IE_ERROR"

    return-object v0

    :cond_154
    const/16 v0, 0x65

    if-ne p0, v0, :cond_15b

    const-string v0, "MESSAGE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE"

    return-object v0

    :cond_15b
    const/16 v0, 0x6f

    if-ne p0, v0, :cond_162

    const-string v0, "PROTOCOL_ERROR_UNSPECIFIED"

    return-object v0

    :cond_162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
