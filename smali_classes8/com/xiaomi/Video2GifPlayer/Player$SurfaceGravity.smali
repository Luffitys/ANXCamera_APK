.class public final enum Lcom/xiaomi/Video2GifPlayer/Player$SurfaceGravity;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/Video2GifPlayer/Player$SurfaceGravity;

.field public static final enum SurfaceGravityResizeAspect:Lcom/xiaomi/Video2GifPlayer/Player$SurfaceGravity;

.field public static final enum SurfaceGravityResizeAspectFill:Lcom/xiaomi/Video2GifPlayer/Player$SurfaceGravity;

.field public static final enum SurfaceGravityResizeAspectFit:Lcom/xiaomi/Video2GifPlayer/Player$SurfaceGravity;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/xiaomi/Video2GifPlayer/Player$SurfaceGravity;

    const-string v1, "SurfaceGravityResizeAspect"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/Video2GifPlayer/Player$SurfaceGravity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/Video2GifPlayer/Player$SurfaceGravity;->SurfaceGravityResizeAspect:Lcom/xiaomi/Video2GifPlayer/Player$SurfaceGravity;

    new-instance v0, Lcom/xiaomi/Video2GifPlayer/Player$SurfaceGravity;

    const-string v1, "SurfaceGravityResizeAspectFit"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/xiaomi/Video2GifPlayer/Player$SurfaceGravity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/Video2GifPlayer/Player$SurfaceGravity;->SurfaceGravityResizeAspectFit:Lcom/xiaomi/Video2GifPlayer/Player$SurfaceGravity;

    new-instance v0, Lcom/xiaomi/Video2GifPlayer/Player$SurfaceGravity;

    const-string v1, "SurfaceGravityResizeAspectFill"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/xiaomi/Video2GifPlayer/Player$SurfaceGravity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/Video2GifPlayer/Player$SurfaceGravity;->SurfaceGravityResizeAspectFill:Lcom/xiaomi/Video2GifPlayer/Player$SurfaceGravity;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/xiaomi/Video2GifPlayer/Player$SurfaceGravity;

    sget-object v5, Lcom/xiaomi/Video2GifPlayer/Player$SurfaceGravity;->SurfaceGravityResizeAspect:Lcom/xiaomi/Video2GifPlayer/Player$SurfaceGravity;

    aput-object v5, v1, v2

    sget-object v2, Lcom/xiaomi/Video2GifPlayer/Player$SurfaceGravity;->SurfaceGravityResizeAspectFit:Lcom/xiaomi/Video2GifPlayer/Player$SurfaceGravity;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/xiaomi/Video2GifPlayer/Player$SurfaceGravity;->$VALUES:[Lcom/xiaomi/Video2GifPlayer/Player$SurfaceGravity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xiaomi/Video2GifPlayer/Player$SurfaceGravity;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/Video2GifPlayer/Player$SurfaceGravity;
    .locals 1

    const-class v0, Lcom/xiaomi/Video2GifPlayer/Player$SurfaceGravity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/Video2GifPlayer/Player$SurfaceGravity;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/Video2GifPlayer/Player$SurfaceGravity;
    .locals 1

    sget-object v0, Lcom/xiaomi/Video2GifPlayer/Player$SurfaceGravity;->$VALUES:[Lcom/xiaomi/Video2GifPlayer/Player$SurfaceGravity;

    invoke-virtual {v0}, [Lcom/xiaomi/Video2GifPlayer/Player$SurfaceGravity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/Video2GifPlayer/Player$SurfaceGravity;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/Video2GifPlayer/Player$SurfaceGravity;->code:I

    return p0
.end method
