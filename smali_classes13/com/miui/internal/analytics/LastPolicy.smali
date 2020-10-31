.class public Lcom/miui/internal/analytics/LastPolicy;
.super Lcom/miui/internal/analytics/Policy;
.source "LastPolicy.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "last"


# instance fields
.field private mItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/internal/analytics/Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/miui/internal/analytics/Policy;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/analytics/LastPolicy;->mItems:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public end()V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/analytics/LastPolicy;->mItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/internal/analytics/LastPolicy;->mItems:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/analytics/Event;

    invoke-virtual {v2}, Lcom/miui/internal/analytics/Event;->dispatch()V

    goto :goto_a

    :cond_22
    iget-object v0, p0, Lcom/miui/internal/analytics/LastPolicy;->mItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public execute(Lcom/miui/internal/analytics/Event;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/analytics/LastPolicy;->mItems:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/internal/analytics/Event;->getEventId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public prepare()V
    .registers 1

    return-void
.end method
