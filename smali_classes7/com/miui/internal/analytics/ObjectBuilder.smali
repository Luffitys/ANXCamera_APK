.class public Lcom/miui/internal/analytics/ObjectBuilder;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "ObjectBuilder"


# instance fields
.field private mBuilderInf:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/analytics/ObjectBuilder;->mBuilderInf:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public buildObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    const-string v0, "ObjectBuilder"

    iget-object p0, p0, Lcom/miui/internal/analytics/ObjectBuilder;->mBuilderInf:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/analytics/ObjectBuilder$BuilderData;

    iget-object v3, v2, Lcom/miui/internal/analytics/ObjectBuilder$BuilderData;->mTag:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v2, v2, Lcom/miui/internal/analytics/ObjectBuilder$BuilderData;->mType:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "IllegalAccessException catched when buildObject"

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "InstantiationException catched when buildObject"

    :goto_1
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public registerClass(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/analytics/ObjectBuilder;->mBuilderInf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/analytics/ObjectBuilder$BuilderData;

    iget-object v1, v1, Lcom/miui/internal/analytics/ObjectBuilder$BuilderData;->mTag:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/analytics/ObjectBuilder;->mBuilderInf:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/internal/analytics/ObjectBuilder$BuilderData;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/internal/analytics/ObjectBuilder$BuilderData;-><init>(Lcom/miui/internal/analytics/ObjectBuilder;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
