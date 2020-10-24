.class public Lcom/xiaomi/idm/api/ResponseCode;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CODE_READY_FOR_IDM_REQUEST:I = 0x3

.field public static final CODE_READY_FOR_LOCAL_REQUEST:I = 0x1

.field public static final CODE_READY_FOR_RPC_REQUEST:I = 0x2

.field public static final CODE_SUCCEED:I = 0x0

.field public static final ERR_ACTION_NOT_FOUND:I = -0x7

.field public static final ERR_ACTION_NOT_FOUND_MSG:Ljava/lang/String; = "Action not found"

.field public static final ERR_REQUEST_NULL:I = -0x1

.field public static final ERR_REQUEST_NULL_MSG:Ljava/lang/String; = "Error when request bytes is null"

.field public static final ERR_REQUEST_PARSE:I = -0x2

.field public static final ERR_REQUEST_PARSE_MSG:Ljava/lang/String; = "Error when parse request bytes to IDMRequest"

.field public static final ERR_REQUEST_RPC:I = -0x5

.field public static final ERR_REQUEST_RPC_MSG:Ljava/lang/String; = "Request failed when call RPC service"

.field public static final ERR_RESPONSE_NULL:I = -0x3

.field public static final ERR_RESPONSE_NULL_MSG:Ljava/lang/String; = "Response bytes null when do request"

.field public static final ERR_RESPONSE_PARSE:I = -0x4

.field public static final ERR_RESPONSE_PARSE_IN_ACTION:I = -0x8

.field public static final ERR_RESPONSE_PARSE_IN_ACTION_MSG:Ljava/lang/String; = "Response parse error in action"

.field public static final ERR_RESPONSE_PARSE_MSG:Ljava/lang/String; = "Response parse error when do request"

.field public static final ERR_RMI_CANCElED:I = -0xb

.field public static final ERR_RMI_CANCElED_MSG:Ljava/lang/String; = "Call is canceled"

.field public static final ERR_RMI_THREAD_INTERRUPTED:I = -0xa

.field public static final ERR_RMI_THREAD_INTERRUPTED_MSG:Ljava/lang/String; = "Calling thread is interrupted"

.field public static final ERR_RMI_TIME_OUT:I = -0x9

.field public static final ERR_RMI_TIME_OUT_MSG:Ljava/lang/String; = "RMI call time out"

.field public static final ERR_SERVICE_NOT_FOUND:I = -0x6

.field public static final ERR_SERVICE_NOT_FOUND_MSG:Ljava/lang/String; = "Do not found service"

.field private static final TAG:Ljava/lang/String; = "ResponseCode"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getResponseMsg(I)Ljava/lang/String;
    .locals 4

    if-ltz p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown response code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " need to define here"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ResponseCode"

    invoke-static {v3, v0, v2}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_0
    const-string p0, "Error when request bytes is null"

    goto :goto_0

    :pswitch_1
    const-string p0, "Error when parse request bytes to IDMRequest"

    goto :goto_0

    :pswitch_2
    const-string p0, "Response bytes null when do request"

    goto :goto_0

    :pswitch_3
    const-string p0, "Response parse error when do request"

    goto :goto_0

    :pswitch_4
    const-string p0, "Request failed when call RPC service"

    goto :goto_0

    :pswitch_5
    const-string p0, "Do not found service"

    goto :goto_0

    :pswitch_6
    const-string p0, "Action not found"

    goto :goto_0

    :pswitch_7
    const-string p0, "Response parse error in action"

    goto :goto_0

    :pswitch_8
    const-string p0, "RMI call time out"

    goto :goto_0

    :pswitch_9
    const-string p0, "Calling thread is interrupted"

    goto :goto_0

    :pswitch_a
    const-string p0, "Call is canceled"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0xb
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
