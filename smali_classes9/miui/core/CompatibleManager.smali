.class public Lmiui/core/CompatibleManager;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mContext:Landroid/content/Context;

.field private mManifest:Lmiui/core/Manifest;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/core/CompatibleManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2, p3, p4}, Lmiui/core/CompatibleManager;->parseManifest(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lmiui/core/Manifest;

    move-result-object p1

    iput-object p1, p0, Lmiui/core/CompatibleManager;->mManifest:Lmiui/core/Manifest;

    iput-object p3, p0, Lmiui/core/CompatibleManager;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/core/Manifest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/core/CompatibleManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lmiui/core/CompatibleManager;->mManifest:Lmiui/core/Manifest;

    invoke-virtual {p2}, Lmiui/core/Manifest;->getModule()Lmiui/module/Module;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/module/Module;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiui/core/CompatibleManager;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method private getManifest(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lmiui/core/Manifest;
    .locals 0

    invoke-static {p1, p2}, Lmiui/core/ManifestParser;->createFromPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lmiui/core/ManifestParser;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiui/core/ManifestParser;->parse(Ljava/util/Map;)Lmiui/core/Manifest;

    move-result-object p0

    return-object p0
.end method

.method private isCompatible(Lmiui/module/Dependency$Level;I)Z
    .locals 2

    invoke-virtual {p1}, Lmiui/module/Dependency$Level;->getMinLevel()I

    move-result p0

    if-gt p0, p2, :cond_0

    invoke-virtual {p1}, Lmiui/module/Dependency$Level;->getMaxLevel()I

    move-result p0

    if-gt p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " but needs ["

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmiui/module/Dependency$Level;->getMinLevel()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmiui/module/Dependency$Level;->getMaxLevel()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "miuisdk"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p0
.end method

.method private parseManifest(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lmiui/core/Manifest;
    .locals 1

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    invoke-static {p0}, Lcom/miui/internal/util/ResourcesUtils;->createResources([Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lmiui/core/ManifestParser;->createFromResources(Landroid/content/res/Resources;Ljava/lang/String;Landroid/os/Bundle;)Lmiui/core/ManifestParser;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiui/core/ManifestParser;->parse(Ljava/util/Map;)Lmiui/core/Manifest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getLevel()I
    .locals 0

    iget-object p0, p0, Lmiui/core/CompatibleManager;->mManifest:Lmiui/core/Manifest;

    invoke-virtual {p0}, Lmiui/core/Manifest;->getModule()Lmiui/module/Module;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/module/Module;->getLevel()I

    move-result p0

    return p0
.end method

.method public isCompatible()Z
    .locals 8

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

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lmiui/core/CompatibleManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not compatible with sdk"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lmiui/core/CompatibleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    const-string p0, "package manager is not ready yet"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    iget-object v4, p0, Lmiui/core/CompatibleManager;->mManifest:Lmiui/core/Manifest;

    invoke-virtual {v4}, Lmiui/core/Manifest;->getDependencies()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lmiui/core/CompatibleManager;->mManifest:Lmiui/core/Manifest;

    invoke-virtual {v6, v5}, Lmiui/core/Manifest;->getDependency(Ljava/lang/String;)Lmiui/module/Dependency;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/module/Dependency;->getType()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, v0, v5}, Lmiui/core/CompatibleManager;->getManifest(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lmiui/core/Manifest;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Lmiui/module/Dependency;->getLevel()Lmiui/module/Dependency$Level;

    move-result-object v6

    invoke-virtual {v7}, Lmiui/core/Manifest;->getModule()Lmiui/module/Module;

    move-result-object v7

    invoke-virtual {v7}, Lmiui/module/Module;->getLevel()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lmiui/core/CompatibleManager;->isCompatible(Lmiui/module/Dependency$Level;I)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lmiui/core/CompatibleManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not compatible with module "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    return v3
.end method

.method public isCurrent()Z
    .locals 1

    iget-object p0, p0, Lmiui/core/CompatibleManager;->mManifest:Lmiui/core/Manifest;

    invoke-virtual {p0}, Lmiui/core/Manifest;->getSdkDependency()Lmiui/module/Dependency;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/module/Dependency;->getLevel()Lmiui/module/Dependency$Level;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/module/Dependency$Level;->getTargetLevel()I

    move-result p0

    sget v0, Lcom/miui/internal/util/PackageConstants;->CURRENT_SDK_LEVEL:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
