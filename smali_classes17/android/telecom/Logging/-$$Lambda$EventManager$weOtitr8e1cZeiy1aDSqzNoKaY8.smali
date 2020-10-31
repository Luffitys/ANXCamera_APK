.class public final synthetic Landroid/telecom/Logging/-$$Lambda$EventManager$weOtitr8e1cZeiy1aDSqzNoKaY8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# static fields
.field public static final synthetic INSTANCE:Landroid/telecom/Logging/-$$Lambda$EventManager$weOtitr8e1cZeiy1aDSqzNoKaY8;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telecom/Logging/-$$Lambda$EventManager$weOtitr8e1cZeiy1aDSqzNoKaY8;

    invoke-direct {v0}, Landroid/telecom/Logging/-$$Lambda$EventManager$weOtitr8e1cZeiy1aDSqzNoKaY8;-><init>()V

    sput-object v0, Landroid/telecom/Logging/-$$Lambda$EventManager$weOtitr8e1cZeiy1aDSqzNoKaY8;->INSTANCE:Landroid/telecom/Logging/-$$Lambda$EventManager$weOtitr8e1cZeiy1aDSqzNoKaY8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .registers 4

    check-cast p1, Landroid/util/Pair;

    invoke-static {p1}, Landroid/telecom/Logging/EventManager;->lambda$dumpEventsTimeline$0(Landroid/util/Pair;)J

    move-result-wide v0

    return-wide v0
.end method
