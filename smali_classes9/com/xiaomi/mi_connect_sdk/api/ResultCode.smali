.class public final enum Lcom/xiaomi/mi_connect_sdk/api/ResultCode;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

.field public static final enum ACCEPT_CONNECTION_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

.field public static final enum ALREADY_ADVERTISING:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

.field public static final enum ALREADY_DISCOVERY:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

.field public static final enum APP_NOT_SUPPORT_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

.field public static final enum COMMUNICATION_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

.field public static final enum DISCONNECT_FROM_END_POINT_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

.field public static final enum DISCOVERY_END:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

.field public static final enum DISCOVERY_NOT_ALLOWED_IN_CONNECTION:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

.field public static final enum ENDPOINT_ID_INVALID:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

.field public static final enum GENERAL_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

.field public static final enum GENERAL_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

.field public static final enum ILLEGAL_ARGUMENT_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

.field public static final enum LOCALAPP_ID_INVALID:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

.field public static final enum NOT_IN_ADVERTISING:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

.field public static final enum NOT_IN_DISCOVERY:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

.field public static final enum REJECTED:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

.field public static final enum REJECT_CONNECTION_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

.field public static final enum REMOTE_CLINET_NOT_EXITENT:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

.field public static final enum REQUEST_CONNECTION_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

.field public static final enum SEND_PAYLOAD_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

.field public static final enum SEND_PAYLOAD_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

.field public static final enum SERVER_NOT_EXITENT:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

.field public static final enum SERVER_OCCUPIED:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

.field public static final enum SERVICE_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

.field public static final enum SERVICE_INCOMPATIBLE:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

.field public static final enum START_ADVERTISING_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

.field public static final enum START_ADVERTISING_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

.field public static final enum START_DISCOVERY_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

.field public static final enum START_DISCOVERY_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

.field public static final enum STOP_ADVERTIDING_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

.field public static final enum STOP_ADVERTISING_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

.field public static final enum STOP_DISCOVERY_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

.field public static final enum STOP_DISCOVERY_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

