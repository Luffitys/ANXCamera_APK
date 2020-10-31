.class public final synthetic Landroid/service/appprediction/-$$Lambda$AppPredictionService$QdiGSCeMaWGP0DGJNn4uhqgT9ZA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/service/appprediction/AppPredictionService;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Landroid/service/appprediction/AppPredictionService$CallbackWrapper;


# direct methods
.method public synthetic constructor <init>(Landroid/service/appprediction/AppPredictionService;Ljava/util/ArrayList;Landroid/service/appprediction/AppPredictionService$CallbackWrapper;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/appprediction/-$$Lambda$AppPredictionService$QdiGSCeMaWGP0DGJNn4uhqgT9ZA;->f$0:Landroid/service/appprediction/AppPredictionService;

    iput-object p2, p0, Landroid/service/appprediction/-$$Lambda$AppPredictionService$QdiGSCeMaWGP0DGJNn4uhqgT9ZA;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Landroid/service/appprediction/-$$Lambda$AppPredictionService$QdiGSCeMaWGP0DGJNn4uhqgT9ZA;->f$2:Landroid/service/appprediction/AppPredictionService$CallbackWrapper;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/service/appprediction/-$$Lambda$AppPredictionService$QdiGSCeMaWGP0DGJNn4uhqgT9ZA;->f$0:Landroid/service/appprediction/AppPredictionService;

    iget-object v1, p0, Landroid/service/appprediction/-$$Lambda$AppPredictionService$QdiGSCeMaWGP0DGJNn4uhqgT9ZA;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/service/appprediction/-$$Lambda$AppPredictionService$QdiGSCeMaWGP0DGJNn4uhqgT9ZA;->f$2:Landroid/service/appprediction/AppPredictionService$CallbackWrapper;

    invoke-virtual {v0, v1, v2}, Landroid/service/appprediction/AppPredictionService;->lambda$doRegisterPredictionUpdates$0$AppPredictionService(Ljava/util/ArrayList;Landroid/service/appprediction/AppPredictionService$CallbackWrapper;)V

    return-void
.end method
