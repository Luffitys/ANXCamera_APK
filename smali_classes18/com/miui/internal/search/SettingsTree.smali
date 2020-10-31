.class public Lcom/miui/internal/search/SettingsTree;
.super Lcom/miui/internal/search/IndexTree;
.source "SettingsTree.java"


# static fields
.field public static final ACTION_SETTINGS_SEARCH_INIT:Ljava/lang/String; = "miui.intent.action.SETTINGS_SEARCH_INIT"

.field public static final DISABLED:I = 0x1

.field public static final ENABLED:I = 0x3

.field public static final FLAG_AVAILABLE:I = 0x2

.field public static final FLAG_IGNORED:I = 0x4

.field public static final FLAG_VISIBLE:I = 0x1

.field public static final INVISIBLE:I = 0x0

.field public static final SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final TAG:Ljava/lang/String; = "SettingsTree"

.field public static final sSettingsEntryToIconMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final sSettingsEntryToPathMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCategory:Ljava/lang/String;

.field private mCategoryString:Ljava/lang/String;

.field protected final mContext:Landroid/content/Context;

.field private mFeature:Ljava/lang/String;

.field private mFragment:Ljava/lang/String;

.field private mIcon:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mIsCheckBox:Z

.field private mIsOldman:Z

.field private mIsSecondSpace:Z

.field private mKeywords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKeywordsResource:Ljava/lang/String;

.field private mLevel:I

.field private mLocale:Ljava/util/Locale;

.field private mResource:Ljava/lang/String;

.field private mStatus:I

