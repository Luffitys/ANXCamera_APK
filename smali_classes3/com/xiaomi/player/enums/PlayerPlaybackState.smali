.class public final enum Lcom/xiaomi/player/enums/PlayerPlaybackState;
.super Ljava/lang/Enum;
.source "PlayerPlaybackState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/player/enums/PlayerPlaybackState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/player/enums/PlayerPlaybackState;

.field public static final enum PlayerPlaybackStateBuffering:Lcom/xiaomi/player/enums/PlayerPlaybackState;

.field public static final enum PlayerPlaybackStateEnded:Lcom/xiaomi/player/enums/PlayerPlaybackState;

.field public static final enum PlayerPlaybackStateIdle:Lcom/xiaomi/player/enums/PlayerPlaybackState;

.field public static final enum PlayerPlaybackStatePaused:Lcom/xiaomi/player/enums/PlayerPlaybackState;

.field public static final enum PlayerPlaybackStatePlaying:Lcom/xiaomi/player/enums/PlayerPlaybackState;

.field public static final enum PlayerPlaybackStateResumed:Lcom/xiaomi/player/enums/PlayerPlaybackState;

.field public static final enum PlayerPlaybackStateStarted:Lcom/xiaomi/player/enums/PlayerPlaybackState;

.field public static final enum PlayerPlaybackStateStoped:Lcom/xiaomi/player/enums/PlayerPlaybackState;


