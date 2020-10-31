.class public final synthetic Lcom/android/internal/app/-$$Lambda$AppPredictionServiceResolverComparator$PQ-i16vesHTtkDyBgU_HkS0uF1A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/app/AppPredictionServiceResolverComparator;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/app/AppPredictionServiceResolverComparator;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/-$$Lambda$AppPredictionServiceResolverComparator$PQ-i16vesHTtkDyBgU_HkS0uF1A;->f$0:Lcom/android/internal/app/AppPredictionServiceResolverComparator;

    iput-object p2, p0, Lcom/android/internal/app/-$$Lambda$AppPredictionServiceResolverComparator$PQ-i16vesHTtkDyBgU_HkS0uF1A;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/app/-$$Lambda$AppPredictionServiceResolverComparator$PQ-i16vesHTtkDyBgU_HkS0uF1A;->f$0:Lcom/android/internal/app/AppPredictionServiceResolverComparator;

    iget-object v1, p0, Lcom/android/internal/app/-$$Lambda$AppPredictionServiceResolverComparator$PQ-i16vesHTtkDyBgU_HkS0uF1A;->f$1:Ljava/util/List;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->lambda$doCompute$1$AppPredictionServiceResolverComparator(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
