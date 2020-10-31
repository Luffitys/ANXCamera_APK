.class public Lmiui/extension/ExtensionManager;
.super Ljava/lang/Object;
.source "ExtensionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/extension/ExtensionManager$Holder;
    }
.end annotation


# static fields
.field private static final ADDITIONAL_PACKAGE_NAME:Ljava/lang/String; = "miui.system"

.field private static final EXTENSION_CONFIG_NAME:Ljava/lang/String; = "miui_extension"

.field private static final EXTENSION_TAG_EXTENSION:Ljava/lang/String; = "extension"

.field private static final META_KEY_EXTENSION:Ljava/lang/String; = "com.miui.sdk.extension"

.field private static final TAG:Ljava/lang/String; = "ExtensionManager"


# instance fields
.field private mExtensionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lmiui/extension/Extension;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/extension/ExtensionManager;->mExtensionMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lmiui/extension/ExtensionManager;->loadConfig(Landroid/content/Context;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lmiui/extension/ExtensionManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/extension/ExtensionManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance()Lmiui/extension/ExtensionManager;
    .registers 1

    sget-object v0, Lmiui/extension/ExtensionManager$Holder;->INSTANCE:Lmiui/extension/ExtensionManager;

    return-object v0
.end method

.method private loadConfig(Landroid/content/Context;)V
    .registers 12

    const-string v0, "Fail to parse CTA config"

    const-string v1, "ExtensionManager"

    const-string v2, "miui.system"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.miui.sdk.extension"

    const-string v4, "miui_extension"

    invoke-static {p1, v3, v4, v2}, Lmiui/util/ResourceHelper;->loadXml(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    if-nez v2, :cond_15

    return-void

    :cond_15
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    :try_start_19
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    :goto_1d
    const/4 v5, 0x1

    if-eq v4, v5, :cond_55

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4f

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "extension"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4f

    invoke-direct {p0, p1, v3}, Lmiui/extension/ExtensionManager;->parseExtension(Landroid/content/Context;Landroid/util/AttributeSet;)Lmiui/extension/Extension;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/extension/Extension;->getTarget()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lmiui/extension/ExtensionManager;->mExtensionMap:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_4c

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v9

    iget-object v9, p0, Lmiui/extension/ExtensionManager;->mExtensionMap:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4c
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4f
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5
    :try_end_53
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_53} :catch_62
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_53} :catch_5c
    .catchall {:try_start_19 .. :try_end_53} :catchall_5a

    move v4, v5

    goto :goto_1d

    :cond_55
    nop

    :goto_56
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_68

    :catchall_5a
    move-exception v0

    goto :goto_69

    :catch_5c
    move-exception v4

    :try_start_5d
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    goto :goto_56

    :catch_62
    move-exception v4

    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_66
    .catchall {:try_start_5d .. :try_end_66} :catchall_5a

    nop

    goto :goto_56

    :goto_68
    return-void

    :goto_69
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    throw v0
.end method

.method private parseExtension(Landroid/content/Context;Landroid/util/AttributeSet;)Lmiui/extension/Extension;
    .registers 8

    sget-object v0, Lcom/miui/internal/R$styleable;->DynamicExtension:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$styleable;->DynamicExtension_extensionTarget:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$styleable;->DynamicExtension_extensionAction:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$styleable;->DynamicExtension_extensionInvoker:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v4, Lmiui/extension/Extension;

    invoke-direct {v4, v1, v2, v3}, Lmiui/extension/Extension;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method


# virtual methods
.method public varargs invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7

    iget-object v0, p0, Lmiui/extension/ExtensionManager;->mExtensionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/extension/Extension;

    invoke-virtual {v2, p2, p3}, Lmiui/extension/Extension;->invoke(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e

    :cond_1e
    return-void
.end method