.field private mSummary:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTmp:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/internal/search/SettingsTree;->sSettingsEntryToPathMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/internal/search/SettingsTree;->sSettingsEntryToIconMap:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/miui/internal/search/SettingsTree;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/miui/internal/search/IndexTree;-><init>(Lcom/miui/internal/search/IndexTree;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_a

    iput v0, p0, Lcom/miui/internal/search/SettingsTree;->mLevel:I

    goto :goto_f

    :cond_a
    iget v2, p3, Lcom/miui/internal/search/SettingsTree;->mLevel:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/miui/internal/search/SettingsTree;->mLevel:I

    :goto_f
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getPackage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "package"

    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/miui/internal/search/SearchUtils;->getPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/internal/search/SettingsTree;->mContext:Landroid/content/Context;

    const-string v3, "resource"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/internal/search/SettingsTree;->mResource:Ljava/lang/String;

    const-string v3, "category"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/internal/search/SettingsTree;->mCategory:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/miui/internal/search/SettingsTree;->mTitle:Ljava/lang/String;

    const-string v4, "keywords"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/search/SettingsTree;->mKeywordsResource:Ljava/lang/String;

    const-string v4, "summary"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/search/SettingsTree;->mSummary:Ljava/lang/String;

    const-string v4, "icon"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/search/SettingsTree;->mIcon:Ljava/lang/String;

    const-string v4, "fragment"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/search/SettingsTree;->mFragment:Ljava/lang/String;

    :try_start_52
    new-instance v4, Lcom/miui/internal/search/TinyIntent;

    const-string v5, "intent"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/miui/internal/search/TinyIntent;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v4}, Lcom/miui/internal/search/TinyIntent;->toIntent()Landroid/content/Intent;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/search/SettingsTree;->mIntent:Landroid/content/Intent;
    :try_end_63
    .catch Lorg/json/JSONException; {:try_start_52 .. :try_end_63} :catch_64

    goto :goto_67

    :catch_64
    move-exception v4

    iput-object v3, p0, Lcom/miui/internal/search/SettingsTree;->mIntent:Landroid/content/Intent;

    :goto_67
    iget-object v4, p0, Lcom/miui/internal/search/SettingsTree;->mIntent:Landroid/content/Intent;

    if-eqz v4, :cond_6e

    invoke-virtual {p0, v4}, Lcom/miui/internal/search/SettingsTree;->initSettingsEntryToPathMap(Landroid/content/Intent;)V

    :cond_6e
    const-string v4, "feature"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/search/SettingsTree;->mFeature:Ljava/lang/String;

    const-string v4, "second_space"

    invoke-virtual {p2, v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/internal/search/SettingsTree;->mIsSecondSpace:Z

    const-string v4, "is_checkbox"

    invoke-virtual {p2, v4, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/internal/search/SettingsTree;->mIsCheckBox:Z

    const-string v4, "is_oldman"

    invoke-virtual {p2, v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/internal/search/SettingsTree;->mIsOldman:Z

    const-string v1, "son"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_bb

    iget-boolean v4, p0, Lcom/miui/internal/search/SettingsTree;->mIsSecondSpace:Z

    invoke-static {v4}, Lcom/miui/internal/search/SearchUtils;->removeViaSecondSpace(Z)Z

    move-result v4

    if-nez v4, :cond_bb

    iget-object v4, p0, Lcom/miui/internal/search/SettingsTree;->mFeature:Ljava/lang/String;

    invoke-static {v4}, Lcom/miui/internal/search/SearchUtils;->removeViaFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_bb

    const/4 v4, 0x0

    :goto_a7
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_bb

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {p1, v5, p0, p4}, Lcom/miui/internal/search/SettingsTree;->newInstance(Landroid/content/Context;Lorg/json/JSONObject;Lcom/miui/internal/search/SettingsTree;Z)Lcom/miui/internal/search/SettingsTree;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/miui/internal/search/SettingsTree;->addSon(Lcom/miui/internal/search/IndexTree;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_a7

    :cond_bb
    const/4 v4, 0x3

    const-string v5, "status"

    invoke-virtual {p2, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/miui/internal/search/SettingsTree;->mStatus:I

    const-string v4, "temporary"

    invoke-virtual {p2, v4, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/internal/search/SettingsTree;->mTmp:Z

    iput-object v3, p0, Lcom/miui/internal/search/SettingsTree;->mLocale:Ljava/util/Locale;

    return-void
.end method

.method private dispatchInitialize()Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/internal/search/SettingsTree;->mIsSecondSpace:Z

    invoke-static {v0}, Lcom/miui/internal/search/SearchUtils;->removeViaSecondSpace(Z)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mFeature:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/internal/search/SearchUtils;->removeViaFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->initialize()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    return v0
.end method

.method private getCloudKeywords()[Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "search_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/internal/search/SettingsTree;->mResource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->getInstance(Landroid/content/Context;)Lcom/miui/internal/search/KeywordsCloudConfigHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->getKeywords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2a

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2a
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    return-object v2
.end method

.method private getColumnValues(Lcom/miui/internal/search/RankedCursor;DZ)V
    .registers 12

    invoke-virtual {p1}, Lcom/miui/internal/search/RankedCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/internal/search/RankedCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    :goto_c
    array-length v4, v0

    if-ge v3, v4, :cond_6a

    aget-object v4, v0, v3

    const-string v5, "intent"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5f

    if-eqz p4, :cond_20

    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getIntentForStart()Landroid/content/Intent;

    move-result-object v4

    goto :goto_30

    :cond_20
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getParent()Lcom/miui/internal/search/SettingsTree;

    move-result-object v4

    if-nez v4, :cond_28

    const/4 v4, 0x0

    goto :goto_30

    :cond_28
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getParent()Lcom/miui/internal/search/SettingsTree;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/internal/search/SettingsTree;->getIntentForStart()Landroid/content/Intent;

    move-result-object v4

    :goto_30
    nop

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    :goto_3b
    aget-object v5, v1, v3

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_59

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v1, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    goto :goto_3b

    :cond_59
    aget-object v5, v1, v3

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_67

    :cond_5f
    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Lcom/miui/internal/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    :goto_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_6a
    invoke-virtual {p1, p2, p3, v1}, Lcom/miui/internal/search/RankedCursor;->addRow(D[Ljava/lang/String;)V

    return-void
.end method

.method private isSelected(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 20

    move-object/from16 v0, p1

    const/4 v1, 0x1

    if-eqz v0, :cond_64

    if-nez p2, :cond_a

    move-object/from16 v15, p0

    goto :goto_66

    :cond_a
    const/4 v2, 0x0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_14
    if-ge v6, v4, :cond_60

    aget-object v7, v3, v6

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v9, v8, v5

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    aget-object v10, v8, v1

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, "?"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_37

    add-int/lit8 v11, v2, 0x1

    aget-object v10, p2, v2

    move v2, v11

    :cond_37
    sget-object v11, Lcom/miui/internal/search/Function;->FUNCTIONS:[Ljava/lang/String;

    array-length v12, v11

    move v13, v5

    :goto_3b
    if-ge v13, v12, :cond_5a

    aget-object v14, v11, v13

    invoke-virtual {v9, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_54

    move-object/from16 v15, p0

    invoke-virtual {v15, v14}, Lcom/miui/internal/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_53

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_56

    :cond_53
    return v5

    :cond_54
    move-object/from16 v15, p0

    :cond_56
    add-int/lit8 v13, v13, 0x1

    const/4 v1, 0x1

    goto :goto_3b

    :cond_5a
    move-object/from16 v15, p0

    add-int/lit8 v6, v6, 0x1

    const/4 v1, 0x1

    goto :goto_14

    :cond_60
    move-object/from16 v15, p0

    const/4 v1, 0x1

    return v1

    :cond_64
    move-object/from16 v15, p0

    :goto_66
    return v1
.end method

.method private match(Ljava/lang/String;)D
    .registers 21

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "\u2011"

    const-string v7, "-"

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/miui/internal/search/SettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_48

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "null title: resource = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/miui/internal/search/SettingsTree;->mResource:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", class = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SettingsTree"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_48
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/miui/internal/search/SearchUtils;->doSimpleMatch(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v9

    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v11, v1, v9

    if-ltz v11, :cond_63

    return-wide v9

    :cond_63
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/search/SettingsTree;->getKeywords()[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11

    const/4 v13, 0x0

    :goto_69
    if-ge v13, v12, :cond_92

    aget-object v14, v11, v13

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v3}, Lcom/miui/internal/search/SearchUtils;->doSimpleMatch(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v15

    const-wide v17, 0x3fb999999999999aL    # 0.1

    sub-double v9, v15, v17

    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v15, v1, v9

    if-ltz v15, :cond_8f

    return-wide v9

    :cond_8f
    add-int/lit8 v13, v13, 0x1

    goto :goto_69

    :cond_92
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/search/SettingsTree;->getPinyin()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/internal/search/SearchUtils;->doPinyinMatch(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v4

    const-wide v6, 0x3fd999999999999aL    # 0.4

    sub-double/2addr v4, v6

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmpg-double v4, v1, v4

    if-gez v4, :cond_ac

    const-wide/16 v1, 0x0

    :cond_ac
    return-wide v1
.end method

.method protected static newInstance(Landroid/content/Context;Lorg/json/JSONObject;Lcom/miui/internal/search/SettingsTree;)Lcom/miui/internal/search/SettingsTree;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/miui/internal/search/SettingsTree;->newInstance(Landroid/content/Context;Lorg/json/JSONObject;Lcom/miui/internal/search/SettingsTree;Z)Lcom/miui/internal/search/SettingsTree;

    move-result-object v0

    return-object v0
.end method

.method protected static newInstance(Landroid/content/Context;Lorg/json/JSONObject;Lcom/miui/internal/search/SettingsTree;Z)Lcom/miui/internal/search/SettingsTree;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-class v0, Lcom/miui/internal/search/SettingsTree;

    const-string v1, "class"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "package"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "com.android.settings"

    const/4 v5, 0x0

    if-eqz v3, :cond_5b

    if-eqz p2, :cond_2c

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_5b

    :cond_2c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4b

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_39

    goto :goto_4b

    :cond_39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".search.CustomSettingsTree"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5b

    :cond_4b
    :goto_4b
    new-instance v0, Lcom/miui/internal/search/SettingsTree;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/internal/search/SettingsTree;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/miui/internal/search/SettingsTree;Z)V

    if-eqz p3, :cond_59

    invoke-direct {v0}, Lcom/miui/internal/search/SettingsTree;->dispatchInitialize()Z

    move-result v3

    if-eqz v3, :cond_59

    goto :goto_5a

    :cond_59
    move-object v5, v0

    :goto_5a
    return-object v5

    :cond_5b
    :goto_5b
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_62

    move-object v2, v1

    :cond_62
    invoke-static {p0, v2}, Lcom/miui/internal/search/SearchUtils;->isPackageExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    const-string v6, "SettingsTree"

    if-nez v3, :cond_84

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " doesn\'t exist any more"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_84
    nop

    const/4 v3, 0x0

    :try_start_86
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8d

    goto :goto_8e

    :cond_8d
    move-object v4, v2

    :goto_8e
    invoke-static {p0, v4}, Lcom/miui/internal/search/SearchUtils;->getPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v7, 0x1

    invoke-static {v1, v7, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_da

    const/4 v8, 0x4

    new-array v9, v8, [Ljava/lang/Class;

    const-class v10, Landroid/content/Context;

    aput-object v10, v9, v3

    const-class v10, Lorg/json/JSONObject;

    aput-object v10, v9, v7

    const/4 v10, 0x2

    aput-object v0, v9, v10

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x3

    aput-object v0, v9, v11

    invoke-virtual {v4, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p0, v8, v3

    aput-object p1, v8, v7

    aput-object p2, v8, v10

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v8, v11

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/internal/search/SettingsTree;

    if-eqz p3, :cond_d8

    invoke-direct {v7}, Lcom/miui/internal/search/SettingsTree;->dispatchInitialize()Z

    move-result v3

    if-eqz v3, :cond_d8

    goto :goto_d9

    :cond_d8
    move-object v5, v7

    :goto_d9
    return-object v5

    :cond_da
    new-instance v7, Ljava/lang/ClassCastException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cannot cast "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_101} :catch_101

    :catch_101
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "drop subtree under "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Lcom/miui/internal/search/SettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v5
.end method

.method public static newInstance(Landroid/content/Context;Lorg/json/JSONObject;Z)Lcom/miui/internal/search/SettingsTree;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/miui/internal/search/SettingsTree;->newInstance(Landroid/content/Context;Lorg/json/JSONObject;Lcom/miui/internal/search/SettingsTree;Z)Lcom/miui/internal/search/SettingsTree;

    move-result-object v0

    return-object v0
.end method

.method private setColumnValues([Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_e

    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lcom/miui/internal/search/SettingsTree;->setColumnValue(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method

.method private updateCategoryRelated()V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mCategory:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/miui/internal/search/SettingsTree;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/search/SettingsTree;->mCategory:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/internal/search/SearchUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mCategoryString:Ljava/lang/String;

    :cond_16
    return-void
.end method

.method private updateKeywords()V
    .registers 4

    invoke-direct {p0}, Lcom/miui/internal/search/SettingsTree;->getCloudKeywords()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    array-length v1, v0

    if-gtz v1, :cond_12

    :cond_9
    iget-object v1, p0, Lcom/miui/internal/search/SettingsTree;->mKeywordsResource:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    :cond_12
    if-eqz v0, :cond_17

    array-length v1, v0

    if-gtz v1, :cond_29

    :cond_17
    iget-object v1, p0, Lcom/miui/internal/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/miui/internal/search/SettingsTree;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/search/SettingsTree;->mKeywordsResource:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miui/internal/search/SearchUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_29
    invoke-virtual {p0, v0}, Lcom/miui/internal/search/SettingsTree;->saveKeywords([Ljava/lang/String;)V

    return-void
.end method

.method private updateLocale()V
    .registers 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/search/SettingsTree;->mLocale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    invoke-direct {p0}, Lcom/miui/internal/search/SettingsTree;->updateResourceRelated()V

    invoke-direct {p0}, Lcom/miui/internal/search/SettingsTree;->updateCategoryRelated()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mLocale:Ljava/util/Locale;

    return-void
.end method

.method private updateResourceRelated()V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mResource:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/miui/internal/search/SettingsTree;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/search/SettingsTree;->mResource:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/internal/search/SearchUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mTitle:Ljava/lang/String;

    :cond_16
    return-void
.end method


# virtual methods
.method public commit(Ljava/lang/StringBuilder;)V
    .registers 4

    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getParent()Lcom/miui/internal/search/SettingsTree;

    move-result-object v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_f

    const-string v1, ""

    goto :goto_13

    :cond_f
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_13
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    return-void
.end method

.method public final delete(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/search/SettingsTree;->isSelected(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final dispatchOnReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/search/SettingsTree;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getSons()Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getSons()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/search/SettingsTree;

    invoke-virtual {v1, p1, p2}, Lcom/miui/internal/search/SettingsTree;->dispatchOnReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_11

    :cond_21
    return-void
.end method

.method protected getCategory(Z)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/miui/internal/search/SettingsTree;->updateLocale()V

    :cond_5
    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mCategoryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/internal/search/SettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    :cond_15
    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mCategoryString:Ljava/lang/String;

    goto :goto_1e

    :cond_18
    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mCategory:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_1e
    return-object v0
.end method

.method public getCheckable()Lcom/miui/internal/search/BackgroundCheckable;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getColumnValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_18e

    :cond_9
    goto/16 :goto_de

    :sswitch_b
    const-string v0, "temporary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x11

    goto/16 :goto_df

    :sswitch_17
    const-string v0, "is_checkbox"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xe

    goto/16 :goto_df

    :sswitch_23
    const-string v0, "keywords"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x7

    goto/16 :goto_df

    :sswitch_2e
    const-string v0, "title"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    goto/16 :goto_df

    :sswitch_39
    const-string v0, "level"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x12

    goto/16 :goto_df

    :sswitch_45
    const-string v0, "class"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    goto/16 :goto_df

    :sswitch_50
    const-string v0, "category"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x4

    goto/16 :goto_df

    :sswitch_5b
    const-string v0, "path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x6

    goto/16 :goto_df

    :sswitch_66
    const-string v0, "icon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x9

    goto/16 :goto_df

    :sswitch_72
    const-string v0, "resource"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    goto/16 :goto_df

    :sswitch_7d
    const-string v0, "second_space"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xd

    goto :goto_df

    :sswitch_88
    const-string v0, "is_oldman"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xf

    goto :goto_df

    :sswitch_93
    const-string v0, "package"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_df

    :sswitch_9d
    const-string v0, "status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x10

    goto :goto_df

    :sswitch_a8
    const-string v0, "category_origin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x5

    goto :goto_df

    :sswitch_b2
    const-string v0, "feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xc

    goto :goto_df

    :sswitch_bd
    const-string v0, "intent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xb

    goto :goto_df

    :sswitch_c8
    const-string v0, "fragment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    goto :goto_df

    :sswitch_d3
    const-string v0, "summary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    goto :goto_df

    :goto_de
    const/4 v0, -0x1

    :goto_df
    packed-switch v0, :pswitch_data_1dc

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown column: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_f9
    iget v0, p0, Lcom/miui/internal/search/SettingsTree;->mLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_100
    iget-boolean v0, p0, Lcom/miui/internal/search/SettingsTree;->mTmp:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_107
    :try_start_107
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getStatus()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_10f} :catch_110

    return-object v0

    :catch_110
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hide because exception occurs when get status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/miui/internal/search/SettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SettingsTree"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_130
    iget-boolean v0, p0, Lcom/miui/internal/search/SettingsTree;->mIsOldman:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_137
    iget-boolean v0, p0, Lcom/miui/internal/search/SettingsTree;->mIsCheckBox:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_13e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was removed once initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "use getIntentForStart() instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_15d
    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mFragment:Ljava/lang/String;

    return-object v0

    :pswitch_160
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getIcon()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_165
    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mSummary:Ljava/lang/String;

    return-object v0

    :pswitch_168
    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mKeywordsResource:Ljava/lang/String;

    return-object v0

    :pswitch_16b
    invoke-virtual {p0, v2, v2}, Lcom/miui/internal/search/SettingsTree;->getPath(ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_170
    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mCategory:Ljava/lang/String;

    return-object v0

    :pswitch_173
    invoke-virtual {p0, v2}, Lcom/miui/internal/search/SettingsTree;->getCategory(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_178
    invoke-virtual {p0, v2}, Lcom/miui/internal/search/SettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_17d
    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mResource:Ljava/lang/String;

    return-object v0

    :pswitch_180
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_189
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_18e
    .sparse-switch
        -0x6eb9585a -> :sswitch_d3
        -0x625d1db0 -> :sswitch_c8
        -0x468ec964 -> :sswitch_bd
        -0x3a5d850a -> :sswitch_b2
        -0x35920a79 -> :sswitch_a8
        -0x3532300e -> :sswitch_9d
        -0x301acbba -> :sswitch_93
        -0x20cc6178 -> :sswitch_88
        -0x158f8e85 -> :sswitch_7d
        -0x14543bf2 -> :sswitch_72
        0x313c79 -> :sswitch_66
        0x346425 -> :sswitch_5b
        0x302bcfe -> :sswitch_50
        0x5a5a978 -> :sswitch_45
        0x6219b84 -> :sswitch_39
        0x6942258 -> :sswitch_2e
        0x1f2e9faa -> :sswitch_23
        0x2fcb6f38 -> :sswitch_17
        0x76507e51 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_1dc
    .packed-switch 0x0
        :pswitch_189
        :pswitch_180
        :pswitch_17d
        :pswitch_178
        :pswitch_173
        :pswitch_170
        :pswitch_16b
        :pswitch_168
        :pswitch_165
        :pswitch_160
        :pswitch_15d
        :pswitch_155
        :pswitch_13e
        :pswitch_13e
        :pswitch_137
        :pswitch_130
        :pswitch_107
        :pswitch_100
        :pswitch_f9
    .end packed-switch
.end method

.method public getIcon()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mIcon:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getParent()Lcom/miui/internal/search/SettingsTree;

    move-result-object v0

    if-nez v0, :cond_11

    const-string v0, ""

    goto :goto_19

    :cond_11
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getParent()Lcom/miui/internal/search/SettingsTree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/search/SettingsTree;->getIcon()Ljava/lang/String;

    move-result-object v0

    :goto_19
    return-object v0

    :cond_1a
    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_c

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/internal/search/SettingsTree;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    goto :goto_34

    :cond_c
    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mFragment:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.SubSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/internal/search/SettingsTree;->mFragment:Ljava/lang/String;

    const-string v2, ":settings:show_fragment"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, ":android:no_headers"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    :goto_34
    return-object v0
.end method

.method protected getIntentForStart()Landroid/content/Intent;
    .registers 5

    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_31

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    const-string v1, ":settings:show_fragment_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_48

    invoke-virtual {p0, v2}, Lcom/miui/internal/search/SettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_48

    :cond_31
    const-string v1, ":android:show_fragment_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_48

    const-string v3, "install_as_uid"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_48

    invoke-virtual {p0, v2}, Lcom/miui/internal/search/SettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_48
    :goto_48
    return-object v0

    :cond_49
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getParent()Lcom/miui/internal/search/SettingsTree;

    move-result-object v1

    if-eqz v1, :cond_58

    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getParent()Lcom/miui/internal/search/SettingsTree;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/internal/search/SettingsTree;->getIntentForStart()Landroid/content/Intent;

    move-result-object v1

    goto :goto_59

    :cond_58
    const/4 v1, 0x0

    :goto_59
    return-object v1
.end method

.method protected getKeywords()[Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Lcom/miui/internal/search/SettingsTree;->updateKeywords()V

    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mKeywords:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    new-array v0, v1, [Ljava/lang/String;

    goto :goto_13

    :cond_b
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_13
    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .registers 2

    const-string v0, "com.android.settings"

    return-object v0
.end method

.method protected final getPackageContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 3

    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/internal/search/SearchUtils;->getPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    nop

    return-object v0
.end method

.method public bridge synthetic getParent()Lcom/miui/internal/search/IndexTree;
    .registers 2

    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getParent()Lcom/miui/internal/search/SettingsTree;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/miui/internal/search/SettingsTree;
    .registers 2

    invoke-super {p0}, Lcom/miui/internal/search/IndexTree;->getParent()Lcom/miui/internal/search/IndexTree;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/search/SettingsTree;

    return-object v0
.end method

.method protected getPath(ZZ)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getParent()Lcom/miui/internal/search/SettingsTree;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    goto :goto_12

    :cond_9
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getParent()Lcom/miui/internal/search/SettingsTree;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/internal/search/SettingsTree;->getPath(ZZ)Ljava/lang/String;

    move-result-object v0

    :goto_12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_38

    invoke-virtual {p0, p1}, Lcom/miui/internal/search/SettingsTree;->getCategory(Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_3c

    :cond_38
    invoke-virtual {p0, p1}, Lcom/miui/internal/search/SettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object v2

    :goto_3c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getPinyin()Ljava/lang/String;
    .registers 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    return-object v1

    :cond_12
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/internal/search/SettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/internal/search/SettingsTree;->mResource:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_28

    :cond_24
    invoke-static {v0}, Lcom/miui/internal/search/SearchUtils;->getPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_28
    return-object v1
.end method

.method public getSons()Ljava/util/LinkedList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lcom/miui/internal/search/SettingsTree;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/miui/internal/search/IndexTree;->getSons()Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method protected getStatus()I
    .registers 2

    iget v0, p0, Lcom/miui/internal/search/SettingsTree;->mStatus:I

    return v0
.end method

.method public getStatusIgnoreException()I
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getStatus()I

    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_7

    move v0, v1

    goto :goto_23

    :catch_7
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hide because exception occurs when query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/miui/internal/search/SettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SettingsTree"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_23
    return v0
.end method

.method protected getTitle(Z)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/miui/internal/search/SettingsTree;->updateLocale()V

    :cond_5
    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mTitle:Ljava/lang/String;

    goto :goto_18

    :cond_12
    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mResource:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_18
    return-object v0
.end method

.method protected final getUri()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.miui.settings/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/miui/internal/search/SettingsTree;->getPath(ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initSettingsEntryToPathMap(Landroid/content/Intent;)V
    .registers 7

    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_64

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.settings"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1f

    return-void

    :cond_1f
    :try_start_1f
    sget-object v1, Lcom/miui/internal/search/SettingsTree;->sSettingsEntryToPathMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/miui/internal/search/SettingsTree;->getPath(ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, ""

    iget-object v2, p0, Lcom/miui/internal/search/SettingsTree;->mIcon:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getParent()Lcom/miui/internal/search/SettingsTree;

    move-result-object v2

    if-eqz v2, :cond_4a

    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getParent()Lcom/miui/internal/search/SettingsTree;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/internal/search/SettingsTree;->mIcon:Ljava/lang/String;

    move-object v1, v2

    goto :goto_4d

    :cond_4a
    iget-object v2, p0, Lcom/miui/internal/search/SettingsTree;->mIcon:Ljava/lang/String;

    move-object v1, v2

    :goto_4d
    sget-object v2, Lcom/miui/internal/search/SettingsTree;->sSettingsEntryToIconMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_5a} :catch_5c

    nop

    goto :goto_64

    :catch_5c
    move-exception v1

    const-string v2, "SettingsTree"

    const-string v3, "Ignore init path by catch exception: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_64
    :goto_64
    return-void
.end method

.method public initialize()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final insert(Landroid/content/ContentValues;)Lcom/miui/internal/search/IndexTree;
    .registers 10

    const-string v0, "parent"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/search/SettingsTree;->mResource:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_10

    return-object v2

    :cond_10
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :try_start_21
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    array-length v4, v1

    const/4 v5, 0x0

    :goto_28
    if-ge v5, v4, :cond_37

    aget-object v6, v1, v5

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    nop

    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    :cond_37
    iget-object v4, p0, Lcom/miui/internal/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, p0}, Lcom/miui/internal/search/SettingsTree;->newInstance(Landroid/content/Context;Lorg/json/JSONObject;Lcom/miui/internal/search/SettingsTree;)Lcom/miui/internal/search/SettingsTree;

    move-result-object v2
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_3d} :catch_3e

    return-object v2

    :catch_3e
    move-exception v3

    return-object v2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    return-void
.end method

.method public final query(Lcom/miui/internal/search/RankedCursor;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 15

    invoke-static {}, Lcom/miui/internal/search/SearchUtils;->isOldmanMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/miui/internal/search/SettingsTree;->mIsOldman:Z

    if-nez v0, :cond_c

    return v1

    :cond_c
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->hasSons()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getStatusIgnoreException()I

    move-result v0

    goto :goto_18

    :cond_17
    const/4 v0, 0x3

    :goto_18
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_1d

    return v1

    :cond_1d
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x1

    if-eqz v2, :cond_24

    move v2, v3

    goto :goto_25

    :cond_24
    move v2, v1

    :goto_25
    and-int/lit8 v4, v0, 0x4

    if-nez v4, :cond_5e

    invoke-direct {p0, p3, p4}, Lcom/miui/internal/search/SettingsTree;->isSelected(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5e

    if-eqz p6, :cond_34

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    goto :goto_38

    :cond_34
    invoke-direct {p0, p2}, Lcom/miui/internal/search/SettingsTree;->match(Ljava/lang/String;)D

    move-result-wide v4

    :goto_38
    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_5e

    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->hasSons()Z

    move-result v6

    if-eqz v6, :cond_48

    invoke-direct {p0, p1, v4, v5, v2}, Lcom/miui/internal/search/SettingsTree;->getColumnValues(Lcom/miui/internal/search/RankedCursor;DZ)V

    goto :goto_5e

    :cond_48
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getStatusIgnoreException()I

    move-result v0

    and-int/lit8 v6, v0, 0x1

    if-nez v6, :cond_51

    return v1

    :cond_51
    and-int/lit8 v6, v0, 0x2

    if-eqz v6, :cond_56

    move v1, v3

    :cond_56
    move v2, v1

    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_5e

    invoke-direct {p0, p1, v4, v5, v2}, Lcom/miui/internal/search/SettingsTree;->getColumnValues(Lcom/miui/internal/search/RankedCursor;DZ)V

    :cond_5e
    :goto_5e
    return v2
.end method

.method public saveKeywords([Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_2d

    array-length v0, p1

    if-gtz v0, :cond_6

    goto :goto_2d

    :cond_6
    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mKeywords:Ljava/util/List;

    if-nez v0, :cond_16

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mKeywords:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void

    :cond_16
    array-length v0, p1

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v0, :cond_2c

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/miui/internal/search/SettingsTree;->mKeywords:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    iget-object v3, p0, Lcom/miui/internal/search/SettingsTree;->mKeywords:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_2c
    return-void

    :cond_2d
    :goto_2d
    return-void
.end method

.method public setColumnValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_146

    :cond_7
    goto/16 :goto_c3

    :sswitch_9
    const-string v0, "temporary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x10

    goto/16 :goto_c4

    :sswitch_15
    const-string v0, "is_checkbox"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    goto/16 :goto_c4

    :sswitch_21
    const-string v0, "keywords"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto/16 :goto_c4

    :sswitch_2c
    const-string v0, "title"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto/16 :goto_c4

    :sswitch_37
    const-string v0, "class"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xe

    goto/16 :goto_c4

    :sswitch_43
    const-string v0, "category"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto/16 :goto_c4

    :sswitch_4e
    const-string v0, "path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto/16 :goto_c4

    :sswitch_59
    const-string v0, "icon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_c4

    :sswitch_63
    const-string v0, "resource"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_c4

    :sswitch_6d
    const-string v0, "second_space"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    goto :goto_c4

    :sswitch_78
    const-string v0, "is_oldman"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xc

    goto :goto_c4

    :sswitch_83
    const-string v0, "package"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xd

    goto :goto_c4

    :sswitch_8e
    const-string v0, "status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xf

    goto :goto_c4

    :sswitch_99
    const-string v0, "feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    goto :goto_c4

    :sswitch_a4
    const-string v0, "intent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto :goto_c4

    :sswitch_af
    const-string v0, "fragment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto :goto_c4

    :sswitch_b9
    const-string v0, "summary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_c4

    :goto_c3
    const/4 v0, -0x1

    :goto_c4
    packed-switch v0, :pswitch_data_18c

    goto/16 :goto_144

    :pswitch_c9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cannot be modified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_e0
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/internal/search/SettingsTree;->mIsOldman:Z

    goto :goto_144

    :pswitch_e7
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/internal/search/SettingsTree;->mIsCheckBox:Z

    goto :goto_144

    :pswitch_ee
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was removed once initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Use setIntent() instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_10d
    iput-object p2, p0, Lcom/miui/internal/search/SettingsTree;->mFragment:Ljava/lang/String;

    goto :goto_144

    :pswitch_110
    iput-object p2, p0, Lcom/miui/internal/search/SettingsTree;->mIcon:Ljava/lang/String;

    goto :goto_144

    :pswitch_113
    iput-object p2, p0, Lcom/miui/internal/search/SettingsTree;->mSummary:Ljava/lang/String;

    goto :goto_144

    :pswitch_116
    iput-object p2, p0, Lcom/miui/internal/search/SettingsTree;->mKeywordsResource:Ljava/lang/String;

    goto :goto_144

    :pswitch_119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " should not be modified, you may modify "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " via resource"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_138
    iput-object p2, p0, Lcom/miui/internal/search/SettingsTree;->mCategory:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/internal/search/SettingsTree;->updateCategoryRelated()V

    goto :goto_144

    :pswitch_13e
    iput-object p2, p0, Lcom/miui/internal/search/SettingsTree;->mResource:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/internal/search/SettingsTree;->updateResourceRelated()V

    nop

    :goto_144
    return-void

    nop

    :sswitch_data_146
    .sparse-switch
        -0x6eb9585a -> :sswitch_b9
        -0x625d1db0 -> :sswitch_af
        -0x468ec964 -> :sswitch_a4
        -0x3a5d850a -> :sswitch_99
        -0x3532300e -> :sswitch_8e
        -0x301acbba -> :sswitch_83
        -0x20cc6178 -> :sswitch_78
        -0x158f8e85 -> :sswitch_6d
        -0x14543bf2 -> :sswitch_63
        0x313c79 -> :sswitch_59
        0x346425 -> :sswitch_4e
        0x302bcfe -> :sswitch_43
        0x5a5a978 -> :sswitch_37
        0x6942258 -> :sswitch_2c
        0x1f2e9faa -> :sswitch_21
        0x2fcb6f38 -> :sswitch_15
        0x76507e51 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_18c
    .packed-switch 0x0
        :pswitch_13e
        :pswitch_138
        :pswitch_119
        :pswitch_119
        :pswitch_116
        :pswitch_113
        :pswitch_110
        :pswitch_10d
        :pswitch_105
        :pswitch_ee
        :pswitch_ee
        :pswitch_e7
        :pswitch_e0
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
    .end packed-switch
.end method

.method public final setIntent(Landroid/content/Intent;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/miui/internal/search/SettingsTree;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public final toJSONObject()Lorg/json/JSONObject;
    .registers 6

    iget-boolean v0, p0, Lcom/miui/internal/search/SettingsTree;->mTmp:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_b
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getPackage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "package"

    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/miui/internal/search/SettingsTree;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    const-string v1, "class"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_39
    iget-object v1, p0, Lcom/miui/internal/search/SettingsTree;->mResource:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_48

    const-string v1, "resource"

    iget-object v2, p0, Lcom/miui/internal/search/SettingsTree;->mResource:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_48
    iget-object v1, p0, Lcom/miui/internal/search/SettingsTree;->mCategory:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_57

    const-string v1, "category"

    iget-object v2, p0, Lcom/miui/internal/search/SettingsTree;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_57
    iget-object v1, p0, Lcom/miui/internal/search/SettingsTree;->mKeywordsResource:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_66

    const-string v1, "keywords"

    iget-object v2, p0, Lcom/miui/internal/search/SettingsTree;->mKeywordsResource:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_66
    iget-object v1, p0, Lcom/miui/internal/search/SettingsTree;->mSummary:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_75

    const-string v1, "summary"

    iget-object v2, p0, Lcom/miui/internal/search/SettingsTree;->mSummary:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_75
    iget-object v1, p0, Lcom/miui/internal/search/SettingsTree;->mIcon:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_84

    const-string v1, "icon"

    iget-object v2, p0, Lcom/miui/internal/search/SettingsTree;->mIcon:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_84
    iget-object v1, p0, Lcom/miui/internal/search/SettingsTree;->mFragment:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_93

    const-string v1, "fragment"

    iget-object v2, p0, Lcom/miui/internal/search/SettingsTree;->mFragment:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_93
    iget-object v1, p0, Lcom/miui/internal/search/SettingsTree;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_a7

    const-string v1, "intent"

    new-instance v2, Lcom/miui/internal/search/TinyIntent;

    iget-object v3, p0, Lcom/miui/internal/search/SettingsTree;->mIntent:Landroid/content/Intent;

    invoke-direct {v2, v3}, Lcom/miui/internal/search/TinyIntent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v2}, Lcom/miui/internal/search/TinyIntent;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a7
    iget-boolean v1, p0, Lcom/miui/internal/search/SettingsTree;->mIsCheckBox:Z

    if-eqz v1, :cond_b1

    const-string v1, "is_checkbox"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_b1
    iget-boolean v1, p0, Lcom/miui/internal/search/SettingsTree;->mIsOldman:Z

    if-nez v1, :cond_bb

    const-string v1, "is_oldman"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_bb
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getSons()Ljava/util/LinkedList;

    move-result-object v1

    if-eqz v1, :cond_e9

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getSons()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ce
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/search/SettingsTree;

    invoke-virtual {v3}, Lcom/miui/internal/search/SettingsTree;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_e3

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_e3
    goto :goto_ce

    :cond_e4
    const-string v2, "son"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e9
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_e9} :catch_eb

    :cond_e9
    nop

    return-object v0

    :catch_eb
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8

    invoke-direct {p0, p2, p3}, Lcom/miui/internal/search/SettingsTree;->isSelected(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_20
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-ge v2, v3, :cond_31

    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_31
    invoke-direct {p0, v0, v1}, Lcom/miui/internal/search/SettingsTree;->setColumnValues([Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2
.end method
