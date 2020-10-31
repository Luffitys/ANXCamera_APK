.class public Lcom/miui/internal/search/KeywordsCloudConfigHelper;
.super Ljava/lang/Object;
.source "KeywordsCloudConfigHelper.java"


# static fields
.field private static final CONFIG_VERSION:Ljava/lang/String; = "version"

.field private static final KEYWORDS:Ljava/lang/String; = "keywords"

.field private static final KEYWORDS_CLOUD_CONFIG_MODULE_NAME:Ljava/lang/String; = "Search"

.field private static final KEYWORDS_FILENAME:Ljava/lang/String; = "search_keyswords.json"

.field private static final KEYWORDS_ZH_CH_FILENAME:Ljava/lang/String; = "search_keywords_zh_cn.json"

.field private static final LOCALE:Ljava/lang/String; = "locale"

.field private static final TAG:Ljava/lang/String; = "KeywordCloudHelper"

.field private static final ZH_CN:Ljava/lang/String; = "zh_CN"

.field private static volatile sCloudConfigHelper:Lcom/miui/internal/search/KeywordsCloudConfigHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFile:Ljava/io/File;

.field private mKeywordsHolder:Lcom/miui/internal/search/CloudKeywordsHolder;

.field private mLocale:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->sCloudConfigHelper:Lcom/miui/internal/search/KeywordsCloudConfigHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->mLocale:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->initConfig()V

    return-void
.end method

