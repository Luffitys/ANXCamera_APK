.class public final enum Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;
.super Ljava/lang/Enum;
.source "PlayerSeekingMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;

.field public static final enum PlayerSeekingFastMode:Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;

.field public static final enum PlayerSeekingNormalMode:Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;

.field public static final enum PlayerSeekingPreciseMode:Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;


# instance fields
.field private nCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;

    const/4 v1, 0x0

    const-string v2, "PlayerSeekingNormalMode"

    invoke-direct {v0, v2, v1, v1}, Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;->PlayerSeekingNormalMode:Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;

    new-instance v0, Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;

    const/4 v2, 0x1

    const-string v3, "PlayerSeekingFastMode"

    invoke-direct {v0, v3, v2, v2}, Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;->PlayerSeekingFastMode:Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;

    new-instance v0, Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;

    const/4 v3, 0x2

    const-string v4, "PlayerSeekingPreciseMode"

    invoke-direct {v0, v4, v3, v3}, Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;->PlayerSeekingPreciseMode:Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;

    sget-object v4, Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;->PlayerSeekingNormalMode:Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;

    aput-object v4, v0, v1

    sget-object v1, Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;->PlayerSeekingFastMode:Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;->PlayerSeekingPreciseMode:Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;->$VALUES:[Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;

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

    iput p3, p0, Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;->nCode:I

    return-void
.end method

.method public static int2enum(I)Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;
    .locals 6

    sget-object v0, Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;->PlayerSeekingNormalMode:Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;

    invoke-static {}, Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;->values()[Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;
    .locals 1

    const-class v0, Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;
    .locals 1

    sget-object v0, Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;->$VALUES:[Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;

    invoke-virtual {v0}, [Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/xiaomi/recordplayer/enums/PlayerSeekingMode;->nCode:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
