.class public final synthetic Landroid/widget/-$$Lambda$ChL7kntlZCrPaPVdRfaSzGdk1JU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Landroid/widget/-$$Lambda$ChL7kntlZCrPaPVdRfaSzGdk1JU;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/widget/-$$Lambda$ChL7kntlZCrPaPVdRfaSzGdk1JU;

    invoke-direct {v0}, Landroid/widget/-$$Lambda$ChL7kntlZCrPaPVdRfaSzGdk1JU;-><init>()V

    sput-object v0, Landroid/widget/-$$Lambda$ChL7kntlZCrPaPVdRfaSzGdk1JU;->INSTANCE:Landroid/widget/-$$Lambda$ChL7kntlZCrPaPVdRfaSzGdk1JU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;

    invoke-virtual {p1}, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;->getRectangle()Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method
