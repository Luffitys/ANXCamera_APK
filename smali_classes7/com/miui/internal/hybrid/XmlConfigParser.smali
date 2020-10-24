.class public Lcom/miui/internal/hybrid/XmlConfigParser;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/internal/hybrid/ConfigParser;


# static fields
.field private static final ATTRIBUTE_NAME:Ljava/lang/String; = "name"

.field private static final ATTRIBUTE_ORIGIN:Ljava/lang/String; = "origin"

.field private static final ATTRIBUTE_SRC:Ljava/lang/String; = "src"

.field private static final ATTRIBUTE_SUBDOMAINS:Ljava/lang/String; = "subdomains"

.field private static final ATTRIBUTE_VALUE:Ljava/lang/String; = "value"

.field private static final CONFIG_FILE_NAME:Ljava/lang/String; = "miui_hybrid_config"

.field private static final ELEMENT_ACCESS:Ljava/lang/String; = "access"

.field private static final ELEMENT_CONTENT:Ljava/lang/String; = "content"

.field private static final ELEMENT_FEATURE:Ljava/lang/String; = "feature"

.field private static final ELEMENT_PARAM:Ljava/lang/String; = "param"

.field private static final ELEMENT_PREFERENCE:Ljava/lang/String; = "preference"

.field private static final ELEMENT_WIDGET:Ljava/lang/String; = "widget"

.field private static final KEY_SIGNATURE:Ljava/lang/String; = "signature"

.field private static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final KEY_VENDOR:Ljava/lang/String; = "vendor"

.field private static final META_DATA_KEY:Ljava/lang/String; = "com.miui.sdk.hybrid.config"


# instance fields
.field private mParser:Landroid/content/res/XmlResourceParser;


