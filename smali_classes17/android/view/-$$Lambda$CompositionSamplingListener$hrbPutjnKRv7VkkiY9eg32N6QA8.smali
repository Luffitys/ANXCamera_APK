.class public final synthetic Landroid/view/-$$Lambda$CompositionSamplingListener$hrbPutjnKRv7VkkiY9eg32N6QA8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/CompositionSamplingListener;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Landroid/view/CompositionSamplingListener;F)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$CompositionSamplingListener$hrbPutjnKRv7VkkiY9eg32N6QA8;->f$0:Landroid/view/CompositionSamplingListener;

    iput p2, p0, Landroid/view/-$$Lambda$CompositionSamplingListener$hrbPutjnKRv7VkkiY9eg32N6QA8;->f$1:F

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/view/-$$Lambda$CompositionSamplingListener$hrbPutjnKRv7VkkiY9eg32N6QA8;->f$0:Landroid/view/CompositionSamplingListener;

    iget v1, p0, Landroid/view/-$$Lambda$CompositionSamplingListener$hrbPutjnKRv7VkkiY9eg32N6QA8;->f$1:F

    invoke-static {v0, v1}, Landroid/view/CompositionSamplingListener;->lambda$dispatchOnSampleCollected$0(Landroid/view/CompositionSamplingListener;F)V

    return-void
.end method
