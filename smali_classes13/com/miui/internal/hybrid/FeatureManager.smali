.class public Lcom/miui/internal/hybrid/FeatureManager;
.super Ljava/lang/Object;
.source "FeatureManager.java"


# instance fields
.field private mConfig:Lcom/miui/internal/hybrid/Config;

.field private mFeatures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiui/hybrid/HybridFeature;",
            ">;"
        }
    .end annotation
.end field

.field private mLoader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Lcom/miui/internal/hybrid/Config;Ljava/lang/ClassLoader;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/hybrid/FeatureManager;->mFeatures:Ljava/util/Map;

    iput-object p1, p0, Lcom/miui/internal/hybrid/FeatureManager;->mConfig:Lcom/miui/internal/hybrid/Config;

    iput-object p2, p0, Lcom/miui/internal/hybrid/FeatureManager;->mLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method private initFeature(Ljava/lang/String;)Lmiui/hybrid/HybridFeature;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/hybrid/HybridException;
        }
    .end annotation

    const/16 v0, 0xcc

    :try_start_2
    iget-object v1, p0, Lcom/miui/internal/hybrid/FeatureManager;->mLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/hybrid/HybridFeature;
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_e} :catch_3f
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_e} :catch_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_e} :catch_f

    return-object v2

    :catch_f
    move-exception v1

    new-instance v2, Lcom/miui/internal/hybrid/HybridException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "feature cannot be accessed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/miui/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_27
    move-exception v1

    new-instance v2, Lcom/miui/internal/hybrid/HybridException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "feature cannot be instantiated: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/miui/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_3f
    move-exception v1

    new-instance v2, Lcom/miui/internal/hybrid/HybridException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "feature not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/miui/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public lookupFeature(Ljava/lang/String;)Lmiui/hybrid/HybridFeature;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/hybrid/HybridException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/internal/hybrid/FeatureManager;->mFeatures:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/hybrid/HybridFeature;

    if-nez v0, :cond_3c

    iget-object v1, p0, Lcom/miui/internal/hybrid/FeatureManager;->mConfig:Lcom/miui/internal/hybrid/Config;

    invoke-virtual {v1, p1}, Lcom/miui/internal/hybrid/Config;->getFeature(Ljava/lang/String;)Lcom/miui/internal/hybrid/Feature;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-direct {p0, p1}, Lcom/miui/internal/hybrid/FeatureManager;->initFeature(Ljava/lang/String;)Lmiui/hybrid/HybridFeature;

    move-result-object v0

    invoke-virtual {v1}, Lcom/miui/internal/hybrid/Feature;->getParams()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Lmiui/hybrid/HybridFeature;->setParams(Ljava/util/Map;)V

    iget-object v2, p0, Lcom/miui/internal/hybrid/FeatureManager;->mFeatures:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c

    :cond_23
    new-instance v2, Lcom/miui/internal/hybrid/HybridException;

    const/16 v3, 0xcc

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "feature not declared: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/miui/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_3c
    :goto_3c
    return-object v0
.end method
