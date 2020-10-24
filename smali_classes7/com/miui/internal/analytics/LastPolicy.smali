.class public Lcom/miui/internal/analytics/LastPolicy;
.super Lcom/miui/internal/analytics/Policy;
.source ""


# static fields
.field public static final TAG:Ljava/lang/String; = "last"


# instance fields
.field private mItems:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/internal/analytics/Policy;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/analytics/LastPolicy;->mItems:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public end()V
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/analytics/LastPolicy;->mItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/internal/analytics/LastPolicy;->mItems:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/analytics/Event;

    invoke-virtual {v1}, Lcom/miui/internal/analytics/Event;->dispatch()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/analytics/LastPolicy;->mItems:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public execute(Lcom/miui/internal/analytics/Event;)V
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/analytics/LastPolicy;->mItems:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/internal/analytics/Event;->getEventId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public prepare()V
    .locals 0

    return-void
.end method
