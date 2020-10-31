.class public final synthetic Lcom/android/internal/app/-$$Lambda$ResolverListController$1yUwnJRSKoStFZLoSuluJkf2p0E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/app/ResolverListController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/app/ResolverListController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/-$$Lambda$ResolverListController$1yUwnJRSKoStFZLoSuluJkf2p0E;->f$0:Lcom/android/internal/app/ResolverListController;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, Lcom/android/internal/app/-$$Lambda$ResolverListController$1yUwnJRSKoStFZLoSuluJkf2p0E;->f$0:Lcom/android/internal/app/ResolverListController;

    check-cast p1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    check-cast p2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ResolverListController;->lambda$topK$0$ResolverListController(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I

    move-result p1

    return p1
.end method
