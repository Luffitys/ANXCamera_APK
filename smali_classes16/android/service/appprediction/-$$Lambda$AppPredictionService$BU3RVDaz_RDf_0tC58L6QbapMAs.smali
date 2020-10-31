.class public final synthetic Landroid/service/appprediction/-$$Lambda$AppPredictionService$BU3RVDaz_RDf_0tC58L6QbapMAs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/service/appprediction/AppPredictionService;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Landroid/service/appprediction/AppPredictionService;Ljava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/appprediction/-$$Lambda$AppPredictionService$BU3RVDaz_RDf_0tC58L6QbapMAs;->f$0:Landroid/service/appprediction/AppPredictionService;

    iput-object p2, p0, Landroid/service/appprediction/-$$Lambda$AppPredictionService$BU3RVDaz_RDf_0tC58L6QbapMAs;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Landroid/service/appprediction/-$$Lambda$AppPredictionService$BU3RVDaz_RDf_0tC58L6QbapMAs;->f$0:Landroid/service/appprediction/AppPredictionService;

    iget-object v1, p0, Landroid/service/appprediction/-$$Lambda$AppPredictionService$BU3RVDaz_RDf_0tC58L6QbapMAs;->f$1:Ljava/util/ArrayList;

    check-cast p1, Landroid/service/appprediction/AppPredictionService$CallbackWrapper;

    invoke-virtual {v0, v1, p1}, Landroid/service/appprediction/AppPredictionService;->lambda$doRegisterPredictionUpdates$1$AppPredictionService(Ljava/util/ArrayList;Landroid/service/appprediction/AppPredictionService$CallbackWrapper;)V

    return-void
.end method