# direct methods
.method private constructor <init>(Landroid/content/res/XmlResourceParser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/hybrid/XmlConfigParser;->mParser:Landroid/content/res/XmlResourceParser;

    return-void
.end method

.method private buildCompleteConfig(Lcom/miui/internal/hybrid/Config;Ljava/util/Map;)Lcom/miui/internal/hybrid/Config;
    .locals 0

    return-object p1
.end method

.method public static create(Landroid/content/Context;)Lcom/miui/internal/hybrid/XmlConfigParser;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "com.miui.sdk.hybrid.config"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "miui_hybrid_config"

    const-string v2, "xml"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-static {p0, v0}, Lcom/miui/internal/hybrid/XmlConfigParser;->createFromResId(Landroid/content/Context;I)Lcom/miui/internal/hybrid/XmlConfigParser;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/miui/internal/hybrid/HybridException;

    const/16 v1, 0xc9

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/miui/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static createFromResId(Landroid/content/Context;I)Lcom/miui/internal/hybrid/XmlConfigParser;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Lcom/miui/internal/hybrid/XmlConfigParser;->createFromXmlParser(Landroid/content/res/XmlResourceParser;)Lcom/miui/internal/hybrid/XmlConfigParser;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/miui/internal/hybrid/HybridException;

    const/16 v0, 0xc9

    invoke-virtual {p0}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/miui/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public static createFromXmlParser(Landroid/content/res/XmlResourceParser;)Lcom/miui/internal/hybrid/XmlConfigParser;
    .locals 1

    new-instance v0, Lcom/miui/internal/hybrid/XmlConfigParser;

    invoke-direct {v0, p0}, Lcom/miui/internal/hybrid/XmlConfigParser;-><init>(Landroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method private getSecurity(Lcom/miui/internal/hybrid/Config;)Lcom/miui/internal/hybrid/Security;
    .locals 0

    invoke-virtual {p1}, Lcom/miui/internal/hybrid/Config;->getSecurity()Lcom/miui/internal/hybrid/Security;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/miui/internal/hybrid/Security;

    invoke-direct {p0}, Lcom/miui/internal/hybrid/Security;-><init>()V

    invoke-virtual {p1, p0}, Lcom/miui/internal/hybrid/Config;->setSecurity(Lcom/miui/internal/hybrid/Security;)V

    :cond_0
    return-object p0
.end method

.method private parseAccessElement(Lcom/miui/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V
    .locals 3

    new-instance p0, Lcom/miui/internal/hybrid/Permission;

    invoke-direct {p0}, Lcom/miui/internal/hybrid/Permission;-><init>()V

    const/4 v0, 0x0

    const-string v1, "origin"

    invoke-interface {p2, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/internal/hybrid/Permission;->setUri(Ljava/lang/String;)V

    const-string v1, "subdomains"

    const/4 v2, 0x0

    invoke-interface {p2, v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/miui/internal/hybrid/Permission;->setApplySubdomains(Z)V

    invoke-virtual {p0, v2}, Lcom/miui/internal/hybrid/Permission;->setForbidden(Z)V

    invoke-virtual {p1, p0}, Lcom/miui/internal/hybrid/Config;->addPermission(Lcom/miui/internal/hybrid/Permission;)V

    return-void
.end method

.method private parseContentElement(Lcom/miui/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V
    .locals 1

    const/4 p0, 0x0

    const-string v0, "src"

    invoke-interface {p2, p0, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/internal/hybrid/Config;->setContent(Ljava/lang/String;)V

    return-void
.end method

.method private parseFeatureElement(Lcom/miui/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V
    .locals 5

    new-instance v0, Lcom/miui/internal/hybrid/Feature;

    invoke-direct {v0}, Lcom/miui/internal/hybrid/Feature;-><init>()V

    const/4 v1, 0x0

    const-string v2, "name"

    invoke-interface {p2, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/hybrid/Feature;->setName(Ljava/lang/String;)V

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_3

    :cond_1
    if-eq v2, v3, :cond_0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "param"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, p2}, Lcom/miui/internal/hybrid/XmlConfigParser;->parseParamElement(Lcom/miui/internal/hybrid/Feature;Landroid/content/res/XmlResourceParser;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v0}, Lcom/miui/internal/hybrid/Config;->addFeature(Lcom/miui/internal/hybrid/Feature;)V

    return-void
.end method

.method private parseParamElement(Lcom/miui/internal/hybrid/Feature;Landroid/content/res/XmlResourceParser;)V
    .locals 2

    const/4 p0, 0x0

    const-string v0, "name"

    invoke-interface {p2, p0, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "value"

    invoke-interface {p2, p0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/miui/internal/hybrid/Feature;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private parsePreferenceElement(Lcom/miui/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "name"

    invoke-interface {p2, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    invoke-interface {p2, v0, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "signature"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/internal/hybrid/XmlConfigParser;->getSecurity(Lcom/miui/internal/hybrid/Config;)Lcom/miui/internal/hybrid/Security;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/miui/internal/hybrid/Security;->setSignature(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "timestamp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/internal/hybrid/XmlConfigParser;->getSecurity(Lcom/miui/internal/hybrid/Config;)Lcom/miui/internal/hybrid/Security;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/hybrid/Security;->setTimestamp(J)V

    goto :goto_0

    :cond_1
    const-string p0, "vendor"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1, p2}, Lcom/miui/internal/hybrid/Config;->setVendor(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1, p2}, Lcom/miui/internal/hybrid/Config;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private parseWidgetElement(Lcom/miui/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V
    .locals 4

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_6

    :cond_1
    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/hybrid/XmlConfigParser;->parseContentElement(Lcom/miui/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V

    goto :goto_0

    :cond_3
    const-string v2, "feature"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/hybrid/XmlConfigParser;->parseFeatureElement(Lcom/miui/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V

    goto :goto_0

    :cond_4
    const-string v2, "preference"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/hybrid/XmlConfigParser;->parsePreferenceElement(Lcom/miui/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V

    goto :goto_0

    :cond_5
    const-string v2, "access"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/hybrid/XmlConfigParser;->parseAccessElement(Lcom/miui/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V

    goto :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public parse(Ljava/util/Map;)Lcom/miui/internal/hybrid/Config;
    .locals 5

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_0
    new-instance v0, Lcom/miui/internal/hybrid/Config;

    invoke-direct {v0}, Lcom/miui/internal/hybrid/Config;-><init>()V

    iget-object v1, p0, Lcom/miui/internal/hybrid/XmlConfigParser;->mParser:Landroid/content/res/XmlResourceParser;

    if-eqz v1, :cond_3

    :goto_0
    const/16 v2, 0xc9

    :try_start_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "widget"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v0, v1}, Lcom/miui/internal/hybrid/XmlConfigParser;->parseWidgetElement(Lcom/miui/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget-object v1, p0, Lcom/miui/internal/hybrid/XmlConfigParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v0, Lcom/miui/internal/hybrid/HybridException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Lcom/miui/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Lcom/miui/internal/hybrid/HybridException;

    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Lcom/miui/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/miui/internal/hybrid/XmlConfigParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V

    throw p1

    :cond_3
    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/miui/internal/hybrid/XmlConfigParser;->buildCompleteConfig(Lcom/miui/internal/hybrid/Config;Ljava/util/Map;)Lcom/miui/internal/hybrid/Config;

    move-result-object p0

    return-object p0
.end method
