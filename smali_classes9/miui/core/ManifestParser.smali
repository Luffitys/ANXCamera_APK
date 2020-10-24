.class public Lmiui/core/ManifestParser;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ELEMENT_DEPENDENCIES:Ljava/lang/String; = "dependencies"

.field private static final ELEMENT_DEPENDENCY:Ljava/lang/String; = "dependency"

.field private static final ELEMENT_MANIFEST:Ljava/lang/String; = "manifest"

.field private static final ELEMENT_MODULE:Ljava/lang/String; = "module"

.field private static final ELEMENT_MODULES:Ljava/lang/String; = "modules"

.field private static final ELEMENT_USES_SDK:Ljava/lang/String; = "uses-sdk"

.field private static final MANIFEST_FILE_NAME:Ljava/lang/String; = "miui_manifest"

.field private static final META_DATA_KEY:Ljava/lang/String; = "com.miui.sdk.manifest"

.field private static final PACKAGE_RESOURCE_MAP:Ljava/util/Map;


# instance fields
.field private mParser:Landroid/content/res/XmlResourceParser;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lmiui/core/ManifestParser;->PACKAGE_RESOURCE_MAP:Ljava/util/Map;

    const-string v1, "com.miui.core"

    const-string v2, "miui"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/core/ManifestParser;->PACKAGE_RESOURCE_MAP:Ljava/util/Map;

    const-string v1, "com.miui.system"

    const-string v2, "miui.system"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/core/ManifestParser;->PACKAGE_RESOURCE_MAP:Ljava/util/Map;

    const-string v1, "com.miui.rom"

    const-string v2, "android.miui"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/core/ManifestParser;->mResources:Landroid/content/res/Resources;

    iput-object p2, p0, Lmiui/core/ManifestParser;->mParser:Landroid/content/res/XmlResourceParser;

    return-void
.end method

