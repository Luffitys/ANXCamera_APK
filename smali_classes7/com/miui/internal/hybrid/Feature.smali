.class public Lcom/miui/internal/hybrid/Feature;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private name:Ljava/lang/String;

.field private params:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/hybrid/Feature;->params:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public clearParams()V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/Feature;->params:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/Feature;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/Feature;->params:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getParams()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/Feature;->params:Ljava/util/Map;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/hybrid/Feature;->name:Ljava/lang/String;

    return-void
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/Feature;->params:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setParams(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/hybrid/Feature;->params:Ljava/util/Map;

    return-void
.end method
