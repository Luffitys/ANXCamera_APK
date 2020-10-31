.class public Lcom/miui/internal/component/plugin/PluginManifestParser;
.super Ljava/lang/Object;
.source "PluginManifestParser.java"


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
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/component/plugin/PluginParseException;
        }
    .end annotation

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/internal/component/plugin/AccessPermission;)Lcom/miui/internal/component/plugin/AccessPermission;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/component/plugin/PluginParseException;
        }
    .end annotation

    invoke-virtual {p3}, Lcom/miui/internal/component/plugin/AccessPermission;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/internal/component/plugin/AccessPermission;->valueOf(Ljava/lang/String;)Lcom/miui/internal/component/plugin/AccessPermission;

    move-result-object v0

    return-object v0
.end method

.method private getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/internal/component/plugin/Demand;)Lcom/miui/internal/component/plugin/Demand;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/component/plugin/PluginParseException;
        }
    .end annotation

    invoke-virtual {p3}, Lcom/miui/internal/component/plugin/Demand;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/internal/component/plugin/Demand;->valueOf(Ljava/lang/String;)Lcom/miui/internal/component/plugin/Demand;

    move-result-object v0

    return-object v0
.end method

.method private getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/component/plugin/PluginParseException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/component/plugin/PluginParseException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/component/plugin/PluginParseException;
        }
    .end annotation

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_e
    if-nez p3, :cond_12

    move-object v0, p4

    :cond_11
    return-object v0

    :cond_12
    new-instance v1, Lcom/miui/internal/component/plugin/PluginParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "missing attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in element "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/internal/component/plugin/PluginParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/component/plugin/PluginParseException;
        }
    .end annotation

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private handleDependenciesElement(Lorg/w3c/dom/Element;Lcom/miui/internal/component/plugin/Plugin;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/component/plugin/PluginParseException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_66

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_63

    move-object v3, v2

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "dependency"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_63

    new-instance v6, Lcom/miui/internal/component/plugin/Dependency;

    invoke-direct {v6}, Lcom/miui/internal/component/plugin/Dependency;-><init>()V

    const-string v7, "name"

    invoke-direct {p0, v3, v7}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/internal/component/plugin/Dependency;->setName(Ljava/lang/String;)V

    sget-object v7, Lcom/miui/internal/component/plugin/Demand;->PROHIBITED:Lcom/miui/internal/component/plugin/Demand;

    const-string v8, "resources"

    invoke-direct {p0, v3, v8, v7}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/internal/component/plugin/Demand;)Lcom/miui/internal/component/plugin/Demand;

    move-result-object v7

    sget-object v8, Lcom/miui/internal/component/plugin/Demand;->REQUIRED:Lcom/miui/internal/component/plugin/Demand;

    const/4 v9, 0x0

    if-ne v7, v8, :cond_41

    goto :goto_42

    :cond_41
    move v4, v9

    :goto_42
    invoke-virtual {v6, v4}, Lcom/miui/internal/component/plugin/Dependency;->setResourcesRequired(Z)V

    const-string v4, "optional"

    invoke-direct {p0, v3, v4, v9}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v6, v4}, Lcom/miui/internal/component/plugin/Dependency;->setOptional(Z)V

    const-string v4, "minLevel"

    invoke-direct {p0, v3, v4, v9}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/miui/internal/component/plugin/Dependency;->setMinLevel(I)V

    const-string v4, "targetLevel"

    invoke-direct {p0, v3, v4, v9}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/miui/internal/component/plugin/Dependency;->setTargetLevel(I)V

    invoke-virtual {p2, v6}, Lcom/miui/internal/component/plugin/Plugin;->addDependency(Lcom/miui/internal/component/plugin/Dependency;)V

    :cond_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_66
    return-void
.end method

