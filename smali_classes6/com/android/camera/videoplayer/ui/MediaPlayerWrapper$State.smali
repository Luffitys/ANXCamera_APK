.class public final enum Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

.field public static final enum END:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

.field public static final enum ERROR:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

.field public static final enum IDLE:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

.field public static final enum INITIALIZED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

.field public static final enum PAUSED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

.field public static final enum PLAYBACK_COMPLETED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

.field public static final enum PREPARED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

.field public static final enum PREPARING:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

.field public static final enum STARTED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

.field public static final enum STOPPED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->IDLE:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    new-instance v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    const-string v1, "INITIALIZED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->INITIALIZED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    new-instance v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    const-string v1, "PREPARING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->PREPARING:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    new-instance v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    const-string v1, "PREPARED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->PREPARED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    new-instance v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    const-string v1, "STARTED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->STARTED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    new-instance v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    const-string v1, "PAUSED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->PAUSED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    new-instance v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    const-string v1, "STOPPED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->STOPPED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    new-instance v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    const-string v1, "PLAYBACK_COMPLETED"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->PLAYBACK_COMPLETED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    new-instance v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    const-string v1, "END"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->END:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    new-instance v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    const-string v1, "ERROR"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->ERROR:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    const/16 v1, 0xa

    new-array v1, v1, [Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    sget-object v12, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->IDLE:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    aput-object v12, v1, v2

    sget-object v2, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->INITIALIZED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->PREPARING:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->PREPARED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->STARTED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->PAUSED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->STOPPED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->PLAYBACK_COMPLETED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    aput-object v2, v1, v9

    sget-object v2, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->END:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    aput-object v2, v1, v10

    aput-object v0, v1, v11

    sput-object v1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->$VALUES:[Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;
    .locals 1

    const-class v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    return-object p0
.end method

.method public static values()[Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;
    .locals 1

    sget-object v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->$VALUES:[Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    invoke-virtual {v0}, [Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    return-object v0
.end method
