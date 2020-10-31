.class public final synthetic Lcom/android/internal/graphics/-$$Lambda$ColorUtils$r4F1J7Y711kBAemoOw8QHbDba_8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/graphics/ColorUtils$ContrastCalculator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/graphics/-$$Lambda$ColorUtils$r4F1J7Y711kBAemoOw8QHbDba_8;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/graphics/-$$Lambda$ColorUtils$r4F1J7Y711kBAemoOw8QHbDba_8;

    invoke-direct {v0}, Lcom/android/internal/graphics/-$$Lambda$ColorUtils$r4F1J7Y711kBAemoOw8QHbDba_8;-><init>()V

    sput-object v0, Lcom/android/internal/graphics/-$$Lambda$ColorUtils$r4F1J7Y711kBAemoOw8QHbDba_8;->INSTANCE:Lcom/android/internal/graphics/-$$Lambda$ColorUtils$r4F1J7Y711kBAemoOw8QHbDba_8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final calculateContrast(III)D
    .registers 4

    invoke-static {p1, p2, p3}, Lcom/android/internal/graphics/ColorUtils;->lambda$calculateMinimumAlpha$1(III)D

    move-result-wide p1

    return-wide p1
.end method
