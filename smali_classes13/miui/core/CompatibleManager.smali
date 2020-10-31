.class public Lmiui/core/CompatibleManager;
.super Ljava/lang/Object;
.source "CompatibleManager.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mManifest:Lmiui/core/Manifest;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/core/CompatibleManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2, p3, p4}, Lmiui/core/CompatibleManager;->parseManifest(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lmiui/core/Manifest;

    move-result-object v0

    iput-object v0, p0, Lmiui/core/CompatibleManager;->mManifest:Lmiui/core/Manifest;

    iput-object p3, p0, Lmiui/core/CompatibleManager;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/core/Manifest;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/core/CompatibleManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lmiui/core/CompatibleManager;->mManifest:Lmiui/core/Manifest;

    invoke-virtual {p2}, Lmiui/core/Manifest;->getModule()Lmiui/module/Module;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/module/Module;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/core/CompatibleManager;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method private getManifest(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lmiui/core/Manifest;
    .registers 5

    invoke-static {p1, p2}, Lmiui/core/ManifestParser;->createFromPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lmiui/core/ManifestParser;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/core/ManifestParser;->parse(Ljava/util/Map;)Lmiui/core/Manifest;

    move-result-object v0

    return-object v0
.end method

.method private isCompatible(Lmiui/module/Dependency$Level;I)Z
    .registers 6

    invoke-virtual {p1}, Lmiui/module/Dependency$Level;->getMinLevel()I

    move-result v0

    if-gt v0, p2, :cond_e

    invoke-virtual {p1}, Lmiui/module/Dependency$Level;->getMaxLevel()I

    move-result v0

    if-gt p2, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-nez v0, :cond_44

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " but needs ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmiui/module/Dependency$Level;->getMinLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmiui/module/Dependency$Level;->getMaxLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "miuisdk"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    return v0
.end method

.method private parseManifest(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lmiui/core/Manifest;
    .registers 7

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/miui/internal/util/ResourcesUtils;->createResources([Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lmiui/core/ManifestParser;->createFromResources(Landroid/content/res/Resources;Ljava/lang/String;Landroid/os/Bundle;)Lmiui/core/ManifestParser;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/core/ManifestParser;->parse(Ljava/util/Map;)Lmiui/core/Manifest;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getLevel()I
    .registers 2

    iget-object v0, p0, Lmiui/core/CompatibleManager;->mManifest:Lmiui/core/Manifest;

    invoke-virtual {v0}, Lmiui/core/Manifest;->getModule()Lmiui/module/Module;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/module/Module;->getLevel()I

    move-result v0

    return v0
.end method

.method public isCompatible()Z
    .registers 11

    iget-object v0, p0, Lmiui/core/CompatibleManager;->mManifest:Lmiui/core/Manifest;

    invoke-virtual {v0}, Lmiui/core/Manifest;->getSdkDependency()Lmiui/module/Dependency;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/module/Dependency;->getLevel()Lmiui/module/Dependency$Level;

    move-result-object v0

    sget v1, Lcom/miui/internal/util/PackageConstants;->CURRENT_SDK_LEVEL:I

    invoke-direct {p0, v0, v1}, Lmiui/core/CompatibleManager;->isCompatible(Lmiui/module/Dependency$Level;I)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "miuisdk"

    if-nez v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/core/CompatibleManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not compatible with sdk"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2c
    iget-object v0, p0, Lmiui/core/CompatibleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v3, 0x1

    if-nez v0, :cond_3b

    const-string v1, "package manager is not ready yet"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3b
    iget-object v4, p0, Lmiui/core/CompatibleManager;->mManifest:Lmiui/core/Manifest;

    invoke-virtual {v4}, Lmiui/core/Manifest;->getDependencies()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_49
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_98

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lmiui/core/CompatibleManager;->mManifest:Lmiui/core/Manifest;

    invoke-virtual {v6, v5}, Lmiui/core/Manifest;->getDependency(Ljava/lang/String;)Lmiui/module/Dependency;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/module/Dependency;->getType()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_64

    goto :goto_49

    :cond_64
    invoke-direct {p0, v0, v5}, Lmiui/core/CompatibleManager;->getManifest(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lmiui/core/Manifest;

    move-result-object v7

    if-eqz v7, :cond_7e

    invoke-virtual {v6}, Lmiui/module/Dependency;->getLevel()Lmiui/module/Dependency$Level;

    move-result-object v8

    invoke-virtual {v7}, Lmiui/core/Manifest;->getModule()Lmiui/module/Module;

    move-result-object v9

    invoke-virtual {v9}, Lmiui/module/Module;->getLevel()I

    move-result v9

    invoke-direct {p0, v8, v9}, Lmiui/core/CompatibleManager;->isCompatible(Lmiui/module/Dependency$Level;I)Z

    move-result v8

    if-nez v8, :cond_7d

    goto :goto_7e

    :cond_7d
    goto :goto_49

    :cond_7e
    :goto_7e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/core/CompatibleManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not compatible with module "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_98
    return v3
.end method

.method public isCurrent()Z
    .registers 3

    iget-object v0, p0, Lmiui/core/CompatibleManager;->mManifest:Lmiui/core/Manifest;

    invoke-virtual {v0}, Lmiui/core/Manifest;->getSdkDependency()Lmiui/module/Dependency;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/module/Dependency;->getLevel()Lmiui/module/Dependency$Level;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/module/Dependency$Level;->getTargetLevel()I

    move-result v0

    sget v1, Lcom/miui/internal/util/PackageConstants;->CURRENT_SDK_LEVEL:I

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method
