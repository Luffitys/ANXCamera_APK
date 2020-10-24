.class public final enum Lcom/xiaomi/Video2GifEditer/PreViewStatus;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/Video2GifEditer/PreViewStatus;

.field public static final enum PreViewPaused:Lcom/xiaomi/Video2GifEditer/PreViewStatus;

.field public static final enum PreViewPlaying:Lcom/xiaomi/Video2GifEditer/PreViewStatus;

.field public static final enum PreViewStopped:Lcom/xiaomi/Video2GifEditer/PreViewStatus;


# instance fields
.field private nCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/xiaomi/Video2GifEditer/PreViewStatus;

    const-string v1, "PreViewStopped"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/Video2GifEditer/PreViewStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/Video2GifEditer/PreViewStatus;->PreViewStopped:Lcom/xiaomi/Video2GifEditer/PreViewStatus;

    new-instance v0, Lcom/xiaomi/Video2GifEditer/PreViewStatus;

    const-string v1, "PreViewPlaying"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/xiaomi/Video2GifEditer/PreViewStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/Video2GifEditer/PreViewStatus;->PreViewPlaying:Lcom/xiaomi/Video2GifEditer/PreViewStatus;

    new-instance v0, Lcom/xiaomi/Video2GifEditer/PreViewStatus;

    const-string v1, "PreViewPaused"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/xiaomi/Video2GifEditer/PreViewStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/Video2GifEditer/PreViewStatus;->PreViewPaused:Lcom/xiaomi/Video2GifEditer/PreViewStatus;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/xiaomi/Video2GifEditer/PreViewStatus;

    sget-object v5, Lcom/xiaomi/Video2GifEditer/PreViewStatus;->PreViewStopped:Lcom/xiaomi/Video2GifEditer/PreViewStatus;

    aput-object v5, v1, v2

    sget-object v2, Lcom/xiaomi/Video2GifEditer/PreViewStatus;->PreViewPlaying:Lcom/xiaomi/Video2GifEditer/PreViewStatus;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/xiaomi/Video2GifEditer/PreViewStatus;->$VALUES:[Lcom/xiaomi/Video2GifEditer/PreViewStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xiaomi/Video2GifEditer/PreViewStatus;->nCode:I

    return-void
.end method

.method public static int2enum(I)Lcom/xiaomi/Video2GifEditer/PreViewStatus;
    .locals 6

    sget-object v0, Lcom/xiaomi/Video2GifEditer/PreViewStatus;->PreViewStopped:Lcom/xiaomi/Video2GifEditer/PreViewStatus;

    invoke-static {}, Lcom/xiaomi/Video2GifEditer/PreViewStatus;->values()[Lcom/xiaomi/Video2GifEditer/PreViewStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/Video2GifEditer/PreViewStatus;
    .locals 1

    const-class v0, Lcom/xiaomi/Video2GifEditer/PreViewStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/Video2GifEditer/PreViewStatus;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/Video2GifEditer/PreViewStatus;
    .locals 1

    sget-object v0, Lcom/xiaomi/Video2GifEditer/PreViewStatus;->$VALUES:[Lcom/xiaomi/Video2GifEditer/PreViewStatus;

    invoke-virtual {v0}, [Lcom/xiaomi/Video2GifEditer/PreViewStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/Video2GifEditer/PreViewStatus;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/xiaomi/Video2GifEditer/PreViewStatus;->nCode:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
