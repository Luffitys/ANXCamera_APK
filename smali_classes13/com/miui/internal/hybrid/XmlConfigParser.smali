.class public Lcom/miui/internal/hybrid/XmlConfigParser;
.super Ljava/lang/Object;
.source "XmlConfigParser.java"

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
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/hybrid/XmlConfigParser;->mParser:Landroid/content/res/XmlResourceParser;

    return-void
.end method

.method private buildCompleteConfig(Lcom/miui/internal/hybrid/Config;Ljava/util/Map;)Lcom/miui/internal/hybrid/Config;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/internal/hybrid/Config;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/miui/internal/hybrid/Config;"
        }
    .end annotation

    return-object p1
.end method

.method public static create(Landroid/content/Context;)Lcom/miui/internal/hybrid/XmlConfigParser;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/hybrid/HybridException;
        }
    .end annotation

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

    if-eqz v1, :cond_1a

    const-string v2, "com.miui.sdk.hybrid.config"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    :cond_1a
    if-nez v0, :cond_2d

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "miui_hybrid_config"

    const-string v4, "xml"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_2c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_2c} :catch_33

    move v0, v2

    :cond_2d
    nop

    invoke-static {p0, v0}, Lcom/miui/internal/hybrid/XmlConfigParser;->createFromResId(Landroid/content/Context;I)Lcom/miui/internal/hybrid/XmlConfigParser;

    move-result-object v1

    return-object v1

    :catch_33
    move-exception v1

    new-instance v2, Lcom/miui/internal/hybrid/HybridException;

    const/16 v3, 0xc9

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/miui/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public static createFromResId(Landroid/content/Context;I)Lcom/miui/internal/hybrid/XmlConfigParser;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/hybrid/HybridException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_9} :catch_10

    move-object v0, v1

    nop

    invoke-static {v0}, Lcom/miui/internal/hybrid/XmlConfigParser;->createFromXmlParser(Landroid/content/res/XmlResourceParser;)Lcom/miui/internal/hybrid/XmlConfigParser;

    move-result-object v1

    return-object v1

    :catch_10
    move-exception v1

    new-instance v2, Lcom/miui/internal/hybrid/HybridException;

    const/16 v3, 0xc9

    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/miui/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public static createFromXmlParser(Landroid/content/res/XmlResourceParser;)Lcom/miui/internal/hybrid/XmlConfigParser;
    .registers 2

    new-instance v0, Lcom/miui/internal/hybrid/XmlConfigParser;

    invoke-direct {v0, p0}, Lcom/miui/internal/hybrid/XmlConfigParser;-><init>(Landroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method private getSecurity(Lcom/miui/internal/hybrid/Config;)Lcom/miui/internal/hybrid/Security;
    .registers 4

    invoke-virtual {p1}, Lcom/miui/internal/hybrid/Config;->getSecurity()Lcom/miui/internal/hybrid/Security;

    move-result-object v0

    if-nez v0, :cond_f

    new-instance v1, Lcom/miui/internal/hybrid/Security;

    invoke-direct {v1}, Lcom/miui/internal/hybrid/Security;-><init>()V

    move-object v0, v1

    invoke-virtual {p1, v0}, Lcom/miui/internal/hybrid/Config;->setSecurity(Lcom/miui/internal/hybrid/Security;)V

    :cond_f
    return-object v0
.end method

.method private parseAccessElement(Lcom/miui/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V
    .registers 7

    new-instance v0, Lcom/miui/internal/hybrid/Permission;

    invoke-direct {v0}, Lcom/miui/internal/hybrid/Permission;-><init>()V

    const/4 v1, 0x0

    const-string v2, "origin"

    invoke-interface {p2, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/internal/hybrid/Permission;->setUri(Ljava/lang/String;)V

    const-string v2, "subdomains"

    const/4 v3, 0x0

    invoke-interface {p2, v1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/hybrid/Permission;->setApplySubdomains(Z)V

    invoke-virtual {v0, v3}, Lcom/miui/internal/hybrid/Permission;->setForbidden(Z)V

    invoke-virtual {p1, v0}, Lcom/miui/internal/hybrid/Config;->addPermission(Lcom/miui/internal/hybrid/Permission;)V

    return-void
.end method

.method private parseContentElement(Lcom/miui/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V
    .registers 5

    const/4 v0, 0x0

    const-string v1, "src"

    invoke-interface {p2, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/internal/hybrid/Config;->setContent(Ljava/lang/String;)V

    return-void
.end method

.method private parseFeatureElement(Lcom/miui/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/miui/internal/hybrid/Feature;

    invoke-direct {v0}, Lcom/miui/internal/hybrid/Feature;-><init>()V

    const/4 v1, 0x0

    const-string v2, "name"

    invoke-interface {p2, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/hybrid/Feature;->setName(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    :cond_14
    :goto_14
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    move v1, v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3b

    const/4 v3, 0x3

    if-ne v1, v3, :cond_25

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v2, :cond_3b

    :cond_25
    if-eq v1, v3, :cond_14

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2b

    goto :goto_14

    :cond_2b
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "param"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-direct {p0, v0, p2}, Lcom/miui/internal/hybrid/XmlConfigParser;->parseParamElement(Lcom/miui/internal/hybrid/Feature;Landroid/content/res/XmlResourceParser;)V

    :cond_3a
    goto :goto_14

    :cond_3b
    invoke-virtual {p1, v0}, Lcom/miui/internal/hybrid/Config;->addFeature(Lcom/miui/internal/hybrid/Feature;)V

    return-void
.end method

.method private parseParamElement(Lcom/miui/internal/hybrid/Feature;Landroid/content/res/XmlResourceParser;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "name"

    invoke-interface {p2, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    invoke-interface {p2, v0, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/miui/internal/hybrid/Feature;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private parsePreferenceElement(Lcom/miui/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V
    .registers 8

    const/4 v0, 0x0

    const-string v1, "name"

    invoke-interface {p2, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    invoke-interface {p2, v0, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "signature"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-direct {p0, p1}, Lcom/miui/internal/hybrid/XmlConfigParser;->getSecurity(Lcom/miui/internal/hybrid/Config;)Lcom/miui/internal/hybrid/Security;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/miui/internal/hybrid/Security;->setSignature(Ljava/lang/String;)V

    goto :goto_44

    :cond_21
    const-string v2, "timestamp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-direct {p0, p1}, Lcom/miui/internal/hybrid/XmlConfigParser;->getSecurity(Lcom/miui/internal/hybrid/Config;)Lcom/miui/internal/hybrid/Security;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/miui/internal/hybrid/Security;->setTimestamp(J)V

    goto :goto_44

    :cond_35
    const-string v2, "vendor"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-virtual {p1, v0}, Lcom/miui/internal/hybrid/Config;->setVendor(Ljava/lang/String;)V

    goto :goto_44

    :cond_41
    invoke-virtual {p1, v1, v0}, Lcom/miui/internal/hybrid/Config;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    :goto_44
    return-void
.end method

.method private parseWidgetElement(Lcom/miui/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    :cond_5
    :goto_5
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    move v0, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_50

    const/4 v2, 0x3

    if-ne v0, v2, :cond_16

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v1, :cond_50

    :cond_16
    if-eq v0, v2, :cond_5

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1c

    goto :goto_5

    :cond_1c
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/hybrid/XmlConfigParser;->parseContentElement(Lcom/miui/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V

    goto :goto_4f

    :cond_2c
    const-string v3, "feature"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/hybrid/XmlConfigParser;->parseFeatureElement(Lcom/miui/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V

    goto :goto_4f

    :cond_38
    const-string v3, "preference"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/hybrid/XmlConfigParser;->parsePreferenceElement(Lcom/miui/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V

    goto :goto_4f

    :cond_44
    const-string v3, "access"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/hybrid/XmlConfigParser;->parseAccessElement(Lcom/miui/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V

    :cond_4f
    :goto_4f
    goto :goto_5

    :cond_50
    return-void
.end method


# virtual methods
.method public parse(Ljava/util/Map;)Lcom/miui/internal/hybrid/Config;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/miui/internal/hybrid/Config;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/hybrid/HybridException;
        }
    .end annotation

    if-nez p1, :cond_8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object p1, v0

    :cond_8
    new-instance v0, Lcom/miui/internal/hybrid/Config;

    invoke-direct {v0}, Lcom/miui/internal/hybrid/Config;-><init>()V

    iget-object v1, p0, Lcom/miui/internal/hybrid/XmlConfigParser;->mParser:Landroid/content/res/XmlResourceParser;

    if-eqz v1, :cond_53

    nop

    const/4 v2, 0x0

    :goto_13
    const/16 v3, 0xc9

    :try_start_15
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    move v2, v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_21

    const/4 v4, 0x1

    if-eq v2, v4, :cond_21

    goto :goto_13

    :cond_21
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "widget"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-direct {p0, v0, v1}, Lcom/miui/internal/hybrid/XmlConfigParser;->parseWidgetElement(Lcom/miui/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V
    :try_end_30
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_30} :catch_41
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_30} :catch_36
    .catchall {:try_start_15 .. :try_end_30} :catchall_4c

    :cond_30
    iget-object v1, p0, Lcom/miui/internal/hybrid/XmlConfigParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_53

    :catch_36
    move-exception v1

    :try_start_37
    new-instance v2, Lcom/miui/internal/hybrid/HybridException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/miui/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_41
    move-exception v1

    new-instance v2, Lcom/miui/internal/hybrid/HybridException;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/miui/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_4c
    .catchall {:try_start_37 .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception v1

    iget-object v2, p0, Lcom/miui/internal/hybrid/XmlConfigParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    throw v1

    :cond_53
    :goto_53
    invoke-direct {p0, v0, p1}, Lcom/miui/internal/hybrid/XmlConfigParser;->buildCompleteConfig(Lcom/miui/internal/hybrid/Config;Ljava/util/Map;)Lcom/miui/internal/hybrid/Config;

    move-result-object v1

    return-object v1
.end method
