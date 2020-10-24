.class public final enum Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;

.field public static final enum PlayerScalingModeAspectFill:Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;

.field public static final enum PlayerScalingModeAspectFit:Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;

.field public static final enum PlayerScalingModeFill:Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;

.field public static final enum PlayerScalingModeNone:Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;


# instance fields
.field private nCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;

    const-string v1, "PlayerScalingModeNone"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;->PlayerScalingModeNone:Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;

    new-instance v0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;

    const-string v1, "PlayerScalingModeAspectFit"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;->PlayerScalingModeAspectFit:Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;

    new-instance v0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;

    const-string v1, "PlayerScalingModeAspectFill"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;->PlayerScalingModeAspectFill:Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;

    new-instance v0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;

    const-string v1, "PlayerScalingModeFill"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;->PlayerScalingModeFill:Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;

    sget-object v6, Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;->PlayerScalingModeNone:Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;

    aput-object v6, v1, v2

    sget-object v2, Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;->PlayerScalingModeAspectFit:Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;->PlayerScalingModeAspectFill:Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;->$VALUES:[Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;->nCode:I

    return-void
.end method

.method public static int2enum(I)Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;
    .locals 6

    sget-object v0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;->PlayerScalingModeNone:Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;

    invoke-static {}, Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;->values()[Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;
    .locals 1

    const-class v0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;
    .locals 1

    sget-object v0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;->$VALUES:[Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;

    invoke-virtual {v0}, [Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerScalingMode;->nCode:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
