.class public Lmiui/core/ManifestParser;
.super Ljava/lang/Object;
.source "ManifestParser.java"


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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mParser:Landroid/content/res/XmlResourceParser;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .registers 3

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
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/core/ManifestParser;->mResources:Landroid/content/res/Resources;

    iput-object p2, p0, Lmiui/core/ManifestParser;->mParser:Landroid/content/res/XmlResourceParser;

    return-void
.end method

.method private buildCompleteManifest(Lmiui/core/Manifest;)Lmiui/core/Manifest;
    .registers 4

    invoke-virtual {p1}, Lmiui/core/Manifest;->getModule()Lmiui/module/Module;

    move-result-object v0

    if-nez v0, :cond_e

    new-instance v0, Lmiui/module/Module;

    invoke-direct {v0}, Lmiui/module/Module;-><init>()V

    invoke-virtual {p1, v0}, Lmiui/core/Manifest;->setModule(Lmiui/module/Module;)V

    :cond_e
    invoke-virtual {p1}, Lmiui/core/Manifest;->getSdkDependency()Lmiui/module/Dependency;

    move-result-object v0

    if-nez v0, :cond_35

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

    move-result-object v1

    invoke-virtual {p1, v1}, Lmiui/core/Manifest;->setSdkDependency(Lmiui/module/Dependency;)V

    :cond_35
    return-object p1
.end method

.method private buildCompleteSdkDependency(Lmiui/module/Dependency$Level;)Lmiui/module/Dependency;
    .registers 4

    new-instance v0, Lmiui/module/Dependency;

    invoke-direct {v0}, Lmiui/module/Dependency;-><init>()V

    const-string v1, "com.miui.core"

    invoke-virtual {v0, v1}, Lmiui/module/Dependency;->setName(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmiui/module/Dependency;->setType(I)V

    invoke-virtual {v0, p1}, Lmiui/module/Dependency;->setLevel(Lmiui/module/Dependency$Level;)V

    return-object v0
.end method

.method public static create(Landroid/content/Context;)Lmiui/core/ManifestParser;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_11} :catch_13

    move-object v0, v1

    goto :goto_17

    :catch_13
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lmiui/core/ManifestParser;->createFromResources(Landroid/content/res/Resources;Ljava/lang/String;Landroid/os/Bundle;)Lmiui/core/ManifestParser;

    move-result-object v1

    return-object v1
.end method

