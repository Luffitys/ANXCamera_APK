.class public final enum Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;

.field public static final enum PlayerPlaybackStateBuffering:Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;

.field public static final enum PlayerPlaybackStateEnded:Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;

.field public static final enum PlayerPlaybackStateIdle:Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;

.field public static final enum PlayerPlaybackStatePaused:Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;

.field public static final enum PlayerPlaybackStatePlaying:Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;

.field public static final enum PlayerPlaybackStateResumed:Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;

.field public static final enum PlayerPlaybackStateStarted:Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;

.field public static final enum PlayerPlaybackStateStoped:Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;


# instance fields
.field private nCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;

    const-string v1, "PlayerPlaybackStateIdle"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;->PlayerPlaybackStateIdle:Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;

    new-instance v0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;

    const-string v1, "PlayerPlaybackStatePlaying"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;->PlayerPlaybackStatePlaying:Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;

    new-instance v0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;

    const-string v1, "PlayerPlaybackStatePaused"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;->PlayerPlaybackStatePaused:Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;

    new-instance v0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;

    const-string v1, "PlayerPlaybackStateResumed"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;->PlayerPlaybackStateResumed:Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;

    new-instance v0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;

    const-string v1, "PlayerPlaybackStateStarted"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;->PlayerPlaybackStateStarted:Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;

    new-instance v0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;

    const-string v1, "PlayerPlaybackStateStoped"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;->PlayerPlaybackStateStoped:Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;

    new-instance v0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;

    const-string v1, "PlayerPlaybackStateBuffering"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;->PlayerPlaybackStateBuffering:Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;

    new-instance v0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;

    const-string v1, "PlayerPlaybackStateEnded"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;->PlayerPlaybackStateEnded:Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;

    sget-object v10, Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;->PlayerPlaybackStateIdle:Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;

    aput-object v10, v1, v2

    sget-object v2, Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;->PlayerPlaybackStatePlaying:Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;->PlayerPlaybackStatePaused:Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;

    aput-object v2, v1, v4

    sget-object v2, Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;->PlayerPlaybackStateResumed:Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;

    aput-object v2, v1, v5

    sget-object v2, Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;->PlayerPlaybackStateStarted:Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;

    aput-object v2, v1, v6

    sget-object v2, Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;->PlayerPlaybackStateStoped:Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;

    aput-object v2, v1, v7

    sget-object v2, Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;->PlayerPlaybackStateBuffering:Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;->$VALUES:[Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;->nCode:I

    return-void
.end method

.method public static int2enum(I)Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;
    .locals 6

    sget-object v0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;->PlayerPlaybackStateIdle:Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;

    invoke-static {}, Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;->values()[Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-ne v5, p0, :cond_0

    move-object v0, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;
    .locals 1

    const-class v0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;
    .locals 1

    sget-object v0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;->$VALUES:[Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;

    invoke-virtual {v0}, [Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerPlaybackState;->nCode:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