# instance fields
.field private nCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/xiaomi/player/enums/PlayerPlaybackState;

    const/4 v1, 0x0

    const-string v2, "PlayerPlaybackStateIdle"

    invoke-direct {v0, v2, v1, v1}, Lcom/xiaomi/player/enums/PlayerPlaybackState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/player/enums/PlayerPlaybackState;->PlayerPlaybackStateIdle:Lcom/xiaomi/player/enums/PlayerPlaybackState;

    new-instance v0, Lcom/xiaomi/player/enums/PlayerPlaybackState;

    const/4 v2, 0x1

    const-string v3, "PlayerPlaybackStatePlaying"

    invoke-direct {v0, v3, v2, v2}, Lcom/xiaomi/player/enums/PlayerPlaybackState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/player/enums/PlayerPlaybackState;->PlayerPlaybackStatePlaying:Lcom/xiaomi/player/enums/PlayerPlaybackState;

    new-instance v0, Lcom/xiaomi/player/enums/PlayerPlaybackState;

    const/4 v3, 0x2

    const-string v4, "PlayerPlaybackStatePaused"

    invoke-direct {v0, v4, v3, v3}, Lcom/xiaomi/player/enums/PlayerPlaybackState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/player/enums/PlayerPlaybackState;->PlayerPlaybackStatePaused:Lcom/xiaomi/player/enums/PlayerPlaybackState;

    new-instance v0, Lcom/xiaomi/player/enums/PlayerPlaybackState;

    const/4 v4, 0x3

    const-string v5, "PlayerPlaybackStateResumed"

    invoke-direct {v0, v5, v4, v4}, Lcom/xiaomi/player/enums/PlayerPlaybackState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/player/enums/PlayerPlaybackState;->PlayerPlaybackStateResumed:Lcom/xiaomi/player/enums/PlayerPlaybackState;

    new-instance v0, Lcom/xiaomi/player/enums/PlayerPlaybackState;

    const/4 v5, 0x4

    const-string v6, "PlayerPlaybackStateStarted"

    invoke-direct {v0, v6, v5, v5}, Lcom/xiaomi/player/enums/PlayerPlaybackState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/player/enums/PlayerPlaybackState;->PlayerPlaybackStateStarted:Lcom/xiaomi/player/enums/PlayerPlaybackState;

    new-instance v0, Lcom/xiaomi/player/enums/PlayerPlaybackState;

    const/4 v6, 0x5

    const-string v7, "PlayerPlaybackStateStoped"

    invoke-direct {v0, v7, v6, v6}, Lcom/xiaomi/player/enums/PlayerPlaybackState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/player/enums/PlayerPlaybackState;->PlayerPlaybackStateStoped:Lcom/xiaomi/player/enums/PlayerPlaybackState;

    new-instance v0, Lcom/xiaomi/player/enums/PlayerPlaybackState;

    const/4 v7, 0x6

    const-string v8, "PlayerPlaybackStateBuffering"

    invoke-direct {v0, v8, v7, v7}, Lcom/xiaomi/player/enums/PlayerPlaybackState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/player/enums/PlayerPlaybackState;->PlayerPlaybackStateBuffering:Lcom/xiaomi/player/enums/PlayerPlaybackState;

    new-instance v0, Lcom/xiaomi/player/enums/PlayerPlaybackState;

    const/4 v8, 0x7

    const-string v9, "PlayerPlaybackStateEnded"

    invoke-direct {v0, v9, v8, v8}, Lcom/xiaomi/player/enums/PlayerPlaybackState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/player/enums/PlayerPlaybackState;->PlayerPlaybackStateEnded:Lcom/xiaomi/player/enums/PlayerPlaybackState;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/xiaomi/player/enums/PlayerPlaybackState;

    sget-object v9, Lcom/xiaomi/player/enums/PlayerPlaybackState;->PlayerPlaybackStateIdle:Lcom/xiaomi/player/enums/PlayerPlaybackState;

    aput-object v9, v0, v1

    sget-object v1, Lcom/xiaomi/player/enums/PlayerPlaybackState;->PlayerPlaybackStatePlaying:Lcom/xiaomi/player/enums/PlayerPlaybackState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/player/enums/PlayerPlaybackState;->PlayerPlaybackStatePaused:Lcom/xiaomi/player/enums/PlayerPlaybackState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/player/enums/PlayerPlaybackState;->PlayerPlaybackStateResumed:Lcom/xiaomi/player/enums/PlayerPlaybackState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/player/enums/PlayerPlaybackState;->PlayerPlaybackStateStarted:Lcom/xiaomi/player/enums/PlayerPlaybackState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/player/enums/PlayerPlaybackState;->PlayerPlaybackStateStoped:Lcom/xiaomi/player/enums/PlayerPlaybackState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/player/enums/PlayerPlaybackState;->PlayerPlaybackStateBuffering:Lcom/xiaomi/player/enums/PlayerPlaybackState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/player/enums/PlayerPlaybackState;->PlayerPlaybackStateEnded:Lcom/xiaomi/player/enums/PlayerPlaybackState;

    aput-object v1, v0, v8

    sput-object v0, Lcom/xiaomi/player/enums/PlayerPlaybackState;->$VALUES:[Lcom/xiaomi/player/enums/PlayerPlaybackState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xiaomi/player/enums/PlayerPlaybackState;->nCode:I

    return-void
.end method

.method public static int2enum(I)Lcom/xiaomi/player/enums/PlayerPlaybackState;
    .locals 6

    sget-object v0, Lcom/xiaomi/player/enums/PlayerPlaybackState;->PlayerPlaybackStateIdle:Lcom/xiaomi/player/enums/PlayerPlaybackState;

    invoke-static {}, Lcom/xiaomi/player/enums/PlayerPlaybackState;->values()[Lcom/xiaomi/player/enums/PlayerPlaybackState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/player/enums/PlayerPlaybackState;
    .locals 1

    const-class v0, Lcom/xiaomi/player/enums/PlayerPlaybackState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/player/enums/PlayerPlaybackState;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/player/enums/PlayerPlaybackState;
    .locals 1

    sget-object v0, Lcom/xiaomi/player/enums/PlayerPlaybackState;->$VALUES:[Lcom/xiaomi/player/enums/PlayerPlaybackState;

    invoke-virtual {v0}, [Lcom/xiaomi/player/enums/PlayerPlaybackState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/player/enums/PlayerPlaybackState;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/xiaomi/player/enums/PlayerPlaybackState;->nCode:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
