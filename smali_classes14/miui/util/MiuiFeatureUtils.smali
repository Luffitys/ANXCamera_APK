.class public Lmiui/util/MiuiFeatureUtils;
.super Ljava/lang/Object;
.source "MiuiFeatureUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/MiuiFeatureUtils$ConfigReader;,
        Lmiui/util/MiuiFeatureUtils$Features;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONFIG_FILE_PATH:Ljava/lang/String; = "/system/etc/miui_feature/default.conf"

.field public static final FEATURE_COMPLETE_ANIMATION:Ljava/lang/String; = "feature_complete_animation"

.field public static final FEATURE_RUNTIME_BLUR:Ljava/lang/String; = "feature_runtime_blur"

.field public static final FEATURE_THUMBNAIL:Ljava/lang/String; = "feature_thumbnail"

.field private static final LITE_CONFIG_FILE_PATH:Ljava/lang/String; = "/system/etc/miui_feature/lite.conf"

.field private static final MIUISDK_FEATURE_PREFIX:Ljava/lang/String; = "ro.sys."

.field private static final MIUISDK_KEY:Ljava/lang/String; = "miuisdk"

.field private static final PRPPERTY:Ljava/lang/String; = "persist.sys.miui_feature_config"

.field private static final SYSTEM_KEY:Ljava/lang/String; = "system"

.field private static final TAG:Ljava/lang/String; = "MiuiFeatureUtils"

.field private static sConfigFilePath:Ljava/lang/String;

.field private static sConfigResult:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sIsLiteMode:Z

.field private static sIsLiteModeSupported:Z

.field private static sMiuisdkConfigResult:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sSystemConfigResult:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    sput-boolean v0, Lmiui/util/MiuiFeatureUtils;->sIsLiteMode:Z

    sput-boolean v0, Lmiui/util/MiuiFeatureUtils;->sIsLiteModeSupported:Z

    :try_start_5
    invoke-static {}, Lmiui/util/MiuiFeatureUtils;->init()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_13

    :catch_9
    move-exception v1

    sput-boolean v0, Lmiui/util/MiuiFeatureUtils;->sIsLiteModeSupported:Z

    const-string v0, "MiuiFeatureUtils"

    const-string v2, "Failed to initialize MiuiFeatureUtils!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_13
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocalFeature(Landroid/content/Context;)Lmiui/util/MiuiFeatureUtils$Features;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_7
    sget-object v1, Lmiui/util/MiuiFeatureUtils;->sConfigResult:Ljava/util/HashMap;

    if-eqz v1, :cond_1f

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    sget-object v1, Lmiui/util/MiuiFeatureUtils;->sConfigResult:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    new-instance v2, Lmiui/util/MiuiFeatureUtils$Features;

    invoke-direct {v2, v1}, Lmiui/util/MiuiFeatureUtils$Features;-><init>(Ljava/util/HashMap;)V

    return-object v2

    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get feature set for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiFeatureUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private static init()V
    .registers 6

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/miui_feature/default.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x1

    const-string v3, "/system/etc/miui_feature/lite.conf"

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1d

    sput-boolean v2, Lmiui/util/MiuiFeatureUtils;->sIsLiteModeSupported:Z

    :cond_1d
    const-string v0, "persist.sys.miui_feature_config"

    invoke-static {v0}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_36

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_36

    sput-object v0, Lmiui/util/MiuiFeatureUtils;->sConfigFilePath:Ljava/lang/String;

    :cond_36
    sget-object v4, Lmiui/util/MiuiFeatureUtils;->sConfigFilePath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4b

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4b

    sput-object v1, Lmiui/util/MiuiFeatureUtils;->sConfigFilePath:Ljava/lang/String;

    :cond_4b
    sget-object v1, Lmiui/util/MiuiFeatureUtils;->sConfigFilePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8f

    new-instance v1, Lmiui/util/MiuiFeatureUtils$ConfigReader;

    sget-object v4, Lmiui/util/MiuiFeatureUtils;->sConfigFilePath:Ljava/lang/String;

    invoke-direct {v1, v4}, Lmiui/util/MiuiFeatureUtils$ConfigReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lmiui/util/MiuiFeatureUtils$ConfigReader;->parse()Z

    move-result v4

    if-eqz v4, :cond_8f

    invoke-virtual {v1}, Lmiui/util/MiuiFeatureUtils$ConfigReader;->getConfigResult()Ljava/util/HashMap;

    move-result-object v4

    sput-object v4, Lmiui/util/MiuiFeatureUtils;->sConfigResult:Ljava/util/HashMap;

    if-eqz v4, :cond_7e

    const-string v5, "system"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    sput-object v4, Lmiui/util/MiuiFeatureUtils;->sSystemConfigResult:Ljava/util/HashMap;

    sget-object v4, Lmiui/util/MiuiFeatureUtils;->sConfigResult:Ljava/util/HashMap;

    const-string v5, "miuisdk"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    sput-object v4, Lmiui/util/MiuiFeatureUtils;->sMiuisdkConfigResult:Ljava/util/HashMap;

    :cond_7e
    sget-object v4, Lmiui/util/MiuiFeatureUtils;->sConfigFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_88

    sput-boolean v2, Lmiui/util/MiuiFeatureUtils;->sIsLiteMode:Z

    :cond_88
    const-string v2, "MiuiFeatureUtils"

    const-string v3, "Loaded and parsed feature configure file successfully"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8f
    return-void
.end method

.method public static isLiteMode()Z
    .registers 1

    sget-boolean v0, Lmiui/util/MiuiFeatureUtils;->sIsLiteMode:Z

    return v0
.end method

.method public static isLiteModeSupported()Z
    .registers 1

    sget-boolean v0, Lmiui/util/MiuiFeatureUtils;->sIsLiteModeSupported:Z

    return v0
.end method

.method public static isLocalFeatureSupported(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return p2

    :cond_7
    const/4 v0, 0x0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_e
    sget-object v1, Lmiui/util/MiuiFeatureUtils;->sConfigResult:Ljava/util/HashMap;

    if-eqz v1, :cond_33

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    sget-object v1, Lmiui/util/MiuiFeatureUtils;->sConfigResult:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_33

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_33

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    :cond_33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiFeatureUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public static isSystemFeatureSupported(Ljava/lang/String;Z)Z
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return p1

    :cond_7
    sget-object v0, Lmiui/util/MiuiFeatureUtils;->sSystemConfigResult:Ljava/util/HashMap;

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get system feature "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiFeatureUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public static setMiuisdkProperties()V
    .registers 6

    sget-object v0, Lmiui/util/MiuiFeatureUtils;->sMiuisdkConfigResult:Ljava/util/HashMap;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_45

    if-eqz v3, :cond_45

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ro.sys."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_45} :catch_47

    :cond_45
    goto :goto_d

    :cond_46
    goto :goto_4f

    :catch_47
    move-exception v0

    const-string v1, "MiuiFeatureUtils"

    const-string v2, "Failed to set miui sdk features."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4f
    return-void
.end method
