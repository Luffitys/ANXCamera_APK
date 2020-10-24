.class public Lcom/miui/internal/hybrid/FeatureManager;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mConfig:Lcom/miui/internal/hybrid/Config;

.field private mFeatures:Ljava/util/Map;

.field private mLoader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Lcom/miui/internal/hybrid/Config;Ljava/lang/ClassLoader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/hybrid/FeatureManager;->mFeatures:Ljava/util/Map;

    iput-object p1, p0, Lcom/miui/internal/hybrid/FeatureManager;->mConfig:Lcom/miui/internal/hybrid/Config;

    iput-object p2, p0, Lcom/miui/internal/hybrid/FeatureManager;->mLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method private initFeature(Ljava/lang/String;)Lmiui/hybrid/HybridFeature;
    .locals 3

    const/16 v0, 0xcc

    :try_start_0
    iget-object p0, p0, Lcom/miui/internal/hybrid/FeatureManager;->mLoader:Ljava/lang/ClassLoader;

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/hybrid/HybridFeature;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Lcom/miui/internal/hybrid/HybridException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feature cannot be accessed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/miui/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw p0

    :catch_1
    new-instance p0, Lcom/miui/internal/hybrid/HybridException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feature cannot be instantiated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/miui/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw p0

    :catch_2
    new-instance p0, Lcom/miui/internal/hybrid/HybridException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feature not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/miui/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public lookupFeature(Ljava/lang/String;)Lmiui/hybrid/HybridFeature;
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/hybrid/FeatureManager;->mFeatures:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/hybrid/HybridFeature;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/hybrid/FeatureManager;->mConfig:Lcom/miui/internal/hybrid/Config;

    invoke-virtual {v0, p1}, Lcom/miui/internal/hybrid/Config;->getFeature(Ljava/lang/String;)Lcom/miui/internal/hybrid/Feature;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/internal/hybrid/FeatureManager;->initFeature(Ljava/lang/String;)Lmiui/hybrid/HybridFeature;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/Feature;->getParams()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Lmiui/hybrid/HybridFeature;->setParams(Ljava/util/Map;)V

    iget-object p0, p0, Lcom/miui/internal/hybrid/FeatureManager;->mFeatures:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/miui/internal/hybrid/HybridException;

    const/16 v0, 0xcc

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feature not declared: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/miui/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method
