.class public final enum Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;

.field public static final enum QUAD_KEEP:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;

.field public static final enum QUAD_NOSHOW:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;

.field public static final enum QUAD_UPDATE:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;

    const-string v1, "QUAD_NOSHOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;->QUAD_NOSHOW:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;

    new-instance v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;

    const-string v1, "QUAD_KEEP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;->QUAD_KEEP:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;

    new-instance v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;

    const-string v1, "QUAD_UPDATE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;->QUAD_UPDATE:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;

    sget-object v5, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;->QUAD_NOSHOW:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;

    aput-object v5, v1, v2

    sget-object v2, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;->QUAD_KEEP:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;->$VALUES:[Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;
    .locals 1

    const-class v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;
    .locals 1

    sget-object v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;->$VALUES:[Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;

    invoke-virtual {v0}, [Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;

    return-object v0
.end method
