.class public final enum Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

.field public static final enum HARDWARE_CODEC:Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

.field public static final enum ISP_INTERFACE:Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

.field public static final enum SOFTWARE_CODEC:Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

.field public static final enum VIRTUAL_CAMERA:Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    const-string v1, "VIRTUAL_CAMERA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;->VIRTUAL_CAMERA:Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    new-instance v0, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    const-string v1, "HARDWARE_CODEC"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;->HARDWARE_CODEC:Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    new-instance v0, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    const-string v1, "SOFTWARE_CODEC"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;->SOFTWARE_CODEC:Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    new-instance v0, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    const-string v1, "ISP_INTERFACE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;->ISP_INTERFACE:Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    sget-object v6, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;->VIRTUAL_CAMERA:Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    aput-object v6, v1, v2

    sget-object v2, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;->HARDWARE_CODEC:Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;->SOFTWARE_CODEC:Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;->$VALUES:[Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;
    .locals 1

    const-class v0, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;
    .locals 1

    sget-object v0, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;->$VALUES:[Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    invoke-virtual {v0}, [Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    return-object v0
.end method
