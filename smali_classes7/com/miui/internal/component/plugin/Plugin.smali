.class public Lcom/miui/internal/component/plugin/Plugin;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private dependencies:Ljava/util/Map;

.field private extensions:Ljava/util/Map;

.field private file:Ljava/io/File;

.field private group:Ljava/lang/String;

.field private level:I

.field private minCapatibleLevel:I

.field private name:Ljava/lang/String;

.field private outlets:Ljava/util/Map;

.field private resources:Lcom/miui/internal/component/plugin/AccessPermission;

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/component/plugin/Plugin;->dependencies:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/component/plugin/Plugin;->extensions:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/component/plugin/Plugin;->outlets:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addDependency(Lcom/miui/internal/component/plugin/Dependency;)V
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/component/plugin/Plugin;->dependencies:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/internal/component/plugin/Dependency;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addExtension(Lcom/miui/internal/component/plugin/Extension;)V
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/component/plugin/Plugin;->extensions:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/internal/component/plugin/Extension;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addOutlet(Lcom/miui/internal/component/plugin/Outlet;)V
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/component/plugin/Plugin;->outlets:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/internal/component/plugin/Outlet;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearDependencies()V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/component/plugin/Plugin;->dependencies:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public clearExtensions()V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/component/plugin/Plugin;->extensions:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public clearOutlets()V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/component/plugin/Plugin;->outlets:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getDependencies()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/component/plugin/Plugin;->dependencies:Ljava/util/Map;

    return-object p0
.end method

.method public getDependency(Ljava/lang/String;)Lcom/miui/internal/component/plugin/Dependency;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/component/plugin/Plugin;->dependencies:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/internal/component/plugin/Dependency;

    return-object p0
.end method

.method public getExtension(Ljava/lang/String;)Lcom/miui/internal/component/plugin/Extension;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/component/plugin/Plugin;->extensions:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/internal/component/plugin/Extension;

    return-object p0
.end method

.method public getExtensions()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/component/plugin/Plugin;->extensions:Ljava/util/Map;

    return-object p0
.end method

.method public getFile()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/component/plugin/Plugin;->file:Ljava/io/File;

    return-object p0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/component/plugin/Plugin;->group:Ljava/lang/String;

    return-object p0
.end method

.method public getLevel()I
    .locals 0

    iget p0, p0, Lcom/miui/internal/component/plugin/Plugin;->level:I

    return p0
.end method

.method public getMinCapatibleLevel()I
    .locals 0

    iget p0, p0, Lcom/miui/internal/component/plugin/Plugin;->minCapatibleLevel:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/component/plugin/Plugin;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOutlet(Ljava/lang/String;)Lcom/miui/internal/component/plugin/Outlet;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/component/plugin/Plugin;->outlets:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/internal/component/plugin/Outlet;

    return-object p0
.end method

.method public getOutlets()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/component/plugin/Plugin;->outlets:Ljava/util/Map;

    return-object p0
.end method

.method public getResources()Lcom/miui/internal/component/plugin/AccessPermission;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/component/plugin/Plugin;->resources:Lcom/miui/internal/component/plugin/AccessPermission;

    return-object p0
.end method

.method public getVersionCode()I
    .locals 0

    iget p0, p0, Lcom/miui/internal/component/plugin/Plugin;->versionCode:I

    return p0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/component/plugin/Plugin;->versionName:Ljava/lang/String;

    return-object p0
.end method

.method public setDependencies(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/component/plugin/Plugin;->dependencies:Ljava/util/Map;

    return-void
.end method

.method public setExtensions(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/component/plugin/Plugin;->extensions:Ljava/util/Map;

    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/component/plugin/Plugin;->file:Ljava/io/File;

    return-void
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/component/plugin/Plugin;->group:Ljava/lang/String;

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    iput p1, p0, Lcom/miui/internal/component/plugin/Plugin;->level:I

    return-void
.end method

.method public setMinCapatibleLevel(I)V
    .locals 0

    iput p1, p0, Lcom/miui/internal/component/plugin/Plugin;->minCapatibleLevel:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/component/plugin/Plugin;->name:Ljava/lang/String;

    return-void
.end method

.method public setOutlets(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/component/plugin/Plugin;->outlets:Ljava/util/Map;

    return-void
.end method

.method public setResources(Lcom/miui/internal/component/plugin/AccessPermission;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/component/plugin/Plugin;->resources:Lcom/miui/internal/component/plugin/AccessPermission;

    return-void
.end method

.method public setVersionCode(I)V
    .locals 0

    iput p1, p0, Lcom/miui/internal/component/plugin/Plugin;->versionCode:I

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/component/plugin/Plugin;->versionName:Ljava/lang/String;

    return-void
.end method
