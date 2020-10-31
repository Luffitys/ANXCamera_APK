.class public final synthetic Landroid/service/appprediction/-$$Lambda$AppPredictionService$1$dlPwi16n_6u5po2eN8wlW4I1bRw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/service/appprediction/-$$Lambda$AppPredictionService$1$dlPwi16n_6u5po2eN8wlW4I1bRw;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/appprediction/-$$Lambda$AppPredictionService$1$dlPwi16n_6u5po2eN8wlW4I1bRw;

    invoke-direct {v0}, Landroid/service/appprediction/-$$Lambda$AppPredictionService$1$dlPwi16n_6u5po2eN8wlW4I1bRw;-><init>()V

    sput-object v0, Landroid/service/appprediction/-$$Lambda$AppPredictionService$1$dlPwi16n_6u5po2eN8wlW4I1bRw;->INSTANCE:Landroid/service/appprediction/-$$Lambda$AppPredictionService$1$dlPwi16n_6u5po2eN8wlW4I1bRw;

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

    check-cast p1, Landroid/service/appprediction/AppPredictionService;

    check-cast p2, Landroid/app/prediction/AppPredictionContext;

    check-cast p3, Landroid/app/prediction/AppPredictionSessionId;

    invoke-static {p1, p2, p3}, Landroid/service/appprediction/AppPredictionService$1;->lambda$onCreatePredictionSession$0(Ljava/lang/Object;Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method
