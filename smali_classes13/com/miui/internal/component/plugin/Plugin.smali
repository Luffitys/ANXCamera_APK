.class public Lcom/miui/internal/component/plugin/Plugin;
.super Ljava/lang/Object;
.source "Plugin.java"


# instance fields
.field private dependencies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/internal/component/plugin/Dependency;",
            ">;"
        }
    .end annotation
.end field

.field private extensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/internal/component/plugin/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private file:Ljava/io/File;

.field private group:Ljava/lang/String;

.field private level:I

.field private minCapatibleLevel:I

.field private name:Ljava/lang/String;

.field private outlets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/internal/component/plugin/Outlet;",
            ">;"
        }
    .end annotation
.end field

.field private resources:Lcom/miui/internal/component/plugin/AccessPermission;

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

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
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/component/plugin/Plugin;->dependencies:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/internal/component/plugin/Dependency;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addExtension(Lcom/miui/internal/component/plugin/Extension;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/component/plugin/Plugin;->extensions:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/internal/component/plugin/Extension;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addOutlet(Lcom/miui/internal/component/plugin/Outlet;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/component/plugin/Plugin;->outlets:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/internal/component/plugin/Outlet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearDependencies()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/component/plugin/Plugin;->dependencies:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public clearExtensions()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/component/plugin/Plugin;->extensions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public clearOutlets()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/component/plugin/Plugin;->outlets:Ljava/util/Map;

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
            "Lcom/miui/internal/component/plugin/Dependency;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/internal/component/plugin/Plugin;->dependencies:Ljava/util/Map;

    return-object v0
.end method

.method public getDependency(Ljava/lang/String;)Lcom/miui/internal/component/plugin/Dependency;
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/component/plugin/Plugin;->dependencies:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/component/plugin/Dependency;

    return-object v0
.end method

.method public getExtension(Ljava/lang/String;)Lcom/miui/internal/component/plugin/Extension;
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/component/plugin/Plugin;->extensions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/component/plugin/Extension;

    return-object v0
.end method

.method public getExtensions()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/internal/component/plugin/Extension;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/internal/component/plugin/Plugin;->extensions:Ljava/util/Map;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/component/plugin/Plugin;->file:Ljava/io/File;

    return-object v0
.end method

.method public getGroup()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/component/plugin/Plugin;->group:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .registers 2

    iget v0, p0, Lcom/miui/internal/component/plugin/Plugin;->level:I

    return v0
.end method

.method public getMinCapatibleLevel()I
    .registers 2

    iget v0, p0, Lcom/miui/internal/component/plugin/Plugin;->minCapatibleLevel:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/component/plugin/Plugin;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOutlet(Ljava/lang/String;)Lcom/miui/internal/component/plugin/Outlet;
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/component/plugin/Plugin;->outlets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/component/plugin/Outlet;

    return-object v0
.end method

.method public getOutlets()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/internal/component/plugin/Outlet;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/internal/component/plugin/Plugin;->outlets:Ljava/util/Map;

    return-object v0
.end method

.method public getResources()Lcom/miui/internal/component/plugin/AccessPermission;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/component/plugin/Plugin;->resources:Lcom/miui/internal/component/plugin/AccessPermission;

    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/miui/internal/component/plugin/Plugin;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/component/plugin/Plugin;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public setDependencies(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/internal/component/plugin/Dependency;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/internal/component/plugin/Plugin;->dependencies:Ljava/util/Map;

    return-void
.end method

.method public setExtensions(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/internal/component/plugin/Extension;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/internal/component/plugin/Plugin;->extensions:Ljava/util/Map;

    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/component/plugin/Plugin;->file:Ljava/io/File;

    return-void
.end method

.method public setGroup(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/component/plugin/Plugin;->group:Ljava/lang/String;

    return-void
.end method

.method public setLevel(I)V
    .registers 2

    iput p1, p0, Lcom/miui/internal/component/plugin/Plugin;->level:I

    return-void
.end method

.method public setMinCapatibleLevel(I)V
    .registers 2

    iput p1, p0, Lcom/miui/internal/component/plugin/Plugin;->minCapatibleLevel:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/component/plugin/Plugin;->name:Ljava/lang/String;

    return-void
.end method

.method public setOutlets(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/internal/component/plugin/Outlet;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/internal/component/plugin/Plugin;->outlets:Ljava/util/Map;

    return-void
.end method

.method public setResources(Lcom/miui/internal/component/plugin/AccessPermission;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/component/plugin/Plugin;->resources:Lcom/miui/internal/component/plugin/AccessPermission;

    return-void
.end method

.method public setVersionCode(I)V
    .registers 2

    iput p1, p0, Lcom/miui/internal/component/plugin/Plugin;->versionCode:I

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/component/plugin/Plugin;->versionName:Ljava/lang/String;

    return-void
.end method
