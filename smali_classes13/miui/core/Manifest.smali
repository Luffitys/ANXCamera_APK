.class public Lmiui/core/Manifest;
.super Ljava/lang/Object;
.source "Manifest.java"


# instance fields
.field private dependencies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiui/module/Dependency;",
            ">;"
        }
    .end annotation
.end field

.field private module:Lmiui/module/Module;

.field private sdkDependency:Lmiui/module/Dependency;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lmiui/core/Manifest;->dependencies:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addDependency(Ljava/lang/String;Lmiui/module/Dependency;)V
    .registers 4

    iget-object v0, p0, Lmiui/core/Manifest;->dependencies:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearDependencies()V
    .registers 2

    iget-object v0, p0, Lmiui/core/Manifest;->dependencies:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getDependencies()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiui/module/Dependency;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/core/Manifest;->dependencies:Ljava/util/Map;

    return-object v0
.end method

.method public getDependency(Ljava/lang/String;)Lmiui/module/Dependency;
    .registers 3

    iget-object v0, p0, Lmiui/core/Manifest;->dependencies:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/module/Dependency;

    return-object v0
.end method

.method public getLevel()I
    .registers 2

    iget-object v0, p0, Lmiui/core/Manifest;->module:Lmiui/module/Module;

    invoke-virtual {v0}, Lmiui/module/Module;->getLevel()I

    move-result v0

    return v0
.end method

.method public getModule()Lmiui/module/Module;
    .registers 2

    iget-object v0, p0, Lmiui/core/Manifest;->module:Lmiui/module/Module;

    return-object v0
.end method

.method public getSdkDependency()Lmiui/module/Dependency;
    .registers 2

    iget-object v0, p0, Lmiui/core/Manifest;->sdkDependency:Lmiui/module/Dependency;

    return-object v0
.end method

.method public setDependencies(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiui/module/Dependency;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lmiui/core/Manifest;->dependencies:Ljava/util/Map;

    return-void
.end method

.method public setModule(Lmiui/module/Module;)V
    .registers 2

    iput-object p1, p0, Lmiui/core/Manifest;->module:Lmiui/module/Module;

    return-void
.end method

.method public setSdkDependency(Lmiui/module/Dependency;)V
    .registers 2

    iput-object p1, p0, Lmiui/core/Manifest;->sdkDependency:Lmiui/module/Dependency;

    return-void
.end method
