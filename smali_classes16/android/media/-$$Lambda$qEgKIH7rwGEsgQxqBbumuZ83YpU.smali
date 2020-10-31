.class public final synthetic Landroid/media/-$$Lambda$qEgKIH7rwGEsgQxqBbumuZ83YpU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/media/-$$Lambda$qEgKIH7rwGEsgQxqBbumuZ83YpU;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/-$$Lambda$qEgKIH7rwGEsgQxqBbumuZ83YpU;

    invoke-direct {v0}, Landroid/media/-$$Lambda$qEgKIH7rwGEsgQxqBbumuZ83YpU;-><init>()V

    sput-object v0, Landroid/media/-$$Lambda$qEgKIH7rwGEsgQxqBbumuZ83YpU;->INSTANCE:Landroid/media/-$$Lambda$qEgKIH7rwGEsgQxqBbumuZ83YpU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Landroid/media/MediaRouter2;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Landroid/media/RoutingSessionInfo;

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaRouter2;->createControllerOnHandler(ILandroid/media/RoutingSessionInfo;)V

    return-void
.end method
