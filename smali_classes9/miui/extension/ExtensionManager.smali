.class public Lmiui/extension/ExtensionManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ADDITIONAL_PACKAGE_NAME:Ljava/lang/String; = "miui.system"

.field private static final EXTENSION_CONFIG_NAME:Ljava/lang/String; = "miui_extension"

.field private static final EXTENSION_TAG_EXTENSION:Ljava/lang/String; = "extension"

.field private static final META_KEY_EXTENSION:Ljava/lang/String; = "com.miui.sdk.extension"

.field private static final TAG:Ljava/lang/String; = "ExtensionManager"


# instance fields
.field private mExtensionMap:Ljava/util/HashMap;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/extension/ExtensionManager;->mExtensionMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lmiui/extension/ExtensionManager;->loadConfig(Landroid/content/Context;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lmiui/extension/ExtensionManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/extension/ExtensionManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance()Lmiui/extension/ExtensionManager;
    .locals 1

    sget-object v0, Lmiui/extension/ExtensionManager$Holder;->INSTANCE:Lmiui/extension/ExtensionManager;

    return-object v0
.end method

.method private loadConfig(Landroid/content/Context;)V
    .locals 8

    const-string v0, "Fail to parse CTA config"

    const-string v1, "ExtensionManager"

    const-string v2, "miui.system"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.miui.sdk.extension"

    const-string v4, "miui_extension"

    invoke-static {p1, v3, v4, v2}, Lmiui/util/ResourceHelper;->loadXml(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "extension"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, p1, v3}, Lmiui/extension/ExtensionManager;->parseExtension(Landroid/content/Context;Landroid/util/AttributeSet;)Lmiui/extension/Extension;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/extension/Extension;->getTarget()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmiui/extension/ExtensionManager;->mExtensionMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-nez v6, :cond_2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lmiui/extension/ExtensionManager;->mExtensionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    :goto_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    :goto_2
    :try_start_1
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :goto_3
    return-void

    :goto_4
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    throw p0
.end method

.method private parseExtension(Landroid/content/Context;Landroid/util/AttributeSet;)Lmiui/extension/Extension;
    .locals 1

    sget-object p0, Lcom/miui/internal/R$styleable;->DynamicExtension:[I

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    sget p1, Lcom/miui/internal/R$styleable;->DynamicExtension_extensionTarget:I

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/miui/internal/R$styleable;->DynamicExtension_extensionAction:I

    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lcom/miui/internal/R$styleable;->DynamicExtension_extensionInvoker:I

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p0, Lmiui/extension/Extension;

    invoke-direct {p0, p1, p2, v0}, Lmiui/extension/Extension;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public varargs invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lmiui/extension/ExtensionManager;->mExtensionMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/extension/Extension;

    invoke-virtual {p1, p2, p3}, Lmiui/extension/Extension;->invoke(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
