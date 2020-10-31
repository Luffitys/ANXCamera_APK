.class public final synthetic Lcom/android/internal/app/-$$Lambda$ResolverRankerServiceResolverComparator$eaaHaPUIpbqa_7QYRw6uiy-Yglw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/app/ResolverRankerServiceResolverComparator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/app/ResolverRankerServiceResolverComparator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/-$$Lambda$ResolverRankerServiceResolverComparator$eaaHaPUIpbqa_7QYRw6uiy-Yglw;->f$0:Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, Lcom/android/internal/app/-$$Lambda$ResolverRankerServiceResolverComparator$eaaHaPUIpbqa_7QYRw6uiy-Yglw;->f$0:Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->lambda$getTopComponentNames$0$ResolverRankerServiceResolverComparator(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result p1

    return p1
.end method
