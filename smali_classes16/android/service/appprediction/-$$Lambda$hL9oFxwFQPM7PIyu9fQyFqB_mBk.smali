.class public final synthetic Landroid/service/appprediction/-$$Lambda$hL9oFxwFQPM7PIyu9fQyFqB_mBk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/QuintConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/service/appprediction/-$$Lambda$hL9oFxwFQPM7PIyu9fQyFqB_mBk;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/appprediction/-$$Lambda$hL9oFxwFQPM7PIyu9fQyFqB_mBk;

    invoke-direct {v0}, Landroid/service/appprediction/-$$Lambda$hL9oFxwFQPM7PIyu9fQyFqB_mBk;-><init>()V

    sput-object v0, Landroid/service/appprediction/-$$Lambda$hL9oFxwFQPM7PIyu9fQyFqB_mBk;->INSTANCE:Landroid/service/appprediction/-$$Lambda$hL9oFxwFQPM7PIyu9fQyFqB_mBk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    check-cast p1, Landroid/service/appprediction/AppPredictionService;

    check-cast p2, Landroid/app/prediction/AppPredictionSessionId;

    check-cast p3, Ljava/util/List;

    check-cast p4, Landroid/os/CancellationSignal;

    check-cast p5, Landroid/service/appprediction/AppPredictionService$CallbackWrapper;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/service/appprediction/AppPredictionService;->onSortAppTargets(Landroid/app/prediction/AppPredictionSessionId;Ljava/util/List;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void
.end method
