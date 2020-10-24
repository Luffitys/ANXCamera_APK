.class public Lmiui/core/Manifest;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private dependencies:Ljava/util/Map;

.field private module:Lmiui/module/Module;

.field private sdkDependency:Lmiui/module/Dependency;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lmiui/core/Manifest;->dependencies:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addDependency(Ljava/lang/String;Lmiui/module/Dependency;)V
    .locals 0

    iget-object p0, p0, Lmiui/core/Manifest;->dependencies:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearDependencies()V
    .locals 0

    iget-object p0, p0, Lmiui/core/Manifest;->dependencies:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getDependencies()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lmiui/core/Manifest;->dependencies:Ljava/util/Map;

    return-object p0
.end method

.method public getDependency(Ljava/lang/String;)Lmiui/module/Dependency;
    .locals 0

    iget-object p0, p0, Lmiui/core/Manifest;->dependencies:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/module/Dependency;

    return-object p0
.end method

.method public getLevel()I
    .locals 0

    iget-object p0, p0, Lmiui/core/Manifest;->module:Lmiui/module/Module;

    invoke-virtual {p0}, Lmiui/module/Module;->getLevel()I

    move-result p0

    return p0
.end method

.method public getModule()Lmiui/module/Module;
    .locals 0

    iget-object p0, p0, Lmiui/core/Manifest;->module:Lmiui/module/Module;

    return-object p0
.end method

.method public getSdkDependency()Lmiui/module/Dependency;
    .locals 0

    iget-object p0, p0, Lmiui/core/Manifest;->sdkDependency:Lmiui/module/Dependency;

    return-object p0
.end method

.method public setDependencies(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lmiui/core/Manifest;->dependencies:Ljava/util/Map;

    return-void
.end method

.method public setModule(Lmiui/module/Module;)V
    .locals 0

    iput-object p1, p0, Lmiui/core/Manifest;->module:Lmiui/module/Module;

    return-void
.end method

.method public setSdkDependency(Lmiui/module/Dependency;)V
    .locals 0

    iput-object p1, p0, Lmiui/core/Manifest;->sdkDependency:Lmiui/module/Dependency;

    return-void
.end method
