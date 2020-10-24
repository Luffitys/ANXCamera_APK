.class synthetic Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$1;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final synthetic $SwitchMap$com$xiaomi$mi_connect_sdk$api$ResultCode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->values()[Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$1;->$SwitchMap$com$xiaomi$mi_connect_sdk$api$ResultCode:[I

    :try_start_0
    sget-object v1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->STOP_ADVERTISING_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$1;->$SwitchMap$com$xiaomi$mi_connect_sdk$api$ResultCode:[I

    sget-object v1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->STOP_ADVERTIDING_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$1;->$SwitchMap$com$xiaomi$mi_connect_sdk$api$ResultCode:[I

    sget-object v1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->START_ADVERTISING_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$1;->$SwitchMap$com$xiaomi$mi_connect_sdk$api$ResultCode:[I

    sget-object v1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->ALREADY_ADVERTISING:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$1;->$SwitchMap$com$xiaomi$mi_connect_sdk$api$ResultCode:[I

    sget-object v1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->STOP_DISCOVERY_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$1;->$SwitchMap$com$xiaomi$mi_connect_sdk$api$ResultCode:[I

    sget-object v1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->STOP_DISCOVERY_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$1;->$SwitchMap$com$xiaomi$mi_connect_sdk$api$ResultCode:[I

    sget-object v1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->START_DISCOVERY_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$1;->$SwitchMap$com$xiaomi$mi_connect_sdk$api$ResultCode:[I

    sget-object v1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->ALREADY_DISCOVERY:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$1;->$SwitchMap$com$xiaomi$mi_connect_sdk$api$ResultCode:[I

    sget-object v1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->GENERAL_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method
