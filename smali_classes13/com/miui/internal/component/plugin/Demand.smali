.class public final enum Lcom/miui/internal/component/plugin/Demand;
.super Ljava/lang/Enum;
.source "Demand.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/internal/component/plugin/Demand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/internal/component/plugin/Demand;

.field public static final enum OPTIONAL:Lcom/miui/internal/component/plugin/Demand;

.field public static final enum PROHIBITED:Lcom/miui/internal/component/plugin/Demand;

.field public static final enum REQUIRED:Lcom/miui/internal/component/plugin/Demand;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/miui/internal/component/plugin/Demand;

    const-string v1, "REQUIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/internal/component/plugin/Demand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/component/plugin/Demand;->REQUIRED:Lcom/miui/internal/component/plugin/Demand;

    new-instance v0, Lcom/miui/internal/component/plugin/Demand;

    const-string v1, "OPTIONAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/internal/component/plugin/Demand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/component/plugin/Demand;->OPTIONAL:Lcom/miui/internal/component/plugin/Demand;

    new-instance v0, Lcom/miui/internal/component/plugin/Demand;

    const-string v1, "PROHIBITED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/internal/component/plugin/Demand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/component/plugin/Demand;->PROHIBITED:Lcom/miui/internal/component/plugin/Demand;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/miui/internal/component/plugin/Demand;

    sget-object v5, Lcom/miui/internal/component/plugin/Demand;->REQUIRED:Lcom/miui/internal/component/plugin/Demand;

    aput-object v5, v1, v2

    sget-object v2, Lcom/miui/internal/component/plugin/Demand;->OPTIONAL:Lcom/miui/internal/component/plugin/Demand;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/miui/internal/component/plugin/Demand;->$VALUES:[Lcom/miui/internal/component/plugin/Demand;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/internal/component/plugin/Demand;
    .registers 2

    const-class v0, Lcom/miui/internal/component/plugin/Demand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/component/plugin/Demand;

    return-object v0
.end method

.method public static values()[Lcom/miui/internal/component/plugin/Demand;
    .registers 1

    sget-object v0, Lcom/miui/internal/component/plugin/Demand;->$VALUES:[Lcom/miui/internal/component/plugin/Demand;

    invoke-virtual {v0}, [Lcom/miui/internal/component/plugin/Demand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/internal/component/plugin/Demand;

    return-object v0
.end method
