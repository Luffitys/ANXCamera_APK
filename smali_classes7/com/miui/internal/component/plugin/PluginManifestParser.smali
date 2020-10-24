.class public Lcom/miui/internal/component/plugin/PluginManifestParser;
.super Ljava/lang/Object;
.source ""


# static fields
.field protected static final ATTR_GROUP:Ljava/lang/String; = "group"

.field protected static final ATTR_LEVEL:Ljava/lang/String; = "level"

.field protected static final ATTR_LOCATION:Ljava/lang/String; = "location"

.field protected static final ATTR_MIN_CAPATIBLE_LEVEL:Ljava/lang/String; = "minCapatibleLevel"

.field protected static final ATTR_MIN_LEVEL:Ljava/lang/String; = "minLevel"

.field protected static final ATTR_NAME:Ljava/lang/String; = "name"

.field protected static final ATTR_OPTIONAL:Ljava/lang/String; = "optional"

.field protected static final ATTR_RESOURCES:Ljava/lang/String; = "resources"

.field protected static final ATTR_TARGET_LEVEL:Ljava/lang/String; = "targetLevel"

.field protected static final ATTR_VERSION_CODE:Ljava/lang/String; = "versionCode"

.field protected static final ATTR_VERSION_NAME:Ljava/lang/String; = "versionName"

.field protected static final ATTR_VISIBILITY:Ljava/lang/String; = "visibility"

.field protected static final ELEMENT_ACTIVITY_EXTENSION:Ljava/lang/String; = "activity-extension"

.field protected static final ELEMENT_ACTIVITY_OUTLET:Ljava/lang/String; = "activity-outlet"

.field protected static final ELEMENT_DEPENDENCIES:Ljava/lang/String; = "dependencies"

.field protected static final ELEMENT_DEPENDENCY:Ljava/lang/String; = "dependency"

.field protected static final ELEMENT_EXTENSIONS:Ljava/lang/String; = "extensions"

.field protected static final ELEMENT_FUNCTION_EXTENSION:Ljava/lang/String; = "function-extension"

.field protected static final ELEMENT_FUNCTION_OUTLET:Ljava/lang/String; = "function-outlet"

.field protected static final ELEMENT_OUTLETS:Ljava/lang/String; = "outlets"

.field protected static final ELEMENT_PLUGIN:Ljava/lang/String; = "plugin"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;I)I
    .locals 0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/internal/component/plugin/AccessPermission;)Lcom/miui/internal/component/plugin/AccessPermission;
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/internal/component/plugin/AccessPermission;->valueOf(Ljava/lang/String;)Lcom/miui/internal/component/plugin/AccessPermission;

    move-result-object p0

    return-object p0
.end method

.method private getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/internal/component/plugin/Demand;)Lcom/miui/internal/component/plugin/Demand;
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/internal/component/plugin/Demand;->valueOf(Ljava/lang/String;)Lcom/miui/internal/component/plugin/Demand;

    move-result-object p0

    return-object p0
.end method