.method public static createFromArchive(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lmiui/core/ManifestParser;
    .registers 6

    const/16 v0, 0x80

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/miui/internal/util/ResourcesUtils;->createResources([Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-static {v1, v2, v3}, Lmiui/core/ManifestParser;->createFromResources(Landroid/content/res/Resources;Ljava/lang/String;Landroid/os/Bundle;)Lmiui/core/ManifestParser;

    move-result-object v2

    return-object v2
.end method

.method public static createFromPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lmiui/core/ManifestParser;
    .registers 6

    const/16 v0, 0x80

    :try_start_2
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/miui/internal/util/ResourcesUtils;->createResources([Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-static {v1, p1, v2}, Lmiui/core/ManifestParser;->createFromResources(Landroid/content/res/Resources;Ljava/lang/String;Landroid/os/Bundle;)Lmiui/core/ManifestParser;

    move-result-object v2
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_18} :catch_19

    return-object v2

    :catch_19
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot find package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "miuisdk"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lmiui/core/ManifestParser;->createFromXmlParser(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lmiui/core/ManifestParser;

    move-result-object v1

    return-object v1
.end method

.method public static createFromResId(Landroid/content/Context;I)Lmiui/core/ManifestParser;
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez p1, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    :goto_c
    invoke-static {v0, v1}, Lmiui/core/ManifestParser;->createFromXmlParser(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lmiui/core/ManifestParser;

    move-result-object v2

    return-object v2
.end method

.method public static createFromResources(Landroid/content/res/Resources;Ljava/lang/String;Landroid/os/Bundle;)Lmiui/core/ManifestParser;
    .registers 7

    const/4 v0, 0x0

    if-eqz p2, :cond_9

    const-string v1, "com.miui.sdk.manifest"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_9
    if-nez v0, :cond_1e

    sget-object v1, Lmiui/core/ManifestParser;->PACKAGE_RESOURCE_MAP:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_16

    move-object v1, p1

    :cond_16
    const-string v2, "miui_manifest"

    const-string v3, "xml"

    invoke-virtual {p0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_1e
    if-nez v0, :cond_22

    const/4 v1, 0x0

    goto :goto_26

    :cond_22
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    :goto_26
    invoke-static {p0, v1}, Lmiui/core/ManifestParser;->createFromXmlParser(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lmiui/core/ManifestParser;

    move-result-object v2

    return-object v2
.end method

.method public static createFromXmlParser(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lmiui/core/ManifestParser;
    .registers 3

    new-instance v0, Lmiui/core/ManifestParser;

    invoke-direct {v0, p0, p1}, Lmiui/core/ManifestParser;-><init>(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method private getDefaultMaxLevel(Lmiui/module/Dependency$Level;)I
    .registers 3

    const v0, 0x7fffffff

    return v0
.end method

.method private getDefaultMinLevel(Lmiui/module/Dependency$Level;)I
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method private getDefaultTargetLevel(Lmiui/module/Dependency$Level;)I
    .registers 3

    invoke-virtual {p1}, Lmiui/module/Dependency$Level;->getMinLevel()I

    move-result v0

    return v0
.end method

.method private parseDependenciesElement(Lmiui/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    :cond_5
    :goto_5
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    move v0, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2c

    const/4 v2, 0x3

    if-ne v0, v2, :cond_16

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v1, :cond_2c

    :cond_16
    if-eq v0, v2, :cond_5

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1c

    goto :goto_5

    :cond_1c
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dependency"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-direct {p0, p1, p2, p3}, Lmiui/core/ManifestParser;->parseDependencyElement(Lmiui/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    :cond_2b
    goto :goto_5

    :cond_2c
    return-void
.end method

.method private parseDependencyElement(Lmiui/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lmiui/R$styleable;->MiuiManifestModule:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lmiui/R$styleable;->MiuiManifestModule_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmiui/module/Dependency;

    invoke-direct {v2}, Lmiui/module/Dependency;-><init>()V

    invoke-virtual {v2, v1}, Lmiui/module/Dependency;->setName(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lmiui/module/Dependency;->setType(I)V

    new-instance v3, Lmiui/module/Dependency$Level;

    invoke-direct {v3}, Lmiui/module/Dependency$Level;-><init>()V

    sget v4, Lmiui/R$styleable;->MiuiManifestModule_minLevel:I

    invoke-direct {p0, v3}, Lmiui/core/ManifestParser;->getDefaultMinLevel(Lmiui/module/Dependency$Level;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lmiui/module/Dependency$Level;->setMinLevel(I)V

    sget v4, Lmiui/R$styleable;->MiuiManifestModule_targetLevel:I

    invoke-direct {p0, v3}, Lmiui/core/ManifestParser;->getDefaultTargetLevel(Lmiui/module/Dependency$Level;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lmiui/module/Dependency$Level;->setTargetLevel(I)V

    sget v4, Lmiui/R$styleable;->MiuiManifestModule_maxLevel:I

    invoke-direct {p0, v3}, Lmiui/core/ManifestParser;->getDefaultMaxLevel(Lmiui/module/Dependency$Level;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lmiui/module/Dependency$Level;->setMaxLevel(I)V

    invoke-virtual {v2, v3}, Lmiui/module/Dependency;->setLevel(Lmiui/module/Dependency$Level;)V

    invoke-virtual {p1, v1, v2}, Lmiui/core/Manifest;->addDependency(Ljava/lang/String;Lmiui/module/Dependency;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private parseManifestElement(Lmiui/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

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

    const/4 v2, 0x0

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    :cond_32
    :goto_32
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    move v2, v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_71

    const/4 v4, 0x3

    if-ne v2, v4, :cond_43

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v3, :cond_71

    :cond_43
    if-eq v2, v4, :cond_32

    const/4 v4, 0x4

    if-ne v2, v4, :cond_49

    goto :goto_32

    :cond_49
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "uses-sdk"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59

    invoke-direct {p0, p1, p2, p3}, Lmiui/core/ManifestParser;->parseUsesSdkElement(Lmiui/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    goto :goto_70

    :cond_59
    const-string v5, "modules"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_65

    invoke-direct {p0, p1, p2, p3}, Lmiui/core/ManifestParser;->parseModulesElement(Lmiui/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    goto :goto_70

    :cond_65
    const-string v5, "dependencies"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_70

    invoke-direct {p0, p1, p2, p3}, Lmiui/core/ManifestParser;->parseDependenciesElement(Lmiui/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    :cond_70
    :goto_70
    goto :goto_32

    :cond_71
    return-void
.end method

.method private parseModuleElement(Lmiui/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lmiui/R$styleable;->MiuiManifestModule:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lmiui/R$styleable;->MiuiManifestModule_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmiui/module/Dependency;

    invoke-direct {v2}, Lmiui/module/Dependency;-><init>()V

    invoke-virtual {v2, v1}, Lmiui/module/Dependency;->setName(Ljava/lang/String;)V

    sget v3, Lmiui/R$styleable;->MiuiManifestModule_dependencyType:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lmiui/module/Dependency;->setType(I)V

    new-instance v3, Lmiui/module/Dependency$Level;

    invoke-direct {v3}, Lmiui/module/Dependency$Level;-><init>()V

    sget v4, Lmiui/R$styleable;->MiuiManifestModule_minLevel:I

    invoke-direct {p0, v3}, Lmiui/core/ManifestParser;->getDefaultMinLevel(Lmiui/module/Dependency$Level;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lmiui/module/Dependency$Level;->setMinLevel(I)V

    sget v4, Lmiui/R$styleable;->MiuiManifestModule_targetLevel:I

    invoke-direct {p0, v3}, Lmiui/core/ManifestParser;->getDefaultTargetLevel(Lmiui/module/Dependency$Level;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lmiui/module/Dependency$Level;->setTargetLevel(I)V

    sget v4, Lmiui/R$styleable;->MiuiManifestModule_maxLevel:I

    invoke-direct {p0, v3}, Lmiui/core/ManifestParser;->getDefaultMaxLevel(Lmiui/module/Dependency$Level;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lmiui/module/Dependency$Level;->setMaxLevel(I)V

    invoke-virtual {v2, v3}, Lmiui/module/Dependency;->setLevel(Lmiui/module/Dependency$Level;)V

    invoke-virtual {p1, v1, v2}, Lmiui/core/Manifest;->addDependency(Ljava/lang/String;Lmiui/module/Dependency;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private parseModulesElement(Lmiui/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    :cond_5
    :goto_5
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    move v0, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2c

    const/4 v2, 0x3

    if-ne v0, v2, :cond_16

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v1, :cond_2c

    :cond_16
    if-eq v0, v2, :cond_5

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1c

    goto :goto_5

    :cond_1c
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "module"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-direct {p0, p1, p2, p3}, Lmiui/core/ManifestParser;->parseModuleElement(Lmiui/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    :cond_2b
    goto :goto_5

    :cond_2c
    return-void
.end method

.method private parseUsesSdkElement(Lmiui/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .registers 8

    sget-object v0, Lmiui/R$styleable;->MiuiManifestUsesSdk:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    new-instance v1, Lmiui/module/Dependency$Level;

    invoke-direct {v1}, Lmiui/module/Dependency$Level;-><init>()V

    sget v2, Lmiui/R$styleable;->MiuiManifestUsesSdk_minLevel:I

    invoke-direct {p0, v1}, Lmiui/core/ManifestParser;->getDefaultMinLevel(Lmiui/module/Dependency$Level;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/module/Dependency$Level;->setMinLevel(I)V

    sget v2, Lmiui/R$styleable;->MiuiManifestUsesSdk_targetLevel:I

    invoke-direct {p0, v1}, Lmiui/core/ManifestParser;->getDefaultTargetLevel(Lmiui/module/Dependency$Level;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/module/Dependency$Level;->setTargetLevel(I)V

    sget v2, Lmiui/R$styleable;->MiuiManifestUsesSdk_maxLevel:I

    invoke-direct {p0, v1}, Lmiui/core/ManifestParser;->getDefaultMaxLevel(Lmiui/module/Dependency$Level;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/module/Dependency$Level;->setMaxLevel(I)V

    invoke-direct {p0, v1}, Lmiui/core/ManifestParser;->buildCompleteSdkDependency(Lmiui/module/Dependency$Level;)Lmiui/module/Dependency;

    move-result-object v2

    invoke-virtual {p1, v2}, Lmiui/core/Manifest;->setSdkDependency(Lmiui/module/Dependency;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/util/Map;)Lmiui/core/Manifest;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lmiui/core/Manifest;"
        }
    .end annotation

    if-nez p1, :cond_8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object p1, v0

    :cond_8
    new-instance v0, Lmiui/core/Manifest;

    invoke-direct {v0}, Lmiui/core/Manifest;-><init>()V

    iget-object v1, p0, Lmiui/core/ManifestParser;->mParser:Landroid/content/res/XmlResourceParser;

    if-eqz v1, :cond_48

    :try_start_11
    iget-object v2, p0, Lmiui/core/ManifestParser;->mResources:Landroid/content/res/Resources;

    nop

    const/4 v3, 0x0

    :goto_15
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    move v3, v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_21

    const/4 v4, 0x1

    if-eq v3, v4, :cond_21

    goto :goto_15

    :cond_21
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "manifest"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-direct {p0, v0, v2, v1}, Lmiui/core/ManifestParser;->parseManifestElement(Lmiui/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    :try_end_30
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_30} :catch_38
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_30} :catch_33
    .catchall {:try_start_11 .. :try_end_30} :catchall_31

    goto :goto_3c

    :catchall_31
    move-exception v1

    goto :goto_42

    :catch_33
    move-exception v1

    :try_start_34
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3c

    :catch_38
    move-exception v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_31

    :cond_3c
    :goto_3c
    iget-object v1, p0, Lmiui/core/ManifestParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_48

    :goto_42
    iget-object v2, p0, Lmiui/core/ManifestParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    throw v1

    :cond_48
    :goto_48
    invoke-direct {p0, v0}, Lmiui/core/ManifestParser;->buildCompleteManifest(Lmiui/core/Manifest;)Lmiui/core/Manifest;

    move-result-object v1

    return-object v1
.end method