.method private declared-synchronized buildCloudKeywordsHolderFromConfig(Lorg/json/JSONObject;)Lcom/miui/internal/search/CloudKeywordsHolder;
    .registers 9

    monitor-enter p0

    :try_start_1
    const-string v0, "version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "locale"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "keywords"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_40

    :try_start_18
    invoke-static {v2}, Lcom/miui/internal/search/SearchUtils;->jsonToMap(Lorg/json/JSONObject;)Landroid/util/ArrayMap;

    move-result-object v4
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_1c} :catch_35
    .catchall {:try_start_18 .. :try_end_1c} :catchall_40

    move-object v3, v4

    nop

    :try_start_1e
    new-instance v4, Lcom/miui/internal/search/CloudKeywordsHolder$Builder;

    invoke-direct {v4}, Lcom/miui/internal/search/CloudKeywordsHolder$Builder;-><init>()V

    invoke-virtual {v4, v0}, Lcom/miui/internal/search/CloudKeywordsHolder$Builder;->setVersion(Ljava/lang/String;)Lcom/miui/internal/search/CloudKeywordsHolder$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/miui/internal/search/CloudKeywordsHolder$Builder;->setLocale(Ljava/lang/String;)Lcom/miui/internal/search/CloudKeywordsHolder$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/miui/internal/search/CloudKeywordsHolder$Builder;->setKeywords(Landroid/util/ArrayMap;)Lcom/miui/internal/search/CloudKeywordsHolder$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/internal/search/CloudKeywordsHolder$Builder;->build()Lcom/miui/internal/search/CloudKeywordsHolder;

    move-result-object v4
    :try_end_33
    .catchall {:try_start_1e .. :try_end_33} :catchall_40

    monitor-exit p0

    return-object v4

    :catch_35
    move-exception v4

    :try_start_36
    const-string v5, "KeywordCloudHelper"

    const-string v6, "parse CloudKeywords fail!"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_40

    const/4 v5, 0x0

    monitor-exit p0

    return-object v5

    :catchall_40
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/internal/search/KeywordsCloudConfigHelper;
    .registers 4

    sget-object v0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->sCloudConfigHelper:Lcom/miui/internal/search/KeywordsCloudConfigHelper;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->sCloudConfigHelper:Lcom/miui/internal/search/KeywordsCloudConfigHelper;

    iget-object v0, v0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->mLocale:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->localeHasChange(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_e
    const-class v0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;

    monitor-enter v0

    :try_start_11
    sget-object v1, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->sCloudConfigHelper:Lcom/miui/internal/search/KeywordsCloudConfigHelper;

    if-eqz v1, :cond_1f

    sget-object v1, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->sCloudConfigHelper:Lcom/miui/internal/search/KeywordsCloudConfigHelper;

    iget-object v1, v1, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->mLocale:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->localeHasChange(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    :cond_1f
    new-instance v1, Lcom/miui/internal/search/KeywordsCloudConfigHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/internal/search/KeywordsCloudConfigHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->sCloudConfigHelper:Lcom/miui/internal/search/KeywordsCloudConfigHelper;

    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_11 .. :try_end_2b} :catchall_2e

    :cond_2b
    sget-object v0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->sCloudConfigHelper:Lcom/miui/internal/search/KeywordsCloudConfigHelper;

    return-object v0

    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v1
.end method

.method private static localeHasChange(Ljava/lang/String;)Z
    .registers 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private needToUpdate(Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;)Z
    .registers 7

    const-string v0, "locale"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->mLocale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_12

    return v2

    :cond_12
    const-string v1, "version"

    const-string v3, "-1"

    invoke-virtual {p1, v1, v3}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/internal/search/SearchUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->mKeywordsHolder:Lcom/miui/internal/search/CloudKeywordsHolder;

    const/4 v4, 0x1

    if-nez v3, :cond_24

    return v4

    :cond_24
    invoke-virtual {v3}, Lcom/miui/internal/search/CloudKeywordsHolder;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/internal/search/SearchUtils;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-le v1, v3, :cond_2f

    move v2, v4

    :cond_2f
    return v2
.end method

.method private parseKeywordsCloudFile(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 7

    const-string v0, "zh_CN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "search_keywords_zh_cn.json"

    goto :goto_d

    :cond_b
    const-string v0, "search_keyswords.json"

    :goto_d
    iget-object v1, p0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1c
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3d

    :try_start_29
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->mFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v2}, Lcom/miui/internal/search/SearchUtils;->readJSONObject(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_34} :catch_35

    return-object v3

    :catch_35
    move-exception v2

    const-string v3, "KeywordCloudHelper"

    const-string v4, "parse Keywords cloud file fail!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3d
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public declared-synchronized getKeywords(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->mKeywordsHolder:Lcom/miui/internal/search/CloudKeywordsHolder;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->mKeywordsHolder:Lcom/miui/internal/search/CloudKeywordsHolder;

    invoke-virtual {v0}, Lcom/miui/internal/search/CloudKeywordsHolder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_16

    :cond_e
    iget-object v0, p0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->mKeywordsHolder:Lcom/miui/internal/search/CloudKeywordsHolder;

    invoke-virtual {v0, p1}, Lcom/miui/internal/search/CloudKeywordsHolder;->getKeywords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1a

    monitor-exit p0

    return-object v0

    :cond_16
    :goto_16
    :try_start_16
    const-string v0, ""
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-object v0

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public initConfig()V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->mLocale:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->parseKeywordsCloudFile(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-direct {p0, v0}, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->buildCloudKeywordsHolderFromConfig(Lorg/json/JSONObject;)Lcom/miui/internal/search/CloudKeywordsHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->mKeywordsHolder:Lcom/miui/internal/search/CloudKeywordsHolder;

    return-void
.end method

.method public declared-synchronized updateKeywordsCloudConfig(Landroid/content/Context;)V
    .registers 7

    monitor-enter p0

    nop

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "Search"

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3a

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    invoke-virtual {v2}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_25

    goto :goto_12

    :cond_25
    invoke-direct {p0, v2}, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->needToUpdate(Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;)Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-direct {p0, v3}, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->buildCloudKeywordsHolderFromConfig(Lorg/json/JSONObject;)Lcom/miui/internal/search/CloudKeywordsHolder;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->mKeywordsHolder:Lcom/miui/internal/search/CloudKeywordsHolder;

    if-nez v4, :cond_34

    goto :goto_12

    :cond_34
    iget-object v4, p0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->mFile:Ljava/io/File;

    invoke-static {v3, v4}, Lcom/miui/internal/search/SearchUtils;->writeJsonToFile(Lorg/json/JSONObject;Ljava/io/File;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_39} :catch_3d
    .catchall {:try_start_2 .. :try_end_39} :catchall_3b

    :cond_39
    goto :goto_12

    :cond_3a
    goto :goto_45

    :catchall_3b
    move-exception p1

    goto :goto_47

    :catch_3d
    move-exception v0

    :try_start_3e
    const-string v1, "KeywordCloudHelper"

    const-string v2, "update Keywords cloud config fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_3b

    :goto_45
    monitor-exit p0

    return-void

    :goto_47
    monitor-exit p0

    throw p1
.end method
