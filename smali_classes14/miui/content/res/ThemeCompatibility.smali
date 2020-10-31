.class public Lmiui/content/res/ThemeCompatibility;
.super Ljava/lang/Object;
.source "ThemeCompatibility.java"


# static fields
.field private static final COMPATIBILITY_DEFAULTVALUE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final COMPATIBILITY_FALLBACKS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final DISABLE_MIUI_THEME_MECHANISM:Ljava/lang/String; = "/data/system/theme_config/theme_disable"

.field private static final MIUI_OPTIMIZATION_FALLBACK:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sThemeEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme_config/theme_disable"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lmiui/content/res/ThemeCompatibility;->sThemeEnabled:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/content/res/ThemeCompatibility;->COMPATIBILITY_FALLBACKS:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/content/res/ThemeCompatibility;->COMPATIBILITY_DEFAULTVALUE:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/content/res/ThemeCompatibility;->MIUI_OPTIMIZATION_FALLBACK:Ljava/util/Map;

    sget-boolean v0, Lmiui/content/res/ThemeCompatibility;->sThemeEnabled:Z

    if-eqz v0, :cond_c4

    invoke-static {}, Lmiui/content/res/ThemeCompatibilityLoader;->loadConfig()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;

    iget-object v2, v1, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;->mCompatibilityType:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    sget-object v3, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;->FALLBACK:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    if-ne v2, v3, :cond_60

    move-object v2, v1

    check-cast v2, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;

    iget-object v3, v2, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResPkgName:Ljava/lang/String;

    sget-object v4, Lmiui/content/res/ThemeCompatibility;->COMPATIBILITY_FALLBACKS:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_5c

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v5

    sget-object v5, Lmiui/content/res/ThemeCompatibility;->COMPATIBILITY_FALLBACKS:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5c
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_84

    :cond_60
    iget-object v2, v1, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;->mCompatibilityType:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    sget-object v3, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;->NEW_DEF_VALUE:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    if-ne v2, v3, :cond_84

    move-object v2, v1

    check-cast v2, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;

    iget-object v3, v2, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;->mResPkgName:Ljava/lang/String;

    sget-object v4, Lmiui/content/res/ThemeCompatibility;->COMPATIBILITY_DEFAULTVALUE:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_80

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v5

    sget-object v5, Lmiui/content/res/ThemeCompatibility;->COMPATIBILITY_DEFAULTVALUE:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_80
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_85

    :cond_84
    :goto_84
    nop

    :goto_85
    goto :goto_30

    :cond_86
    sget-object v0, Lmiui/content/res/ThemeCompatibility;->COMPATIBILITY_FALLBACKS:Ljava/util/Map;

    const-string v1, "miui"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_c3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_96
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;

    iget-object v3, v2, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResType:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    iget-object v4, v2, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResOriginalName:Ljava/lang/String;

    invoke-static {v3, v4}, Lmiui/content/res/ThemeCompatibility;->combineFallbackInfoKey(Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmiui/content/res/ThemeCompatibility;->MIUI_OPTIMIZATION_FALLBACK:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_bf

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v5

    sget-object v5, Lmiui/content/res/ThemeCompatibility;->MIUI_OPTIMIZATION_FALLBACK:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_bf
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_96

    :cond_c3
    goto :goto_cb

    :cond_c4
    const-string v0, "ThemeCompatibility"

    const-string v1, "theme disabled flag has been checked!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_cb
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static combineFallbackInfoKey(Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_c
    invoke-static {}, Lmiui/content/res/FixedSizeStringBuffer;->getBuffer()Lmiui/content/res/FixedSizeStringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;II)V

    invoke-virtual {v1}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lmiui/content/res/FixedSizeStringBuffer;->freeBuffer(Lmiui/content/res/FixedSizeStringBuffer;)V

    return-object v2
.end method

.method public static getFallbackList(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lmiui/content/res/ThemeCompatibility;->COMPATIBILITY_FALLBACKS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static getMayFilterFallbackList(Ljava/lang/String;Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "miui"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {p2}, Lcom/miui/internal/content/res/ThemeToolUtils;->getNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmiui/content/res/ThemeCompatibility;->MIUI_OPTIMIZATION_FALLBACK:Ljava/util/Map;

    invoke-static {p1, v0}, Lmiui/content/res/ThemeCompatibility;->combineFallbackInfoKey(Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1

    :cond_19
    sget-object v0, Lmiui/content/res/ThemeCompatibility;->COMPATIBILITY_FALLBACKS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static getNewDefaultValueList(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;",
            ">;"
        }
    .end annotation

    sget-object v0, Lmiui/content/res/ThemeCompatibility;->COMPATIBILITY_DEFAULTVALUE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static isCompatibleResource(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "/data/system/theme/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme/compatibility-v12/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x0

    return v0

    :cond_22
    const/4 v0, 0x1

    return v0
.end method

.method public static isThemeEnabled()Z
    .registers 1

    sget-boolean v0, Lmiui/content/res/ThemeCompatibility;->sThemeEnabled:Z

    return v0
.end method
