.class public final enum Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

.field public static final enum BIN:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

.field public static final enum COLOR:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

.field public static final enum FILTER_ID_CARD:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

.field public static final enum GRAY:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

.field public static final enum RAW:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    const-string v1, "RAW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;->RAW:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    new-instance v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    const-string v1, "COLOR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;->COLOR:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    new-instance v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    const-string v1, "BIN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;->BIN:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    new-instance v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    const-string v1, "GRAY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;->GRAY:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    new-instance v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    const-string v1, "FILTER_ID_CARD"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;->FILTER_ID_CARD:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    sget-object v7, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;->RAW:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    aput-object v7, v1, v2

    sget-object v2, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;->COLOR:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;->BIN:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;->GRAY:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;->$VALUES:[Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;
    .locals 1

    const-class v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;
    .locals 1

    sget-object v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;->$VALUES:[Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    invoke-virtual {v0}, [Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    return-object v0
.end method