.method private handleExtensionsElement(Lorg/w3c/dom/Element;Lcom/miui/internal/component/plugin/Plugin;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/component/plugin/PluginParseException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_4a

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_47

    move-object v3, v2

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "activity-extension"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2d

    const-string v5, "function-extension"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    :cond_2d
    new-instance v5, Lcom/miui/internal/component/plugin/Extension;

    invoke-direct {v5}, Lcom/miui/internal/component/plugin/Extension;-><init>()V

    const-string v6, "name"

    invoke-direct {p0, v3, v6}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/internal/component/plugin/Extension;->setName(Ljava/lang/String;)V

    const-string v6, "location"

    invoke-direct {p0, v3, v6}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/internal/component/plugin/Extension;->setLocation(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Lcom/miui/internal/component/plugin/Plugin;->addExtension(Lcom/miui/internal/component/plugin/Extension;)V

    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4a
    return-void
.end method

.method private handleOutletsElement(Lorg/w3c/dom/Element;Lcom/miui/internal/component/plugin/Plugin;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/component/plugin/PluginParseException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_4c

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_49

    move-object v3, v2

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "activity-outlet"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2d

    const-string v5, "function-outlet"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    :cond_2d
    new-instance v5, Lcom/miui/internal/component/plugin/Outlet;

    invoke-direct {v5}, Lcom/miui/internal/component/plugin/Outlet;-><init>()V

    const-string v6, "name"

    invoke-direct {p0, v3, v6}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/internal/component/plugin/Outlet;->setName(Ljava/lang/String;)V

    sget-object v6, Lcom/miui/internal/component/plugin/AccessPermission;->PUBLIC:Lcom/miui/internal/component/plugin/AccessPermission;

    const-string v7, "visibility"

    invoke-direct {p0, p1, v7, v6}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/internal/component/plugin/AccessPermission;)Lcom/miui/internal/component/plugin/AccessPermission;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/internal/component/plugin/Outlet;->setVisibility(Lcom/miui/internal/component/plugin/AccessPermission;)V

    invoke-virtual {p2, v5}, Lcom/miui/internal/component/plugin/Plugin;->addOutlet(Lcom/miui/internal/component/plugin/Outlet;)V

    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4c
    return-void
.end method

.method private handlePluginElement(Lorg/w3c/dom/Element;Lcom/miui/internal/component/plugin/Plugin;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/component/plugin/PluginParseException;
        }
    .end annotation

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

    const-string v1, "versionName"

    invoke-direct {p0, p1, v1, v0}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/internal/component/plugin/Plugin;->setVersionName(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/miui/internal/component/plugin/Plugin;->getVersionCode()I

    move-result v0

    const-string v1, "level"

    invoke-direct {p0, p1, v1, v0}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/miui/internal/component/plugin/Plugin;->setLevel(I)V

    invoke-virtual {p2}, Lcom/miui/internal/component/plugin/Plugin;->getLevel()I

    move-result v0

    const-string v1, "minCapatibleLevel"

    invoke-direct {p0, p1, v1, v0}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/miui/internal/component/plugin/Plugin;->setMinCapatibleLevel(I)V

    sget-object v0, Lcom/miui/internal/component/plugin/AccessPermission;->PRIVATE:Lcom/miui/internal/component/plugin/AccessPermission;

    const-string v1, "resources"

    invoke-direct {p0, p1, v1, v0}, Lcom/miui/internal/component/plugin/PluginManifestParser;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/internal/component/plugin/AccessPermission;)Lcom/miui/internal/component/plugin/AccessPermission;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/internal/component/plugin/Plugin;->setResources(Lcom/miui/internal/component/plugin/AccessPermission;)V

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5b
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_99

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_96

    move-object v3, v2

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "dependencies"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7f

    invoke-direct {p0, v3, p2}, Lcom/miui/internal/component/plugin/PluginManifestParser;->handleDependenciesElement(Lorg/w3c/dom/Element;Lcom/miui/internal/component/plugin/Plugin;)V

    goto :goto_96

    :cond_7f
    const-string v5, "extensions"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8b

    invoke-direct {p0, v3, p2}, Lcom/miui/internal/component/plugin/PluginManifestParser;->handleExtensionsElement(Lorg/w3c/dom/Element;Lcom/miui/internal/component/plugin/Plugin;)V

    goto :goto_96

    :cond_8b
    const-string v5, "outlets"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_96

    invoke-direct {p0, v3, p2}, Lcom/miui/internal/component/plugin/PluginManifestParser;->handleOutletsElement(Lorg/w3c/dom/Element;Lcom/miui/internal/component/plugin/Plugin;)V

    :cond_96
    :goto_96
    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    :cond_99
    return-void
.end method


# virtual methods
.method public parsePlugin(Ljava/io/File;)Lcom/miui/internal/component/plugin/Plugin;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/miui/internal/component/plugin/PluginParseException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lcom/miui/internal/component/plugin/PluginManifestParser;->parsePlugin(Ljava/io/InputStream;)Lcom/miui/internal/component/plugin/Plugin;

    move-result-object v0

    return-object v0
.end method

.method public parsePlugin(Ljava/io/InputStream;)Lcom/miui/internal/component/plugin/Plugin;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/miui/internal/component/plugin/PluginParseException;
        }
    .end annotation

    new-instance v0, Lcom/miui/internal/component/plugin/Plugin;

    invoke-direct {v0}, Lcom/miui/internal/component/plugin/Plugin;-><init>()V

    :try_start_5
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lcom/miui/internal/component/plugin/PluginManifestParser;->handlePluginElement(Lorg/w3c/dom/Element;Lcom/miui/internal/component/plugin/Plugin;)V
    :try_end_18
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_18} :catch_2e
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_18} :catch_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_18} :catch_1a

    nop

    return-object v0

    :catch_1a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v2, Lcom/miui/internal/component/plugin/PluginParseException;

    invoke-direct {v2}, Lcom/miui/internal/component/plugin/PluginParseException;-><init>()V

    throw v2

    :catch_24
    move-exception v1

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    new-instance v2, Lcom/miui/internal/component/plugin/PluginParseException;

    invoke-direct {v2}, Lcom/miui/internal/component/plugin/PluginParseException;-><init>()V

    throw v2

    :catch_2e
    move-exception v1

    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    new-instance v2, Lcom/miui/internal/component/plugin/PluginParseException;

    invoke-direct {v2}, Lcom/miui/internal/component/plugin/PluginParseException;-><init>()V

    throw v2
.end method
