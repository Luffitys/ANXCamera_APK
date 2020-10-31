.class public Lcom/miui/internal/analytics/ObjectBuilder;
.super Ljava/lang/Object;
.source "ObjectBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/analytics/ObjectBuilder$BuilderData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ObjectBuilder"


# instance fields
.field private mBuilderInf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/internal/analytics/ObjectBuilder<",
            "TT;>.BuilderData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/analytics/ObjectBuilder;->mBuilderInf:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public buildObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "ObjectBuilder"

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/internal/analytics/ObjectBuilder;->mBuilderInf:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/analytics/ObjectBuilder$BuilderData;

    iget-object v4, v3, Lcom/miui/internal/analytics/ObjectBuilder$BuilderData;->mTag:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    :try_start_1d
    iget-object v4, v3, Lcom/miui/internal/analytics/ObjectBuilder$BuilderData;->mType:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4
    :try_end_23
    .catch Ljava/lang/InstantiationException; {:try_start_1d .. :try_end_23} :catch_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_23} :catch_25

    move-object v1, v4

    :goto_24
    goto :goto_33

    :catch_25
    move-exception v4

    const-string v5, "IllegalAccessException catched when buildObject"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33

    :catch_2c
    move-exception v4

    const-string v5, "InstantiationException catched when buildObject"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    :cond_33
    :goto_33
    goto :goto_9

    :cond_34
    return-object v1
.end method

.method public registerClass(Ljava/lang/Class;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/internal/analytics/ObjectBuilder;->mBuilderInf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/analytics/ObjectBuilder$BuilderData;

    iget-object v2, v1, Lcom/miui/internal/analytics/ObjectBuilder$BuilderData;->mTag:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v0, 0x0

    return v0

    :cond_1c
    goto :goto_6

    :cond_1d
    iget-object v0, p0, Lcom/miui/internal/analytics/ObjectBuilder;->mBuilderInf:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/internal/analytics/ObjectBuilder$BuilderData;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/internal/analytics/ObjectBuilder$BuilderData;-><init>(Lcom/miui/internal/analytics/ObjectBuilder;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
