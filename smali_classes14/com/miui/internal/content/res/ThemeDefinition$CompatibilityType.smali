.class public final enum Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;
.super Ljava/lang/Enum;
.source "ThemeDefinition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/content/res/ThemeDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompatibilityType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

.field public static final enum FALLBACK:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

.field public static final enum NEW_DEF_VALUE:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

.field public static final enum NONE:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    const-string v1, "FALLBACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;->FALLBACK:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    new-instance v0, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    const-string v1, "NEW_DEF_VALUE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;->NEW_DEF_VALUE:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    new-instance v0, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    const-string v1, "NONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;->NONE:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    sget-object v5, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;->FALLBACK:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;->NEW_DEF_VALUE:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;->$VALUES:[Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

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

.method public static getType(Ljava/lang/String;)Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;
    .registers 2

    const-string v0, "fallback"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;->FALLBACK:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    return-object v0

    :cond_b
    const-string v0, "newDefValue"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;->NEW_DEF_VALUE:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    return-object v0

    :cond_16
    sget-object v0, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;->NONE:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;
    .registers 2

    const-class v0, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    return-object v0
.end method

.method public static values()[Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;
    .registers 1

    sget-object v0, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;->$VALUES:[Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    invoke-virtual {v0}, [Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    return-object v0
.end method