.method private getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p4, p0

    goto :goto_1

    :cond_1
    :goto_0
    if-nez p3, :cond_2

    :goto_1
    return-object p4

    :cond_2
    new-instance p0, Lcom/miui/internal/component/plugin/PluginParseException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "missing attribute "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " in element "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/internal/component/plugin/PluginParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Z
    .locals 0

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private handleDependenciesElement(Lorg/w3c/dom/Element;Lcom/miui/internal/component/plugin/Plugin;)V
    .locals 7

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "dependency"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/miui/internal/component/plugin/Dependency;

    invoke-direct {v3}, Lcom/miui/internal/component/plugin/Dependency;-><init>()V

    const-string v5, "name"

    invoke-direct {p0, v2, v5}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/miui/internal/component/plugin/Dependency;->setName(Ljava/lang/String;)V

    sget-object v5, Lcom/miui/internal/component/plugin/Demand;->PROHIBITED:Lcom/miui/internal/component/plugin/Demand;

    const-string v6, "resources"

    invoke-direct {p0, v2, v6, v5}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/internal/component/plugin/Demand;)Lcom/miui/internal/component/plugin/Demand;

    move-result-object v5

    sget-object v6, Lcom/miui/internal/component/plugin/Demand;->REQUIRED:Lcom/miui/internal/component/plugin/Demand;

    if-ne v5, v6, :cond_0

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    invoke-virtual {v3, v4}, Lcom/miui/internal/component/plugin/Dependency;->setResourcesRequired(Z)V

    const-string v4, "optional"

    invoke-direct {p0, v2, v4, v0}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/miui/internal/component/plugin/Dependency;->setOptional(Z)V

    const-string v4, "minLevel"

    invoke-direct {p0, v2, v4, v0}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/miui/internal/component/plugin/Dependency;->setMinLevel(I)V

    const-string v4, "targetLevel"

    invoke-direct {p0, v2, v4, v0}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/miui/internal/component/plugin/Dependency;->setTargetLevel(I)V

    invoke-virtual {p2, v3}, Lcom/miui/internal/component/plugin/Plugin;->addDependency(Lcom/miui/internal/component/plugin/Dependency;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private handleExtensionsElement(Lorg/w3c/dom/Element;Lcom/miui/internal/component/plugin/Plugin;)V
    .locals 4

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "activity-extension"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "function-extension"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Lcom/miui/internal/component/plugin/Extension;

    invoke-direct {v2}, Lcom/miui/internal/component/plugin/Extension;-><init>()V

    const-string v3, "name"

    invoke-direct {p0, v1, v3}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/internal/component/plugin/Extension;->setName(Ljava/lang/String;)V

    const-string v3, "location"

    invoke-direct {p0, v1, v3}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/miui/internal/component/plugin/Extension;->setLocation(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lcom/miui/internal/component/plugin/Plugin;->addExtension(Lcom/miui/internal/component/plugin/Extension;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private handleOutletsElement(Lorg/w3c/dom/Element;Lcom/miui/internal/component/plugin/Plugin;)V
    .locals 5

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "activity-outlet"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "function-outlet"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    new-instance v3, Lcom/miui/internal/component/plugin/Outlet;

    invoke-direct {v3}, Lcom/miui/internal/component/plugin/Outlet;-><init>()V

    const-string v4, "name"

    invoke-direct {p0, v2, v4}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/miui/internal/component/plugin/Outlet;->setName(Ljava/lang/String;)V

    sget-object v2, Lcom/miui/internal/component/plugin/AccessPermission;->PUBLIC:Lcom/miui/internal/component/plugin/AccessPermission;

    const-string v4, "visibility"

    invoke-direct {p0, p1, v4, v2}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/internal/component/plugin/AccessPermission;)Lcom/miui/internal/component/plugin/AccessPermission;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/miui/internal/component/plugin/Outlet;->setVisibility(Lcom/miui/internal/component/plugin/AccessPermission;)V

    invoke-virtual {p2, v3}, Lcom/miui/internal/component/plugin/Plugin;->addOutlet(Lcom/miui/internal/component/plugin/Outlet;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private handlePluginElement(Lorg/w3c/dom/Element;Lcom/miui/internal/component/plugin/Plugin;)V
    .locals 4

    const-string v0, "name"

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/internal/component/plugin/Plugin;->setName(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/miui/internal/component/plugin/Plugin;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "group"

    invoke-direct {p0, p1, v1, v0}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/internal/component/plugin/Plugin;->setGroup(Ljava/lang/String;)V

    const-string v0, "versionCode"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/miui/internal/component/plugin/Plugin;->setVersionCode(I)V

    invoke-virtual {p2}, Lcom/miui/internal/component/plugin/Plugin;->getVersionCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "versionName"

    invoke-direct {p0, p1, v2, v0}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/internal/component/plugin/Plugin;->setVersionName(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/miui/internal/component/plugin/Plugin;->getVersionCode()I

    move-result v0

    const-string v2, "level"

    invoke-direct {p0, p1, v2, v0}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/miui/internal/component/plugin/Plugin;->setLevel(I)V

    invoke-virtual {p2}, Lcom/miui/internal/component/plugin/Plugin;->getLevel()I

    move-result v0

    const-string v2, "minCapatibleLevel"

    invoke-direct {p0, p1, v2, v0}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/miui/internal/component/plugin/Plugin;->setMinCapatibleLevel(I)V

    sget-object v0, Lcom/miui/internal/component/plugin/AccessPermission;->PRIVATE:Lcom/miui/internal/component/plugin/AccessPermission;

    const-string v2, "resources"

    invoke-direct {p0, p1, v2, v0}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/internal/component/plugin/AccessPermission;)Lcom/miui/internal/component/plugin/AccessPermission;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/internal/component/plugin/Plugin;->setResources(Lcom/miui/internal/component/plugin/AccessPermission;)V

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dependencies"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v0, p2}, Lcom/miui/internal/component/plugin/PluginManifestParser;->handleDependenciesElement(Lorg/w3c/dom/Element;Lcom/miui/internal/component/plugin/Plugin;)V

    goto :goto_1

    :cond_0
    const-string v3, "extensions"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v0, p2}, Lcom/miui/internal/component/plugin/PluginManifestParser;->handleExtensionsElement(Lorg/w3c/dom/Element;Lcom/miui/internal/component/plugin/Plugin;)V

    goto :goto_1

    :cond_1
    const-string v3, "outlets"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v0, p2}, Lcom/miui/internal/component/plugin/PluginManifestParser;->handleOutletsElement(Lorg/w3c/dom/Element;Lcom/miui/internal/component/plugin/Plugin;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public parsePlugin(Ljava/io/File;)Lcom/miui/internal/component/plugin/Plugin;
    .locals 1

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lcom/miui/internal/component/plugin/PluginManifestParser;->parsePlugin(Ljava/io/InputStream;)Lcom/miui/internal/component/plugin/Plugin;

    move-result-object p0

    return-object p0
.end method

.method public parsePlugin(Ljava/io/InputStream;)Lcom/miui/internal/component/plugin/Plugin;
    .locals 2

    new-instance v0, Lcom/miui/internal/component/plugin/Plugin;

    invoke-direct {v0}, Lcom/miui/internal/component/plugin/Plugin;-><init>()V

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/component/plugin/PluginManifestParser;->handlePluginElement(Lorg/w3c/dom/Element;Lcom/miui/internal/component/plugin/Plugin;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance p0, Lcom/miui/internal/component/plugin/PluginParseException;

    invoke-direct {p0}, Lcom/miui/internal/component/plugin/PluginParseException;-><init>()V

    throw p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    new-instance p0, Lcom/miui/internal/component/plugin/PluginParseException;

    invoke-direct {p0}, Lcom/miui/internal/component/plugin/PluginParseException;-><init>()V

    throw p0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    new-instance p0, Lcom/miui/internal/component/plugin/PluginParseException;

    invoke-direct {p0}, Lcom/miui/internal/component/plugin/PluginParseException;-><init>()V

    throw p0
.end method
