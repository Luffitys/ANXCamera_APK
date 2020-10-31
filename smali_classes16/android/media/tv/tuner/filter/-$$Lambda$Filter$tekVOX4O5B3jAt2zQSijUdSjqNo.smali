.class public final synthetic Landroid/media/tv/tuner/filter/-$$Lambda$Filter$tekVOX4O5B3jAt2zQSijUdSjqNo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/tv/tuner/filter/Filter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/media/tv/tuner/filter/Filter;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/tuner/filter/-$$Lambda$Filter$tekVOX4O5B3jAt2zQSijUdSjqNo;->f$0:Landroid/media/tv/tuner/filter/Filter;

    iput p2, p0, Landroid/media/tv/tuner/filter/-$$Lambda$Filter$tekVOX4O5B3jAt2zQSijUdSjqNo;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/filter/-$$Lambda$Filter$tekVOX4O5B3jAt2zQSijUdSjqNo;->f$0:Landroid/media/tv/tuner/filter/Filter;

    iget v1, p0, Landroid/media/tv/tuner/filter/-$$Lambda$Filter$tekVOX4O5B3jAt2zQSijUdSjqNo;->f$1:I

    invoke-virtual {v0, v1}, Landroid/media/tv/tuner/filter/Filter;->lambda$onFilterStatus$0$Filter(I)V

    return-void
.end method
