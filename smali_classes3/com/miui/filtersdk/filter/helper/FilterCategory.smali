.class public final enum Lcom/miui/filtersdk/filter/helper/FilterCategory;
.super Ljava/lang/Enum;
.source "FilterCategory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/filtersdk/filter/helper/FilterCategory;",
        ">;"
    }
.end annotation


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


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/miui/filtersdk/filter/helper/FilterCategory;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/miui/filtersdk/filter/helper/FilterCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/filter/helper/FilterCategory;->UNKNOWN:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    new-instance v0, Lcom/miui/filtersdk/filter/helper/FilterCategory;

    const/4 v2, 0x1

    const-string v3, "AI"

    invoke-direct {v0, v3, v2}, Lcom/miui/filtersdk/filter/helper/FilterCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/filter/helper/FilterCategory;->AI:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    new-instance v0, Lcom/miui/filtersdk/filter/helper/FilterCategory;

    const/4 v3, 0x2

    const-string v4, "NORMAL"

    invoke-direct {v0, v4, v3}, Lcom/miui/filtersdk/filter/helper/FilterCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/filter/helper/FilterCategory;->NORMAL:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    new-instance v0, Lcom/miui/filtersdk/filter/helper/FilterCategory;

    const/4 v4, 0x3

    const-string v5, "BEAUTY"

    invoke-direct {v0, v5, v4}, Lcom/miui/filtersdk/filter/helper/FilterCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/filter/helper/FilterCategory;->BEAUTY:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    new-instance v0, Lcom/miui/filtersdk/filter/helper/FilterCategory;

    const/4 v5, 0x4

    const-string v6, "BEAUTY_INDIA"

    invoke-direct {v0, v6, v5}, Lcom/miui/filtersdk/filter/helper/FilterCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/filter/helper/FilterCategory;->BEAUTY_INDIA:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    new-instance v0, Lcom/miui/filtersdk/filter/helper/FilterCategory;

    const/4 v6, 0x5

    const-string v7, "STICKER"

    invoke-direct {v0, v7, v6}, Lcom/miui/filtersdk/filter/helper/FilterCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/filter/helper/FilterCategory;->STICKER:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    new-instance v0, Lcom/miui/filtersdk/filter/helper/FilterCategory;

    const/4 v7, 0x6

    const-string v8, "LIGHTING"

    invoke-direct {v0, v8, v7}, Lcom/miui/filtersdk/filter/helper/FilterCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/filter/helper/FilterCategory;->LIGHTING:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    new-instance v0, Lcom/miui/filtersdk/filter/helper/FilterCategory;

    const/4 v8, 0x7

    const-string v9, "MI_LIVE"

    invoke-direct {v0, v9, v8}, Lcom/miui/filtersdk/filter/helper/FilterCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/filter/helper/FilterCategory;->MI_LIVE:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/miui/filtersdk/filter/helper/FilterCategory;

    sget-object v9, Lcom/miui/filtersdk/filter/helper/FilterCategory;->UNKNOWN:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    aput-object v9, v0, v1

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterCategory;->AI:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterCategory;->NORMAL:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterCategory;->BEAUTY:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterCategory;->BEAUTY_INDIA:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterCategory;->STICKER:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterCategory;->LIGHTING:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterCategory;->MI_LIVE:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    aput-object v1, v0, v8

    sput-object v0, Lcom/miui/filtersdk/filter/helper/FilterCategory;->$VALUES:[Lcom/miui/filtersdk/filter/helper/FilterCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

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
