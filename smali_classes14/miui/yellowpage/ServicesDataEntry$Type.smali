.class public final enum Lmiui/yellowpage/ServicesDataEntry$Type;
.super Ljava/lang/Enum;
.source "ServicesDataEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/yellowpage/ServicesDataEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/yellowpage/ServicesDataEntry$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/yellowpage/ServicesDataEntry$Type;

.field public static final enum BOTTOM_BANNER:Lmiui/yellowpage/ServicesDataEntry$Type;

.field public static final enum CONVENIENT_SERVICE:Lmiui/yellowpage/ServicesDataEntry$Type;

.field public static final enum DOUBLE_BANNER:Lmiui/yellowpage/ServicesDataEntry$Type;

.field public static final enum NONE:Lmiui/yellowpage/ServicesDataEntry$Type;

.field public static final enum SINGLE_LINE_BANNER:Lmiui/yellowpage/ServicesDataEntry$Type;

.field public static final enum TOP_SERVICE:Lmiui/yellowpage/ServicesDataEntry$Type;

.field public static final enum USEFUL_NUMBERS:Lmiui/yellowpage/ServicesDataEntry$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    new-instance v0, Lmiui/yellowpage/ServicesDataEntry$Type;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/yellowpage/ServicesDataEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/yellowpage/ServicesDataEntry$Type;->NONE:Lmiui/yellowpage/ServicesDataEntry$Type;

    new-instance v0, Lmiui/yellowpage/ServicesDataEntry$Type;

    const-string v1, "TOP_SERVICE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmiui/yellowpage/ServicesDataEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/yellowpage/ServicesDataEntry$Type;->TOP_SERVICE:Lmiui/yellowpage/ServicesDataEntry$Type;

    new-instance v0, Lmiui/yellowpage/ServicesDataEntry$Type;

    const-string v1, "SINGLE_LINE_BANNER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmiui/yellowpage/ServicesDataEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/yellowpage/ServicesDataEntry$Type;->SINGLE_LINE_BANNER:Lmiui/yellowpage/ServicesDataEntry$Type;

    new-instance v0, Lmiui/yellowpage/ServicesDataEntry$Type;

    const-string v1, "CONVENIENT_SERVICE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lmiui/yellowpage/ServicesDataEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/yellowpage/ServicesDataEntry$Type;->CONVENIENT_SERVICE:Lmiui/yellowpage/ServicesDataEntry$Type;

    new-instance v0, Lmiui/yellowpage/ServicesDataEntry$Type;

    const-string v1, "DOUBLE_BANNER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lmiui/yellowpage/ServicesDataEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/yellowpage/ServicesDataEntry$Type;->DOUBLE_BANNER:Lmiui/yellowpage/ServicesDataEntry$Type;

    new-instance v0, Lmiui/yellowpage/ServicesDataEntry$Type;

    const-string v1, "USEFUL_NUMBERS"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lmiui/yellowpage/ServicesDataEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/yellowpage/ServicesDataEntry$Type;->USEFUL_NUMBERS:Lmiui/yellowpage/ServicesDataEntry$Type;

    new-instance v0, Lmiui/yellowpage/ServicesDataEntry$Type;

    const-string v1, "BOTTOM_BANNER"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lmiui/yellowpage/ServicesDataEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/yellowpage/ServicesDataEntry$Type;->BOTTOM_BANNER:Lmiui/yellowpage/ServicesDataEntry$Type;

    const/4 v1, 0x7

    new-array v1, v1, [Lmiui/yellowpage/ServicesDataEntry$Type;

    sget-object v9, Lmiui/yellowpage/ServicesDataEntry$Type;->NONE:Lmiui/yellowpage/ServicesDataEntry$Type;

    aput-object v9, v1, v2

    sget-object v2, Lmiui/yellowpage/ServicesDataEntry$Type;->TOP_SERVICE:Lmiui/yellowpage/ServicesDataEntry$Type;

    aput-object v2, v1, v3

    sget-object v2, Lmiui/yellowpage/ServicesDataEntry$Type;->SINGLE_LINE_BANNER:Lmiui/yellowpage/ServicesDataEntry$Type;

    aput-object v2, v1, v4

    sget-object v2, Lmiui/yellowpage/ServicesDataEntry$Type;->CONVENIENT_SERVICE:Lmiui/yellowpage/ServicesDataEntry$Type;

    aput-object v2, v1, v5

    sget-object v2, Lmiui/yellowpage/ServicesDataEntry$Type;->DOUBLE_BANNER:Lmiui/yellowpage/ServicesDataEntry$Type;

    aput-object v2, v1, v6

    sget-object v2, Lmiui/yellowpage/ServicesDataEntry$Type;->USEFUL_NUMBERS:Lmiui/yellowpage/ServicesDataEntry$Type;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lmiui/yellowpage/ServicesDataEntry$Type;->$VALUES:[Lmiui/yellowpage/ServicesDataEntry$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/yellowpage/ServicesDataEntry$Type;
    .registers 2

    const-class v0, Lmiui/yellowpage/ServicesDataEntry$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/yellowpage/ServicesDataEntry$Type;

    return-object v0
.end method

.method public static values()[Lmiui/yellowpage/ServicesDataEntry$Type;
    .registers 1

    sget-object v0, Lmiui/yellowpage/ServicesDataEntry$Type;->$VALUES:[Lmiui/yellowpage/ServicesDataEntry$Type;

    invoke-virtual {v0}, [Lmiui/yellowpage/ServicesDataEntry$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/yellowpage/ServicesDataEntry$Type;

    return-object v0
.end method
