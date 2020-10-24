.class public final enum Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

.field public static final enum DEPTH:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

.field public static final enum EFFECT:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

.field public static final enum IMAGEPOOL:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

.field public static final enum JPEG:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

.field public static final enum ORIGINAL:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

.field public static final enum RAW:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

.field public static final enum VIDEOSNAP:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

.field public static final enum YUV:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    const-string v1, "ORIGINAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->ORIGINAL:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    new-instance v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    const-string v1, "EFFECT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->EFFECT:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    new-instance v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    const-string v1, "IMAGEPOOL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->IMAGEPOOL:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    new-instance v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    const-string v1, "YUV"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->YUV:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    new-instance v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    const-string v1, "RAW"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->RAW:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    new-instance v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    const-string v1, "DEPTH"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->DEPTH:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    new-instance v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    const-string v1, "VIDEOSNAP"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->VIDEOSNAP:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    new-instance v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    const-string v1, "JPEG"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->JPEG:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    sget-object v10, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->ORIGINAL:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    aput-object v10, v1, v2

    sget-object v2, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->EFFECT:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->IMAGEPOOL:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->YUV:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->RAW:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->DEPTH:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->VIDEOSNAP:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->$VALUES:[Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;
    .locals 1

    const-class v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;
    .locals 1

    sget-object v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->$VALUES:[Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    invoke-virtual {v0}, [Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    return-object v0
.end method