.field public static final enum UNKNOWN_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const-string v1, "GENERAL_SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->GENERAL_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const-string v1, "START_DISCOVERY_SUCCESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->START_DISCOVERY_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const-string v1, "STOP_DISCOVERY_SUCCESS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->STOP_DISCOVERY_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const-string v1, "START_ADVERTISING_SUCCESS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->START_ADVERTISING_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const-string v1, "STOP_ADVERTISING_SUCCESS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->STOP_ADVERTISING_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const-string v1, "REQUEST_CONNECTION_SUCCESS"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->REQUEST_CONNECTION_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const-string v1, "ACCEPT_CONNECTION_SUCCESS"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->ACCEPT_CONNECTION_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const-string v1, "REJECT_CONNECTION_SUCCESS"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->REJECT_CONNECTION_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const-string v1, "DISCONNECT_FROM_END_POINT_SUCCESS"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->DISCONNECT_FROM_END_POINT_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const-string v1, "SEND_PAYLOAD_SUCCESS"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SEND_PAYLOAD_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const-string v1, "DISCOVERY_END"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->DISCOVERY_END:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const-string v1, "GENERAL_ERROR"

    const/16 v13, 0xb

    const/4 v14, -0x1

    invoke-direct {v0, v1, v13, v14}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->GENERAL_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const-string v1, "APP_NOT_SUPPORT_ERROR"

    const/16 v14, 0xc

    const/4 v15, -0x2

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->APP_NOT_SUPPORT_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const-string v1, "SERVICE_ERROR"

    const/16 v15, 0xd

    const/4 v14, -0x3

    invoke-direct {v0, v1, v15, v14}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const-string v1, "ILLEGAL_ARGUMENT_ERROR"

    const/16 v14, 0xe

    const/4 v15, -0x4

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->ILLEGAL_ARGUMENT_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const-string v1, "ALREADY_ADVERTISING"

    const/16 v15, 0xf

    const/4 v14, -0x5

    invoke-direct {v0, v1, v15, v14}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->ALREADY_ADVERTISING:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const-string v1, "ALREADY_DISCOVERY"

    const/16 v14, 0x10

    const/4 v15, -0x6

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->ALREADY_DISCOVERY:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const-string v1, "START_ADVERTISING_ERROR"

    const/16 v15, 0x11

    const/4 v14, -0x7

    invoke-direct {v0, v1, v15, v14}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->START_ADVERTISING_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const-string v1, "STOP_ADVERTIDING_ERROR"

    const/16 v14, 0x12

    const/4 v15, -0x8

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->STOP_ADVERTIDING_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const-string v1, "START_DISCOVERY_ERROR"

    const/16 v15, 0x13

    const/16 v14, -0x9

    invoke-direct {v0, v1, v15, v14}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->START_DISCOVERY_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const-string v1, "STOP_DISCOVERY_ERROR"

    const/16 v14, 0x14

    const/16 v15, -0xa

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->STOP_DISCOVERY_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const-string v1, "SEND_PAYLOAD_ERROR"

    const/16 v15, 0x15

    const/16 v14, -0xb

    invoke-direct {v0, v1, v15, v14}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SEND_PAYLOAD_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const-string v1, "NOT_IN_ADVERTISING"

    const/16 v14, 0x16

    const/16 v15, -0xc

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->NOT_IN_ADVERTISING:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const-string v1, "NOT_IN_DISCOVERY"

    const/16 v14, 0x17

    const/16 v15, -0xd

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->NOT_IN_DISCOVERY:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const-string v1, "ENDPOINT_ID_INVALID"

    const/16 v14, 0x18

    const/16 v15, -0xe

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->ENDPOINT_ID_INVALID:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const-string v1, "LOCALAPP_ID_INVALID"

    const/16 v14, 0x19

    const/16 v15, -0xf

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->LOCALAPP_ID_INVALID:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const-string v1, "SERVICE_INCOMPATIBLE"

    const/16 v14, 0x1a

    const/16 v15, -0x10

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_INCOMPATIBLE:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const-string v1, "SERVER_OCCUPIED"

    const/16 v14, 0x1b

    const/16 v15, -0x11

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVER_OCCUPIED:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const-string v1, "DISCOVERY_NOT_ALLOWED_IN_CONNECTION"

    const/16 v14, 0x1c

    const/16 v15, -0x12

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->DISCOVERY_NOT_ALLOWED_IN_CONNECTION:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const-string v1, "SERVER_NOT_EXITENT"

    const/16 v14, 0x1d

    const/16 v15, -0x13

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVER_NOT_EXITENT:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const-string v1, "REJECTED"

    const/16 v14, 0x1e

    const/16 v15, -0x14

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->REJECTED:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const-string v1, "COMMUNICATION_ERROR"

    const/16 v14, 0x1f

    const/16 v15, -0x15

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->COMMUNICATION_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const-string v1, "REMOTE_CLINET_NOT_EXITENT"

    const/16 v14, 0x20

    const/16 v15, -0x16

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->REMOTE_CLINET_NOT_EXITENT:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const-string v1, "UNKNOWN_ERROR"

    const/16 v14, 0x21

    const/16 v15, -0x270f

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->UNKNOWN_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const/16 v1, 0x22

    new-array v1, v1, [Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    sget-object v14, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->GENERAL_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    aput-object v14, v1, v2

    sget-object v2, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->START_DISCOVERY_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->STOP_DISCOVERY_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    aput-object v2, v1, v4

    sget-object v2, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->START_ADVERTISING_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    aput-object v2, v1, v5

    sget-object v2, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->STOP_ADVERTISING_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    aput-object v2, v1, v6

    sget-object v2, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->REQUEST_CONNECTION_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    aput-object v2, v1, v7

    sget-object v2, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->ACCEPT_CONNECTION_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    aput-object v2, v1, v8

    sget-object v2, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->REJECT_CONNECTION_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    aput-object v2, v1, v9

    sget-object v2, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->DISCONNECT_FROM_END_POINT_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    aput-object v2, v1, v10

    sget-object v2, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SEND_PAYLOAD_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    aput-object v2, v1, v11

    sget-object v2, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->DISCOVERY_END:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    aput-object v2, v1, v12

    sget-object v2, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->GENERAL_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    aput-object v2, v1, v13

    sget-object v2, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->APP_NOT_SUPPORT_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->ILLEGAL_ARGUMENT_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->ALREADY_ADVERTISING:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->ALREADY_DISCOVERY:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->START_ADVERTISING_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->STOP_ADVERTIDING_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->START_DISCOVERY_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->STOP_DISCOVERY_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SEND_PAYLOAD_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->NOT_IN_ADVERTISING:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->NOT_IN_DISCOVERY:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const/16 v3, 0x17

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->ENDPOINT_ID_INVALID:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const/16 v3, 0x18

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->LOCALAPP_ID_INVALID:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const/16 v3, 0x19

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_INCOMPATIBLE:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVER_OCCUPIED:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->DISCOVERY_NOT_ALLOWED_IN_CONNECTION:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVER_NOT_EXITENT:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->REJECTED:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->COMMUNICATION_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->REMOTE_CLINET_NOT_EXITENT:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const/16 v3, 0x20

    aput-object v2, v1, v3

    const/16 v2, 0x21

    aput-object v0, v1, v2

    sput-object v1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->$VALUES:[Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->code:I

    return-void
.end method

.method public static fromInt(I)Lcom/xiaomi/mi_connect_sdk/api/ResultCode;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->GENERAL_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->START_DISCOVERY_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->STOP_DISCOVERY_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    return-object p0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->START_ADVERTISING_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    return-object p0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->STOP_ADVERTISING_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    return-object p0

    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->REQUEST_CONNECTION_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    return-object p0

    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->ACCEPT_CONNECTION_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    return-object p0

    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    sget-object p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->REJECT_CONNECTION_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    return-object p0

    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    sget-object p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->DISCONNECT_FROM_END_POINT_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    return-object p0

    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    sget-object p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SEND_PAYLOAD_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    return-object p0

    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    sget-object p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->DISCOVERY_END:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    return-object p0

    :cond_a
    const/4 v0, -0x1

    if-ne p0, v0, :cond_b

    sget-object p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->GENERAL_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    return-object p0

    :cond_b
    const/4 v0, -0x2

    if-ne p0, v0, :cond_c

    sget-object p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->APP_NOT_SUPPORT_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    return-object p0

    :cond_c
    const/4 v0, -0x3

    if-ne p0, v0, :cond_d

    sget-object p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    return-object p0

    :cond_d
    const/4 v0, -0x4

    if-ne p0, v0, :cond_e

    sget-object p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->ILLEGAL_ARGUMENT_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    return-object p0

    :cond_e
    const/4 v0, -0x5

    if-ne p0, v0, :cond_f

    sget-object p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->ALREADY_ADVERTISING:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    return-object p0

    :cond_f
    const/4 v0, -0x6

    if-ne p0, v0, :cond_10

    sget-object p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->ALREADY_DISCOVERY:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    return-object p0

    :cond_10
    const/4 v0, -0x7

    if-ne p0, v0, :cond_11

    sget-object p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->START_ADVERTISING_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    return-object p0

    :cond_11
    const/4 v0, -0x8

    if-ne p0, v0, :cond_12

    sget-object p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->STOP_ADVERTIDING_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    return-object p0

    :cond_12
    const/16 v0, -0x9

    if-ne p0, v0, :cond_13

    sget-object p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->START_DISCOVERY_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    return-object p0

    :cond_13
    const/16 v0, -0xa

    if-ne p0, v0, :cond_14

    sget-object p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->STOP_DISCOVERY_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    return-object p0

    :cond_14
    const/16 v0, -0xb

    if-ne p0, v0, :cond_15

    sget-object p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SEND_PAYLOAD_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    return-object p0

    :cond_15
    const/16 v0, -0xc

    if-ne p0, v0, :cond_16

    sget-object p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->NOT_IN_ADVERTISING:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    return-object p0

    :cond_16
    const/16 v0, -0xd

    if-ne p0, v0, :cond_17

    sget-object p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->NOT_IN_DISCOVERY:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    return-object p0

    :cond_17
    const/16 v0, -0xe

    if-ne p0, v0, :cond_18

    sget-object p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->ENDPOINT_ID_INVALID:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    return-object p0

    :cond_18
    const/16 v0, -0xf

    if-ne p0, v0, :cond_19

    sget-object p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->LOCALAPP_ID_INVALID:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    return-object p0

    :cond_19
    const/16 v0, -0x10

    if-ne p0, v0, :cond_1a

    sget-object p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_INCOMPATIBLE:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    return-object p0

    :cond_1a
    const/16 v0, -0x11

    if-ne p0, v0, :cond_1b

    sget-object p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVER_OCCUPIED:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    return-object p0

    :cond_1b
    const/16 v0, -0x12

    if-ne p0, v0, :cond_1c

    sget-object p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->DISCOVERY_NOT_ALLOWED_IN_CONNECTION:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    return-object p0

    :cond_1c
    const/16 v0, -0x13

    if-ne p0, v0, :cond_1d

    sget-object p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVER_NOT_EXITENT:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    return-object p0

    :cond_1d
    const/16 v0, -0x14

    if-ne p0, v0, :cond_1e

    sget-object p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->REJECTED:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    return-object p0

    :cond_1e
    const/16 v0, -0x15

    if-ne p0, v0, :cond_1f

    sget-object p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->COMMUNICATION_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    return-object p0

    :cond_1f
    const/16 v0, -0x16

    if-ne p0, v0, :cond_20

    sget-object p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->REMOTE_CLINET_NOT_EXITENT:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    return-object p0

    :cond_20
    sget-object p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->UNKNOWN_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/mi_connect_sdk/api/ResultCode;
    .locals 1

    const-class v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/mi_connect_sdk/api/ResultCode;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->$VALUES:[Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {v0}, [Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->code:I

    return p0
.end method
