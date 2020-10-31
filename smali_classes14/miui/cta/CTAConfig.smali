.class public Lmiui/cta/CTAConfig;
.super Ljava/lang/Object;
.source "CTAConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cta/CTAConfig$ActivitiesNode;,
        Lmiui/cta/CTAConfig$ActivityNode;,
        Lmiui/cta/CTAConfig$MatchResult;
    }
.end annotation


# static fields
.field private static final ABBREVIATE_PREFIX:Ljava/lang/String; = "."

.field public static final EMPTY:Lmiui/cta/CTAConfig;

.field private static final TAG:Ljava/lang/String; = "CTAConfig"

.field private static final TAG_ACTIVITIES:Ljava/lang/String; = "activities"

.field private static final TAG_ACTIVITY:Ljava/lang/String; = "activity"


# instance fields
.field private mActivitiesNode:Lmiui/cta/CTAConfig$ActivitiesNode;

.field private mActivityNodes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiui/cta/CTAConfig$ActivityNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/cta/CTAConfig;

    invoke-direct {v0}, Lmiui/cta/CTAConfig;-><init>()V

    sput-object v0, Lmiui/cta/CTAConfig;->EMPTY:Lmiui/cta/CTAConfig;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/cta/CTAConfig$ActivitiesNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/cta/CTAConfig$ActivitiesNode;-><init>(Lmiui/cta/CTAConfig$1;)V

    iput-object v0, p0, Lmiui/cta/CTAConfig;->mActivitiesNode:Lmiui/cta/CTAConfig$ActivitiesNode;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/cta/CTAConfig;->mActivityNodes:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .registers 3

    invoke-direct {p0}, Lmiui/cta/CTAConfig;-><init>()V

    invoke-direct {p0, p1, p2}, Lmiui/cta/CTAConfig;->parseConfig(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    return-void
.end method

.method private parseActivities(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    sget-object v0, Lcom/miui/system/internal/R$styleable;->CTAActivitiesConfig:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    iget-object v1, p0, Lmiui/cta/CTAConfig;->mActivitiesNode:Lmiui/cta/CTAConfig$ActivitiesNode;

    sget v2, Lcom/miui/system/internal/R$styleable;->CTAActivitiesConfig_enabled:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Lmiui/cta/CTAConfig$ActivitiesNode;->enabled:Z

    iget-object v1, p0, Lmiui/cta/CTAConfig;->mActivitiesNode:Lmiui/cta/CTAConfig$ActivitiesNode;

    sget v2, Lcom/miui/system/internal/R$styleable;->CTAActivitiesConfig_optional:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Lmiui/cta/CTAConfig$ActivitiesNode;->optional:Z

    iget-object v1, p0, Lmiui/cta/CTAConfig;->mActivitiesNode:Lmiui/cta/CTAConfig$ActivitiesNode;

    sget v2, Lcom/miui/system/internal/R$styleable;->CTAActivitiesConfig_message:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v1, Lmiui/cta/CTAConfig$ActivitiesNode;->messageId:I

    iget-object v1, p0, Lmiui/cta/CTAConfig;->mActivitiesNode:Lmiui/cta/CTAConfig$ActivitiesNode;

    sget v2, Lcom/miui/system/internal/R$styleable;->CTAActivitiesConfig_permission:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Lmiui/cta/CTAConfig$ActivitiesNode;->permission:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private parseActivity(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    new-instance v0, Lmiui/cta/CTAConfig$ActivityNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/cta/CTAConfig$ActivityNode;-><init>(Lmiui/cta/CTAConfig$1;)V

    sget-object v1, Lcom/miui/system/internal/R$styleable;->CTAActivityConfig:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Lcom/miui/system/internal/R$styleable;->CTAActivityConfig_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmiui/cta/CTAConfig$ActivityNode;->name:Ljava/lang/String;

    sget v2, Lcom/miui/system/internal/R$styleable;->CTAActivityConfig_enabled:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_26

    sget v2, Lcom/miui/system/internal/R$styleable;->CTAActivityConfig_enabled:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lmiui/cta/CTAConfig$ActivityNode;->enabled:Z

    goto :goto_2c

    :cond_26
    iget-object v2, p0, Lmiui/cta/CTAConfig;->mActivitiesNode:Lmiui/cta/CTAConfig$ActivitiesNode;

    iget-boolean v2, v2, Lmiui/cta/CTAConfig$ActivitiesNode;->enabled:Z

    iput-boolean v2, v0, Lmiui/cta/CTAConfig$ActivityNode;->enabled:Z

    :goto_2c
    sget v2, Lcom/miui/system/internal/R$styleable;->CTAActivityConfig_optional:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3e

    sget v2, Lcom/miui/system/internal/R$styleable;->CTAActivityConfig_optional:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lmiui/cta/CTAConfig$ActivityNode;->optional:Z

    goto :goto_44

    :cond_3e
    iget-object v2, p0, Lmiui/cta/CTAConfig;->mActivitiesNode:Lmiui/cta/CTAConfig$ActivitiesNode;

    iget-boolean v2, v2, Lmiui/cta/CTAConfig$ActivitiesNode;->optional:Z

    iput-boolean v2, v0, Lmiui/cta/CTAConfig$ActivityNode;->optional:Z

    :goto_44
    sget v2, Lcom/miui/system/internal/R$styleable;->CTAActivityConfig_message:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v0, Lmiui/cta/CTAConfig$ActivityNode;->messageId:I

    sget v2, Lcom/miui/system/internal/R$styleable;->CTAActivityConfig_permission:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Lmiui/cta/CTAConfig$ActivityNode;->permission:I

    iget v2, v0, Lmiui/cta/CTAConfig$ActivityNode;->messageId:I

    if-nez v2, :cond_68

    iget v2, v0, Lmiui/cta/CTAConfig$ActivityNode;->permission:I

    if-nez v2, :cond_68

    iget-object v2, p0, Lmiui/cta/CTAConfig;->mActivitiesNode:Lmiui/cta/CTAConfig$ActivitiesNode;

    iget v2, v2, Lmiui/cta/CTAConfig$ActivitiesNode;->messageId:I

    iput v2, v0, Lmiui/cta/CTAConfig$ActivityNode;->messageId:I

    iget-object v2, p0, Lmiui/cta/CTAConfig;->mActivitiesNode:Lmiui/cta/CTAConfig$ActivitiesNode;

    iget v2, v2, Lmiui/cta/CTAConfig$ActivitiesNode;->permission:I

    iput v2, v0, Lmiui/cta/CTAConfig$ActivityNode;->permission:I

    :cond_68
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v2, v0, Lmiui/cta/CTAConfig$ActivityNode;->name:Ljava/lang/String;

    iget-object v3, v0, Lmiui/cta/CTAConfig$ActivityNode;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_92

    iget-object v3, v0, Lmiui/cta/CTAConfig$ActivityNode;->name:Ljava/lang/String;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_92

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_92
    iget-object v3, p0, Lmiui/cta/CTAConfig;->mActivityNodes:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private parseConfig(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .registers 10

    const-string v0, "Fail to parse CTA config"

    const-string v1, "CTAConfig"

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_9
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_d} :catch_4c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_d} :catch_47

    :goto_d
    const/4 v5, 0x1

    if-eq v4, v5, :cond_46

    const/4 v5, 0x2

    const-string v6, "activities"

    if-ne v4, v5, :cond_32

    :try_start_15
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-direct {p0, p1, v2}, Lmiui/cta/CTAConfig;->parseActivities(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v3, 0x1

    goto :goto_31

    :cond_24
    if-eqz v3, :cond_31

    const-string v6, "activity"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    invoke-direct {p0, p1, v2}, Lmiui/cta/CTAConfig;->parseActivity(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :cond_31
    :goto_31
    goto :goto_40

    :cond_32
    const/4 v5, 0x3

    if-ne v4, v5, :cond_31

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    const/4 v3, 0x0

    :cond_40
    :goto_40
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5
    :try_end_44
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_44} :catch_4c
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_44} :catch_47

    move v4, v5

    goto :goto_d

    :cond_46
    goto :goto_50

    :catch_47
    move-exception v3

    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_51

    :catch_4c
    move-exception v3

    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_50
    nop

    :goto_51
    return-void
.end method


# virtual methods
.method public canMatch()Z
    .registers 6

    iget-object v0, p0, Lmiui/cta/CTAConfig;->mActivitiesNode:Lmiui/cta/CTAConfig$ActivitiesNode;

    iget-boolean v0, v0, Lmiui/cta/CTAConfig$ActivitiesNode;->enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lmiui/cta/CTAConfig;->mActivityNodes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/cta/CTAConfig$ActivityNode;

    iget-boolean v4, v3, Lmiui/cta/CTAConfig$ActivityNode;->enabled:Z

    if-eqz v4, :cond_2b

    iget-object v4, v3, Lmiui/cta/CTAConfig$ActivityNode;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2b

    return v1

    :cond_2b
    goto :goto_12

    :cond_2c
    const/4 v1, 0x0

    return v1
.end method

.method public match(Ljava/lang/Class;)Lmiui/cta/CTAConfig$MatchResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)",
            "Lmiui/cta/CTAConfig$MatchResult;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/cta/CTAConfig;->mActivityNodes:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/cta/CTAConfig$ActivityNode;

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    iget-boolean v3, v1, Lmiui/cta/CTAConfig$ActivityNode;->enabled:Z

    if-eqz v3, :cond_19

    new-instance v2, Lmiui/cta/CTAConfig$MatchResult;

    invoke-direct {v2, v1}, Lmiui/cta/CTAConfig$MatchResult;-><init>(Lmiui/cta/CTAConfig$ActivitiesNode;)V

    return-object v2

    :cond_19
    return-object v2

    :cond_1a
    iget-object v3, p0, Lmiui/cta/CTAConfig;->mActivitiesNode:Lmiui/cta/CTAConfig$ActivitiesNode;

    iget-boolean v3, v3, Lmiui/cta/CTAConfig$ActivitiesNode;->enabled:Z

    if-eqz v3, :cond_28

    new-instance v2, Lmiui/cta/CTAConfig$MatchResult;

    iget-object v3, p0, Lmiui/cta/CTAConfig;->mActivitiesNode:Lmiui/cta/CTAConfig$ActivitiesNode;

    invoke-direct {v2, v3}, Lmiui/cta/CTAConfig$MatchResult;-><init>(Lmiui/cta/CTAConfig$ActivitiesNode;)V

    return-object v2

    :cond_28
    return-object v2
.end method