.method private buildCompleteManifest(Lmiui/core/Manifest;)Lmiui/core/Manifest;
    .locals 2

    invoke-virtual {p1}, Lmiui/core/Manifest;->getModule()Lmiui/module/Module;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lmiui/module/Module;

    invoke-direct {v0}, Lmiui/module/Module;-><init>()V

    invoke-virtual {p1, v0}, Lmiui/core/Manifest;->setModule(Lmiui/module/Module;)V

    :cond_0
    invoke-virtual {p1}, Lmiui/core/Manifest;->getSdkDependency()Lmiui/module/Dependency;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lmiui/module/Dependency$Level;

    invoke-direct {v0}, Lmiui/module/Dependency$Level;-><init>()V

    invoke-direct {p0, v0}, Lmiui/core/ManifestParser;->getDefaultMinLevel(Lmiui/module/Dependency$Level;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/module/Dependency$Level;->setMinLevel(I)V

    invoke-direct {p0, v0}, Lmiui/core/ManifestParser;->getDefaultTargetLevel(Lmiui/module/Dependency$Level;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/module/Dependency$Level;->setTargetLevel(I)V

    invoke-direct {p0, v0}, Lmiui/core/ManifestParser;->getDefaultMaxLevel(Lmiui/module/Dependency$Level;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/module/Dependency$Level;->setMaxLevel(I)V

    invoke-direct {p0, v0}, Lmiui/core/ManifestParser;->buildCompleteSdkDependency(Lmiui/module/Dependency$Level;)Lmiui/module/Dependency;

    move-result-object p0

    invoke-virtual {p1, p0}, Lmiui/core/Manifest;->setSdkDependency(Lmiui/module/Dependency;)V

    :cond_1
    return-object p1
.end method

.method private buildCompleteSdkDependency(Lmiui/module/Dependency$Level;)Lmiui/module/Dependency;
    .locals 1

    new-instance p0, Lmiui/module/Dependency;

    invoke-direct {p0}, Lmiui/module/Dependency;-><init>()V

    const-string v0, "com.miui.core"

    invoke-virtual {p0, v0}, Lmiui/module/Dependency;->setName(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lmiui/module/Dependency;->setType(I)V

    invoke-virtual {p0, p1}, Lmiui/module/Dependency;->setLevel(Lmiui/module/Dependency$Level;)V

    return-object p0
.end method

.method public static create(Landroid/content/Context;)Lmiui/core/ManifestParser;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lmiui/core/ManifestParser;->createFromResources(Landroid/content/res/Resources;Ljava/lang/String;Landroid/os/Bundle;)Lmiui/core/ManifestParser;

    move-result-object p0

    return-object p0
.end method

.method public static createFromArchive(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lmiui/core/ManifestParser;
    .locals 2

    const/16 v0, 0x80

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/miui/internal/util/ResourcesUtils;->createResources([Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v0, p0}, Lmiui/core/ManifestParser;->createFromResources(Landroid/content/res/Resources;Ljava/lang/String;Landroid/os/Bundle;)Lmiui/core/ManifestParser;

    move-result-object p0

    return-object p0
.end method

.method public static createFromPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lmiui/core/ManifestParser;
    .locals 3

    const/16 v0, 0x80

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/miui/internal/util/ResourcesUtils;->createResources([Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-static {v0, p1, p0}, Lmiui/core/ManifestParser;->createFromResources(Landroid/content/res/Resources;Ljava/lang/String;Landroid/os/Bundle;)Lmiui/core/ManifestParser;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot find package "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "miuisdk"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    invoke-static {p0, p0}, Lmiui/core/ManifestParser;->createFromXmlParser(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lmiui/core/ManifestParser;

    move-result-object p0

    return-object p0
.end method

.method public static createFromResId(Landroid/content/Context;I)Lmiui/core/ManifestParser;
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    :goto_0
    invoke-static {p0, p1}, Lmiui/core/ManifestParser;->createFromXmlParser(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lmiui/core/ManifestParser;

    move-result-object p0

    return-object p0
.end method

.method public static createFromResources(Landroid/content/res/Resources;Ljava/lang/String;Landroid/os/Bundle;)Lmiui/core/ManifestParser;
    .locals 1

    if-eqz p2, :cond_0

    const-string v0, "com.miui.sdk.manifest"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_2

    sget-object p2, Lmiui/core/ManifestParser;->PACKAGE_RESOURCE_MAP:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, p2

    :goto_1
    const-string p2, "miui_manifest"

    const-string v0, "xml"

    invoke-virtual {p0, p2, v0, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    :cond_2
    if-nez p2, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    :goto_2
    invoke-static {p0, p1}, Lmiui/core/ManifestParser;->createFromXmlParser(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lmiui/core/ManifestParser;

    move-result-object p0

    return-object p0
.end method

.method public static createFromXmlParser(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lmiui/core/ManifestParser;
    .locals 1

    new-instance v0, Lmiui/core/ManifestParser;

    invoke-direct {v0, p0, p1}, Lmiui/core/ManifestParser;-><init>(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method private getDefaultMaxLevel(Lmiui/module/Dependency$Level;)I
    .locals 0

    const p0, 0x7fffffff

    return p0
.end method

.method private getDefaultMinLevel(Lmiui/module/Dependency$Level;)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private getDefaultTargetLevel(Lmiui/module/Dependency$Level;)I
    .locals 0

    invoke-virtual {p1}, Lmiui/module/Dependency$Level;->getMinLevel()I

    move-result p0

    return p0
.end method

.method private parseDependenciesElement(Lmiui/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .locals 4

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    :cond_0
    :goto_0
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_3

    :cond_1
    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dependency"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lmiui/core/ManifestParser;->parseDependencyElement(Lmiui/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private parseDependencyElement(Lmiui/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .locals 4

    sget-object v0, Lmiui/R$styleable;->MiuiManifestModule:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lmiui/R$styleable;->MiuiManifestModule_name:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lmiui/module/Dependency;

    invoke-direct {v0}, Lmiui/module/Dependency;-><init>()V

    invoke-virtual {v0, p3}, Lmiui/module/Dependency;->setName(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmiui/module/Dependency;->setType(I)V

    new-instance v1, Lmiui/module/Dependency$Level;

    invoke-direct {v1}, Lmiui/module/Dependency$Level;-><init>()V

    sget v2, Lmiui/R$styleable;->MiuiManifestModule_minLevel:I

    invoke-direct {p0, v1}, Lmiui/core/ManifestParser;->getDefaultMinLevel(Lmiui/module/Dependency$Level;)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/module/Dependency$Level;->setMinLevel(I)V

    sget v2, Lmiui/R$styleable;->MiuiManifestModule_targetLevel:I

    invoke-direct {p0, v1}, Lmiui/core/ManifestParser;->getDefaultTargetLevel(Lmiui/module/Dependency$Level;)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/module/Dependency$Level;->setTargetLevel(I)V

    sget v2, Lmiui/R$styleable;->MiuiManifestModule_maxLevel:I

    invoke-direct {p0, v1}, Lmiui/core/ManifestParser;->getDefaultMaxLevel(Lmiui/module/Dependency$Level;)I

    move-result p0

    invoke-virtual {p2, v2, p0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p0

    invoke-virtual {v1, p0}, Lmiui/module/Dependency$Level;->setMaxLevel(I)V

    invoke-virtual {v0, v1}, Lmiui/module/Dependency;->setLevel(Lmiui/module/Dependency$Level;)V

    invoke-virtual {p1, p3, v0}, Lmiui/core/Manifest;->addDependency(Ljava/lang/String;Lmiui/module/Dependency;)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private parseManifestElement(Lmiui/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .locals 4

    sget-object v0, Lmiui/R$styleable;->MiuiManifest:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    new-instance v1, Lmiui/module/Module;

    invoke-direct {v1}, Lmiui/module/Module;-><init>()V

    sget v2, Lmiui/R$styleable;->MiuiManifest_name:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/module/Module;->setName(Ljava/lang/String;)V

    sget v2, Lmiui/R$styleable;->MiuiManifest_level:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/module/Module;->setLevel(I)V

    sget v2, Lmiui/R$styleable;->MiuiManifest_moduleContent:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/module/Module;->setContent(I)V

    invoke-virtual {p1, v1}, Lmiui/core/Manifest;->setModule(Lmiui/module/Module;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    :cond_0
    :goto_0
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_5

    :cond_1
    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uses-sdk"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lmiui/core/ManifestParser;->parseUsesSdkElement(Lmiui/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    goto :goto_0

    :cond_3
    const-string v2, "modules"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, p1, p2, p3}, Lmiui/core/ManifestParser;->parseModulesElement(Lmiui/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    goto :goto_0

    :cond_4
    const-string v2, "dependencies"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lmiui/core/ManifestParser;->parseDependenciesElement(Lmiui/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private parseModuleElement(Lmiui/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .locals 4

    sget-object v0, Lmiui/R$styleable;->MiuiManifestModule:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lmiui/R$styleable;->MiuiManifestModule_name:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lmiui/module/Dependency;

    invoke-direct {v0}, Lmiui/module/Dependency;-><init>()V

    invoke-virtual {v0, p3}, Lmiui/module/Dependency;->setName(Ljava/lang/String;)V

    sget v1, Lmiui/R$styleable;->MiuiManifestModule_dependencyType:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/module/Dependency;->setType(I)V

    new-instance v1, Lmiui/module/Dependency$Level;

    invoke-direct {v1}, Lmiui/module/Dependency$Level;-><init>()V

    sget v2, Lmiui/R$styleable;->MiuiManifestModule_minLevel:I

    invoke-direct {p0, v1}, Lmiui/core/ManifestParser;->getDefaultMinLevel(Lmiui/module/Dependency$Level;)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/module/Dependency$Level;->setMinLevel(I)V

    sget v2, Lmiui/R$styleable;->MiuiManifestModule_targetLevel:I

    invoke-direct {p0, v1}, Lmiui/core/ManifestParser;->getDefaultTargetLevel(Lmiui/module/Dependency$Level;)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/module/Dependency$Level;->setTargetLevel(I)V

    sget v2, Lmiui/R$styleable;->MiuiManifestModule_maxLevel:I

    invoke-direct {p0, v1}, Lmiui/core/ManifestParser;->getDefaultMaxLevel(Lmiui/module/Dependency$Level;)I

    move-result p0

    invoke-virtual {p2, v2, p0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p0

    invoke-virtual {v1, p0}, Lmiui/module/Dependency$Level;->setMaxLevel(I)V

    invoke-virtual {v0, v1}, Lmiui/module/Dependency;->setLevel(Lmiui/module/Dependency$Level;)V

    invoke-virtual {p1, p3, v0}, Lmiui/core/Manifest;->addDependency(Ljava/lang/String;Lmiui/module/Dependency;)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private parseModulesElement(Lmiui/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .locals 4

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    :cond_0
    :goto_0
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_3

    :cond_1
    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "module"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lmiui/core/ManifestParser;->parseModuleElement(Lmiui/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private parseUsesSdkElement(Lmiui/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .locals 2

    sget-object v0, Lmiui/R$styleable;->MiuiManifestUsesSdk:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    new-instance p3, Lmiui/module/Dependency$Level;

    invoke-direct {p3}, Lmiui/module/Dependency$Level;-><init>()V

    sget v0, Lmiui/R$styleable;->MiuiManifestUsesSdk_minLevel:I

    invoke-direct {p0, p3}, Lmiui/core/ManifestParser;->getDefaultMinLevel(Lmiui/module/Dependency$Level;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-virtual {p3, v0}, Lmiui/module/Dependency$Level;->setMinLevel(I)V

    sget v0, Lmiui/R$styleable;->MiuiManifestUsesSdk_targetLevel:I

    invoke-direct {p0, p3}, Lmiui/core/ManifestParser;->getDefaultTargetLevel(Lmiui/module/Dependency$Level;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-virtual {p3, v0}, Lmiui/module/Dependency$Level;->setTargetLevel(I)V

    sget v0, Lmiui/R$styleable;->MiuiManifestUsesSdk_maxLevel:I

    invoke-direct {p0, p3}, Lmiui/core/ManifestParser;->getDefaultMaxLevel(Lmiui/module/Dependency$Level;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-virtual {p3, v0}, Lmiui/module/Dependency$Level;->setMaxLevel(I)V

    invoke-direct {p0, p3}, Lmiui/core/ManifestParser;->buildCompleteSdkDependency(Lmiui/module/Dependency$Level;)Lmiui/module/Dependency;

    move-result-object p0

    invoke-virtual {p1, p0}, Lmiui/core/Manifest;->setSdkDependency(Lmiui/module/Dependency;)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/util/Map;)Lmiui/core/Manifest;
    .locals 4

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_0
    new-instance p1, Lmiui/core/Manifest;

    invoke-direct {p1}, Lmiui/core/Manifest;-><init>()V

    iget-object v0, p0, Lmiui/core/ManifestParser;->mParser:Landroid/content/res/XmlResourceParser;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v1, p0, Lmiui/core/ManifestParser;->mResources:Landroid/content/res/Resources;

    :goto_0
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "manifest"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, v1, v0}, Lmiui/core/ManifestParser;->parseManifestElement(Lmiui/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lmiui/core/ManifestParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_3

    :goto_2
    iget-object p0, p0, Lmiui/core/ManifestParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V

    throw p1

    :cond_3
    :goto_3
    invoke-direct {p0, p1}, Lmiui/core/ManifestParser;->buildCompleteManifest(Lmiui/core/Manifest;)Lmiui/core/Manifest;

    move-result-object p0

    return-object p0
.end method
