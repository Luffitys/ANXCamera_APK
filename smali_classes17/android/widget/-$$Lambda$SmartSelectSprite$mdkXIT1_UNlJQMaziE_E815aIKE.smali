.class public final synthetic Landroid/widget/-$$Lambda$SmartSelectSprite$mdkXIT1_UNlJQMaziE_E815aIKE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# static fields
.field public static final synthetic INSTANCE:Landroid/widget/-$$Lambda$SmartSelectSprite$mdkXIT1_UNlJQMaziE_E815aIKE;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/widget/-$$Lambda$SmartSelectSprite$mdkXIT1_UNlJQMaziE_E815aIKE;

    invoke-direct {v0}, Landroid/widget/-$$Lambda$SmartSelectSprite$mdkXIT1_UNlJQMaziE_E815aIKE;-><init>()V

    sput-object v0, Landroid/widget/-$$Lambda$SmartSelectSprite$mdkXIT1_UNlJQMaziE_E815aIKE;->INSTANCE:Landroid/widget/-$$Lambda$SmartSelectSprite$mdkXIT1_UNlJQMaziE_E815aIKE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .registers 4

    check-cast p1, Landroid/graphics/RectF;

    invoke-static {p1}, Landroid/widget/SmartSelectSprite;->lambda$static$1(Landroid/graphics/RectF;)D

    move-result-wide v0

    return-wide v0
.end method
