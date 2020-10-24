.class public final enum Lcom/miui/filtersdk/filter/helper/FilterCategory;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/filtersdk/filter/helper/FilterCategory;

.field public static final enum AI:Lcom/miui/filtersdk/filter/helper/FilterCategory;

.field public static final enum BEAUTY:Lcom/miui/filtersdk/filter/helper/FilterCategory;

.field public static final enum BEAUTY_INDIA:Lcom/miui/filtersdk/filter/helper/FilterCategory;

.field public static final enum LIGHTING:Lcom/miui/filtersdk/filter/helper/FilterCategory;

.field public static final enum MI_LIVE:Lcom/miui/filtersdk/filter/helper/FilterCategory;

.field public static final enum NORMAL:Lcom/miui/filtersdk/filter/helper/FilterCategory;

.field public static final enum STICKER:Lcom/miui/filtersdk/filter/helper/FilterCategory;

.field public static final enum UNKNOWN:Lcom/miui/filtersdk/filter/helper/FilterCategory;

.field public static final enum VIDEO:Lcom/miui/filtersdk/filter/helper/FilterCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/miui/filtersdk/filter/helper/FilterCategory;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/filtersdk/filter/helper/FilterCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/filter/helper/FilterCategory;->UNKNOWN:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    new-instance v0, Lcom/miui/filtersdk/filter/helper/FilterCategory;

    const-string v1, "AI"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/filtersdk/filter/helper/FilterCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/filter/helper/FilterCategory;->AI:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    new-instance v0, Lcom/miui/filtersdk/filter/helper/FilterCategory;

    const-string v1, "NORMAL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/filtersdk/filter/helper/FilterCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/filter/helper/FilterCategory;->NORMAL:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    new-instance v0, Lcom/miui/filtersdk/filter/helper/FilterCategory;

    const-string v1, "BEAUTY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/miui/filtersdk/filter/helper/FilterCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/filter/helper/FilterCategory;->BEAUTY:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    new-instance v0, Lcom/miui/filtersdk/filter/helper/FilterCategory;

    const-string v1, "BEAUTY_INDIA"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/miui/filtersdk/filter/helper/FilterCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/filter/helper/FilterCategory;->BEAUTY_INDIA:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    new-instance v0, Lcom/miui/filtersdk/filter/helper/FilterCategory;

    const-string v1, "STICKER"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/miui/filtersdk/filter/helper/FilterCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/filter/helper/FilterCategory;->STICKER:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    new-instance v0, Lcom/miui/filtersdk/filter/helper/FilterCategory;

    const-string v1, "LIGHTING"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/miui/filtersdk/filter/helper/FilterCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/filter/helper/FilterCategory;->LIGHTING:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    new-instance v0, Lcom/miui/filtersdk/filter/helper/FilterCategory;

    const-string v1, "MI_LIVE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/miui/filtersdk/filter/helper/FilterCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/filter/helper/FilterCategory;->MI_LIVE:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    new-instance v0, Lcom/miui/filtersdk/filter/helper/FilterCategory;

    const-string v1, "VIDEO"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/miui/filtersdk/filter/helper/FilterCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/filter/helper/FilterCategory;->VIDEO:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/miui/filtersdk/filter/helper/FilterCategory;

    sget-object v11, Lcom/miui/filtersdk/filter/helper/FilterCategory;->UNKNOWN:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    aput-object v11, v1, v2

    sget-object v2, Lcom/miui/filtersdk/filter/helper/FilterCategory;->AI:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    aput-object v2, v1, v3

    sget-object v2, Lcom/miui/filtersdk/filter/helper/FilterCategory;->NORMAL:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    aput-object v2, v1, v4

    sget-object v2, Lcom/miui/filtersdk/filter/helper/FilterCategory;->BEAUTY:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    aput-object v2, v1, v5

    sget-object v2, Lcom/miui/filtersdk/filter/helper/FilterCategory;->BEAUTY_INDIA:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    aput-object v2, v1, v6

    sget-object v2, Lcom/miui/filtersdk/filter/helper/FilterCategory;->STICKER:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    aput-object v2, v1, v7

    sget-object v2, Lcom/miui/filtersdk/filter/helper/FilterCategory;->LIGHTING:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    aput-object v2, v1, v8

    sget-object v2, Lcom/miui/filtersdk/filter/helper/FilterCategory;->MI_LIVE:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    aput-object v2, v1, v9

    aput-object v0, v1, v10

    sput-object v1, Lcom/miui/filtersdk/filter/helper/FilterCategory;->$VALUES:[Lcom/miui/filtersdk/filter/helper/FilterCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/filtersdk/filter/helper/FilterCategory;
    .locals 1

    const-class v0, Lcom/miui/filtersdk/filter/helper/FilterCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/filtersdk/filter/helper/FilterCategory;

    return-object p0
.end method

.method public static values()[Lcom/miui/filtersdk/filter/helper/FilterCategory;
    .locals 1

    sget-object v0, Lcom/miui/filtersdk/filter/helper/FilterCategory;->$VALUES:[Lcom/miui/filtersdk/filter/helper/FilterCategory;

    invoke-virtual {v0}, [Lcom/miui/filtersdk/filter/helper/FilterCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/filtersdk/filter/helper/FilterCategory;

    return-object v0
.end method
