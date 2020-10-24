.class public final enum Lcom/android/camera/videoplayer/PlayerMessageState;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum CLEARING_PLAYER_INSTANCE:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum CREATING_PLAYER_INSTANCE:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum DATA_SOURCE_SET:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum END:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum ERROR:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum IDLE:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum INITIALIZED:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum PAUSED:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum PAUSING:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum PLAYBACK_COMPLETED:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum PLAYER_INSTANCE_CLEARED:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum PLAYER_INSTANCE_CREATED:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum PREPARED:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum PREPARING:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum RELEASED:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum RELEASING:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum RESET:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum RESETTING:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum SETTING_DATA_SOURCE:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum SETTING_NEW_PLAYER:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum STARTED:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum STARTING:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum STOPPED:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum STOPPING:Lcom/android/camera/videoplayer/PlayerMessageState;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const-string v1, "SETTING_NEW_PLAYER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->SETTING_NEW_PLAYER:Lcom/android/camera/videoplayer/PlayerMessageState;

    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const-string v1, "IDLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->IDLE:Lcom/android/camera/videoplayer/PlayerMessageState;

    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const-string v1, "INITIALIZED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->INITIALIZED:Lcom/android/camera/videoplayer/PlayerMessageState;

    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const-string v1, "PREPARING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->PREPARING:Lcom/android/camera/videoplayer/PlayerMessageState;

    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const-string v1, "PREPARED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->PREPARED:Lcom/android/camera/videoplayer/PlayerMessageState;

    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const-string v1, "STARTING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->STARTING:Lcom/android/camera/videoplayer/PlayerMessageState;

    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const-string v1, "STARTED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->STARTED:Lcom/android/camera/videoplayer/PlayerMessageState;

    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const-string v1, "PAUSING"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->PAUSING:Lcom/android/camera/videoplayer/PlayerMessageState;

    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const-string v1, "PAUSED"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->PAUSED:Lcom/android/camera/videoplayer/PlayerMessageState;

    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const-string v1, "STOPPING"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->STOPPING:Lcom/android/camera/videoplayer/PlayerMessageState;

    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const-string v1, "STOPPED"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->STOPPED:Lcom/android/camera/videoplayer/PlayerMessageState;

    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const-string v1, "RELEASING"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->RELEASING:Lcom/android/camera/videoplayer/PlayerMessageState;

    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const-string v1, "RELEASED"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->RELEASED:Lcom/android/camera/videoplayer/PlayerMessageState;

    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const-string v1, "RESETTING"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->RESETTING:Lcom/android/camera/videoplayer/PlayerMessageState;

    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const-string v1, "RESET"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->RESET:Lcom/android/camera/videoplayer/PlayerMessageState;

    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const-string v1, "CLEARING_PLAYER_INSTANCE"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->CLEARING_PLAYER_INSTANCE:Lcom/android/camera/videoplayer/PlayerMessageState;

    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const-string v1, "PLAYER_INSTANCE_CLEARED"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->PLAYER_INSTANCE_CLEARED:Lcom/android/camera/videoplayer/PlayerMessageState;

    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const-string v1, "CREATING_PLAYER_INSTANCE"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->CREATING_PLAYER_INSTANCE:Lcom/android/camera/videoplayer/PlayerMessageState;

    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const-string v1, "PLAYER_INSTANCE_CREATED"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->PLAYER_INSTANCE_CREATED:Lcom/android/camera/videoplayer/PlayerMessageState;

    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const-string v1, "SETTING_DATA_SOURCE"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->SETTING_DATA_SOURCE:Lcom/android/camera/videoplayer/PlayerMessageState;

    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const-string v1, "DATA_SOURCE_SET"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->DATA_SOURCE_SET:Lcom/android/camera/videoplayer/PlayerMessageState;

    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const-string v1, "PLAYBACK_COMPLETED"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->PLAYBACK_COMPLETED:Lcom/android/camera/videoplayer/PlayerMessageState;

    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const-string v1, "END"

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->END:Lcom/android/camera/videoplayer/PlayerMessageState;

    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const-string v1, "ERROR"

    const/16 v15, 0x17

    invoke-direct {v0, v1, v15}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->ERROR:Lcom/android/camera/videoplayer/PlayerMessageState;

    const/16 v1, 0x18

    new-array v1, v1, [Lcom/android/camera/videoplayer/PlayerMessageState;

    sget-object v15, Lcom/android/camera/videoplayer/PlayerMessageState;->SETTING_NEW_PLAYER:Lcom/android/camera/videoplayer/PlayerMessageState;

    aput-object v15, v1, v2

    sget-object v2, Lcom/android/camera/videoplayer/PlayerMessageState;->IDLE:Lcom/android/camera/videoplayer/PlayerMessageState;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/camera/videoplayer/PlayerMessageState;->INITIALIZED:Lcom/android/camera/videoplayer/PlayerMessageState;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/camera/videoplayer/PlayerMessageState;->PREPARING:Lcom/android/camera/videoplayer/PlayerMessageState;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/camera/videoplayer/PlayerMessageState;->PREPARED:Lcom/android/camera/videoplayer/PlayerMessageState;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/camera/videoplayer/PlayerMessageState;->STARTING:Lcom/android/camera/videoplayer/PlayerMessageState;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/camera/videoplayer/PlayerMessageState;->STARTED:Lcom/android/camera/videoplayer/PlayerMessageState;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/camera/videoplayer/PlayerMessageState;->PAUSING:Lcom/android/camera/videoplayer/PlayerMessageState;

    aput-object v2, v1, v9

    sget-object v2, Lcom/android/camera/videoplayer/PlayerMessageState;->PAUSED:Lcom/android/camera/videoplayer/PlayerMessageState;

    aput-object v2, v1, v10

    sget-object v2, Lcom/android/camera/videoplayer/PlayerMessageState;->STOPPING:Lcom/android/camera/videoplayer/PlayerMessageState;

    aput-object v2, v1, v11

    sget-object v2, Lcom/android/camera/videoplayer/PlayerMessageState;->STOPPED:Lcom/android/camera/videoplayer/PlayerMessageState;

    aput-object v2, v1, v12

    sget-object v2, Lcom/android/camera/videoplayer/PlayerMessageState;->RELEASING:Lcom/android/camera/videoplayer/PlayerMessageState;

    aput-object v2, v1, v13

    sget-object v2, Lcom/android/camera/videoplayer/PlayerMessageState;->RELEASED:Lcom/android/camera/videoplayer/PlayerMessageState;

    aput-object v2, v1, v14

    sget-object v2, Lcom/android/camera/videoplayer/PlayerMessageState;->RESETTING:Lcom/android/camera/videoplayer/PlayerMessageState;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/camera/videoplayer/PlayerMessageState;->RESET:Lcom/android/camera/videoplayer/PlayerMessageState;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/camera/videoplayer/PlayerMessageState;->CLEARING_PLAYER_INSTANCE:Lcom/android/camera/videoplayer/PlayerMessageState;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/camera/videoplayer/PlayerMessageState;->PLAYER_INSTANCE_CLEARED:Lcom/android/camera/videoplayer/PlayerMessageState;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/camera/videoplayer/PlayerMessageState;->CREATING_PLAYER_INSTANCE:Lcom/android/camera/videoplayer/PlayerMessageState;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/camera/videoplayer/PlayerMessageState;->PLAYER_INSTANCE_CREATED:Lcom/android/camera/videoplayer/PlayerMessageState;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/camera/videoplayer/PlayerMessageState;->SETTING_DATA_SOURCE:Lcom/android/camera/videoplayer/PlayerMessageState;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/camera/videoplayer/PlayerMessageState;->DATA_SOURCE_SET:Lcom/android/camera/videoplayer/PlayerMessageState;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/camera/videoplayer/PlayerMessageState;->PLAYBACK_COMPLETED:Lcom/android/camera/videoplayer/PlayerMessageState;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/camera/videoplayer/PlayerMessageState;->END:Lcom/android/camera/videoplayer/PlayerMessageState;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    const/16 v2, 0x17

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/camera/videoplayer/PlayerMessageState;->$VALUES:[Lcom/android/camera/videoplayer/PlayerMessageState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/videoplayer/PlayerMessageState;
    .locals 1

    const-class v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera/videoplayer/PlayerMessageState;

    return-object p0
.end method

.method public static values()[Lcom/android/camera/videoplayer/PlayerMessageState;
    .locals 1

    sget-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->$VALUES:[Lcom/android/camera/videoplayer/PlayerMessageState;

    invoke-virtual {v0}, [Lcom/android/camera/videoplayer/PlayerMessageState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/videoplayer/PlayerMessageState;

    return-object v0
.end method
