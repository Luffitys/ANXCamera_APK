.class public Lmiui/slide/SlideCloudConfigHelper;
.super Ljava/lang/Object;
.source "SlideCloudConfigHelper.java"


# static fields
.field private static final CloudConfigFilePath:Ljava/lang/String; = "/data/system/mirihi-config-cloud.json"

.field private static final ConfigFilePath:Ljava/lang/String; = "/system/etc/mirihi-config.json"

.field private static final TAG:Ljava/lang/String; = "SlideCloudConfigHelper"

.field private static volatile sCloudConfigHelper:Lmiui/slide/SlideCloudConfigHelper;


# instance fields
.field private mActivityChangeListener:Lmiui/process/IActivityChangeListener;

.field private mAppSlideConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiui/slide/AppSlideConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mSlide3rdPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSlideSystemPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lmiui/slide/SlideCloudConfigHelper;->sCloudConfigHelper:Lmiui/slide/SlideCloudConfigHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/slide/SlideCloudConfigHelper;->mAppSlideConfigs:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/slide/SlideCloudConfigHelper;->mSlideSystemPackageList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/slide/SlideCloudConfigHelper;->mSlide3rdPackageList:Ljava/util/ArrayList;

    new-instance v0, Lmiui/slide/SlideCloudConfigHelper$2;

    invoke-direct {v0, p0}, Lmiui/slide/SlideCloudConfigHelper$2;-><init>(Lmiui/slide/SlideCloudConfigHelper;)V

    iput-object v0, p0, Lmiui/slide/SlideCloudConfigHelper;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v0, p0, Lmiui/slide/SlideCloudConfigHelper;->mSlideSystemPackageList:Ljava/util/ArrayList;

    const-string v1, "com.android.camera"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/slide/SlideCloudConfigHelper;->mSlideSystemPackageList:Ljava/util/ArrayList;

    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/slide/SlideCloudConfigHelper;->mSlideSystemPackageList:Ljava/util/ArrayList;

    const-string v1, "com.miui.home"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/slide/SlideCloudConfigHelper;->mSlideSystemPackageList:Ljava/util/ArrayList;

    const-string v1, "com.android.incallui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/slide/SlideCloudConfigHelper;->mSlideSystemPackageList:Ljava/util/ArrayList;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/slide/SlideCloudConfigHelper;->mSlideSystemPackageList:Ljava/util/ArrayList;

    const-string v1, "com.example.xcm.test"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$000(Lmiui/slide/SlideCloudConfigHelper;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/slide/SlideCloudConfigHelper;->updateAppSlideCloudConfigList(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lmiui/slide/SlideCloudConfigHelper;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lmiui/slide/SlideCloudConfigHelper;->mSlide3rdPackageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/slide/SlideCloudConfigHelper;)Landroid/content/pm/PackageManager;
    .registers 2

    iget-object v0, p0, Lmiui/slide/SlideCloudConfigHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/slide/SlideCloudConfigHelper;ZLjava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiui/slide/SlideCloudConfigHelper;->parseSlideConfigFile(ZLjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lmiui/slide/SlideCloudConfigHelper;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lmiui/slide/SlideCloudConfigHelper;->mAppSlideConfigs:Ljava/util/HashMap;

    return-object v0
.end method

.method private generateAppSlideConfigFromJson(Lorg/json/JSONObject;)Lmiui/slide/AppSlideConfig;
    .registers 34

    move-object/from16 v1, p1

    const-string v2, "SlideCloudConfigHelper"

    const/4 v3, 0x0

    if-nez v1, :cond_8

    return-object v3

    :cond_8
    :try_start_8
    const-string v0, "pkg"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    const-string v0, "actionConfigs"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move-object v5, v0

    if-eqz v5, :cond_122

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_122

    new-instance v0, Lmiui/slide/AppSlideConfig;

    invoke-direct {v0, v4}, Lmiui/slide/AppSlideConfig;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    const/4 v0, 0x0

    move v7, v0

    :goto_26
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_121

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    move-object v8, v0

    const-string v0, "keyCode"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v0, "version"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v0

    const-string v0, "startActivity"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v0, "flagAction"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    const-string v0, "flagResult"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    const-string v0, "flagCondition"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    const-string v0, "condition"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v16

    const-string v0, "viewID"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v0, "viewClassName"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v0, "targetActivity"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    const-string v0, "touchEvent"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_7b
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_7b} :catch_125

    move-object v9, v0

    :try_start_7c
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_80} :catch_117
    .catch Lorg/json/JSONException; {:try_start_7c .. :try_end_80} :catch_125

    const/16 v19, 0x0

    if-nez v0, :cond_f0

    :try_start_84
    const-string v0, ";"

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    move/from16 v1, v19

    :goto_8d
    if-ge v1, v3, :cond_e5

    aget-object v22, v0, v1

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v24, v23

    move-object/from16 v22, v0

    const-string v0, ","

    move/from16 v23, v3

    move-object/from16 v3, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object/from16 v24, v3

    array-length v3, v0
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_a6} :catch_ea
    .catch Lorg/json/JSONException; {:try_start_84 .. :try_end_a6} :catch_125

    move-object/from16 v25, v4

    const/4 v4, 0x5

    if-ne v3, v4, :cond_dc

    :try_start_ab
    aget-object v3, v0, v19

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    const/4 v3, 0x4

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    new-instance v3, Lmiui/slide/SlideConfig$TouchEventConfig;

    move-object/from16 v26, v3

    invoke-direct/range {v26 .. v31}, Lmiui/slide/SlideConfig$TouchEventConfig;-><init>(IIIII)V

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_d7} :catch_d8
    .catch Lorg/json/JSONException; {:try_start_ab .. :try_end_d7} :catch_125

    goto :goto_dc

    :catch_d8
    move-exception v0

    move-object v3, v9

    move-object v4, v11

    goto :goto_11c

    :cond_dc
    :goto_dc
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, v22

    move/from16 v3, v23

    move-object/from16 v4, v25

    goto :goto_8d

    :cond_e5
    move-object/from16 v22, v0

    move-object/from16 v25, v4

    goto :goto_f2

    :catch_ea
    move-exception v0

    move-object/from16 v25, v4

    move-object v3, v9

    move-object v4, v11

    goto :goto_11c

    :cond_f0
    move-object/from16 v25, v4

    :goto_f2
    nop

    :try_start_f3
    new-instance v0, Lmiui/slide/SlideConfig;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_fe

    move/from16 v1, v19

    goto :goto_102

    :cond_fe
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_102
    move-object v3, v9

    move-object v9, v0

    move-object v4, v11

    move v11, v1

    move-object/from16 v19, v4

    invoke-direct/range {v9 .. v20}, Lmiui/slide/SlideConfig;-><init>(IILjava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lmiui/slide/AppSlideConfig;->addSlideConfig(Lmiui/slide/SlideConfig;)V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    move-object/from16 v4, v25

    const/4 v3, 0x0

    goto/16 :goto_26

    :catch_117
    move-exception v0

    move-object/from16 v25, v4

    move-object v3, v9

    move-object v4, v11

    :goto_11c
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11f
    .catch Lorg/json/JSONException; {:try_start_f3 .. :try_end_11f} :catch_125

    const/4 v1, 0x0

    return-object v1

    :cond_121
    return-object v6

    :cond_122
    move-object/from16 v25, v4

    goto :goto_129

    :catch_125
    move-exception v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_129
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getInstance()Lmiui/slide/SlideCloudConfigHelper;
    .registers 2

    sget-object v0, Lmiui/slide/SlideCloudConfigHelper;->sCloudConfigHelper:Lmiui/slide/SlideCloudConfigHelper;

    if-nez v0, :cond_17

    const-class v0, Lmiui/slide/SlideCloudConfigHelper;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lmiui/slide/SlideCloudConfigHelper;->sCloudConfigHelper:Lmiui/slide/SlideCloudConfigHelper;

    if-nez v1, :cond_12

    new-instance v1, Lmiui/slide/SlideCloudConfigHelper;

    invoke-direct {v1}, Lmiui/slide/SlideCloudConfigHelper;-><init>()V

    sput-object v1, Lmiui/slide/SlideCloudConfigHelper;->sCloudConfigHelper:Lmiui/slide/SlideCloudConfigHelper;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lmiui/slide/SlideCloudConfigHelper;->sCloudConfigHelper:Lmiui/slide/SlideCloudConfigHelper;

    return-object v0
.end method

.method private parseFile(Ljava/io/File;)Ljava/lang/StringBuilder;
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_3c

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :try_start_10
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    :goto_1b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    if-eqz v3, :cond_26

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_25} :catch_2d
    .catchall {:try_start_10 .. :try_end_25} :catchall_2b

    goto :goto_1b

    :cond_26
    invoke-static {v2}, Lmiui/slide/SlideUtils;->closeQuietly(Ljava/io/Closeable;)V

    nop

    return-object v1

    :catchall_2b
    move-exception v0

    goto :goto_38

    :catch_2d
    move-exception v3

    :try_start_2e
    const-string v4, "SlideCloudConfigHelper"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_2b

    nop

    invoke-static {v2}, Lmiui/slide/SlideUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :goto_38
    invoke-static {v2}, Lmiui/slide/SlideUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_3c
    :goto_3c
    return-object v0
.end method

.method private parseSlideConfigFile(ZLjava/lang/String;I)V
    .registers 16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseSlideConfigFile updateAll = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SlideCloudConfigHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    const-string v2, "/data/system/mirihi-config-cloud.json"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lmiui/slide/SlideCloudConfigHelper;->parseFile(Ljava/io/File;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v2, :cond_31

    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/mirihi-config.json"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lmiui/slide/SlideCloudConfigHelper;->parseFile(Ljava/io/File;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v2, :cond_31

    return-void

    :cond_31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3c

    return-void

    :cond_3c
    if-eqz p1, :cond_48

    iget-object v4, p0, Lmiui/slide/SlideCloudConfigHelper;->mAppSlideConfigs:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    iget-object v4, p0, Lmiui/slide/SlideCloudConfigHelper;->mSlide3rdPackageList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :cond_48
    :try_start_48
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "packages"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, 0x0

    :goto_54
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_9c

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {p0, v7}, Lmiui/slide/SlideCloudConfigHelper;->generateAppSlideConfigFromJson(Lorg/json/JSONObject;)Lmiui/slide/AppSlideConfig;

    move-result-object v8

    if-eqz v8, :cond_99

    if-eqz p1, :cond_87

    iget-object v9, p0, Lmiui/slide/SlideCloudConfigHelper;->mSlide3rdPackageList:Ljava/util/ArrayList;

    iget-object v10, v8, Lmiui/slide/AppSlideConfig;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_6d} :catch_9d

    :try_start_6d
    iget-object v9, p0, Lmiui/slide/SlideCloudConfigHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v10, v8, Lmiui/slide/AppSlideConfig;->mPackageName:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    if-eqz v9, :cond_86

    iget v10, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v8, v10}, Lmiui/slide/AppSlideConfig;->matchVersionSlideConfig(I)V

    iget-object v10, p0, Lmiui/slide/SlideCloudConfigHelper;->mAppSlideConfigs:Ljava/util/HashMap;

    iget-object v11, v8, Lmiui/slide/AppSlideConfig;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_84
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6d .. :try_end_84} :catch_85
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_84} :catch_9d

    goto :goto_86

    :catch_85
    move-exception v9

    :cond_86
    :goto_86
    goto :goto_99

    :cond_87
    :try_start_87
    iget-object v9, v8, Lmiui/slide/AppSlideConfig;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_99

    invoke-virtual {v8, p3}, Lmiui/slide/AppSlideConfig;->matchVersionSlideConfig(I)V

    iget-object v9, p0, Lmiui/slide/SlideCloudConfigHelper;->mAppSlideConfigs:Ljava/util/HashMap;

    iget-object v10, v8, Lmiui/slide/AppSlideConfig;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_99} :catch_9d

    :cond_99
    :goto_99
    add-int/lit8 v6, v6, 0x1

    goto :goto_54

    :cond_9c
    goto :goto_a1

    :catch_9d
    move-exception v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a1
    return-void
.end method

.method private registerDataObserver(Landroid/content/Context;)V
    .registers 6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataNotifyUri()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lmiui/slide/SlideCloudConfigHelper$1;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1}, Lmiui/slide/SlideCloudConfigHelper$1;-><init>(Lmiui/slide/SlideCloudConfigHelper;Landroid/os/Handler;Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private updateAppSlideCloudConfigList(Landroid/content/Context;)V
    .registers 12

    const-string v0, "SlideCloudConfigHelper"

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "SlideCloudConfig"

    invoke-static {v1, v2}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7e

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    invoke-virtual {v4}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {p0, v5}, Lmiui/slide/SlideCloudConfigHelper;->generateAppSlideConfigFromJson(Lorg/json/JSONObject;)Lmiui/slide/AppSlideConfig;

    move-result-object v6

    if-eqz v6, :cond_30

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_30
    goto :goto_17

    :cond_31
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_38

    return-void

    :cond_38
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_3d
    const-string v4, "packages"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_42} :catch_43

    goto :goto_47

    :catch_43
    move-exception v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_47
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :try_start_4c
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/system/mirihi-config-cloud.json"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x3c000000    # 0.0078125f

    invoke-static {v6, v7}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    move-object v5, v7

    new-instance v7, Lcom/android/internal/util/FastPrintWriter;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v7, v8}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/PrintWriter;->flush()V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_6e} :catch_71
    .catchall {:try_start_4c .. :try_end_6e} :catchall_6f

    goto :goto_76

    :catchall_6f
    move-exception v0

    goto :goto_7a

    :catch_71
    move-exception v6

    :try_start_72
    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_6f

    nop

    :goto_76
    invoke-static {v5}, Lmiui/slide/SlideUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_7e

    :goto_7a
    invoke-static {v5}, Lmiui/slide/SlideUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_7e
    :goto_7e
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lmiui/slide/SlideCloudConfigHelper;->parseSlideConfigFile(ZLjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getAppSlideConfigs(Ljava/lang/String;)Lmiui/slide/AppSlideConfig;
    .registers 3

    iget-object v0, p0, Lmiui/slide/SlideCloudConfigHelper;->mAppSlideConfigs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lmiui/slide/SlideCloudConfigHelper;->mAppSlideConfigs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/slide/AppSlideConfig;

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public initConfig(Landroid/content/Context;)V
    .registers 5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lmiui/slide/SlideCloudConfigHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {p0, p1}, Lmiui/slide/SlideCloudConfigHelper;->registerDataObserver(Landroid/content/Context;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lmiui/slide/SlideCloudConfigHelper;->parseSlideConfigFile(ZLjava/lang/String;I)V

    invoke-virtual {p0, p1}, Lmiui/slide/SlideCloudConfigHelper;->initPackageMonitor(Landroid/content/Context;)V

    return-void
.end method

.method public initPackageMonitor(Landroid/content/Context;)V
    .registers 6

    iget-object v0, p0, Lmiui/slide/SlideCloudConfigHelper;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public is3rdAppProcessingActivity(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1c

    if-nez p2, :cond_6

    goto :goto_1c

    :cond_6
    iget-object v1, p0, Lmiui/slide/SlideCloudConfigHelper;->mAppSlideConfigs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v0, p0, Lmiui/slide/SlideCloudConfigHelper;->mAppSlideConfigs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/slide/AppSlideConfig;

    invoke-virtual {v0, p2}, Lmiui/slide/AppSlideConfig;->matchStartingActivity(Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_1b
    return v0

    :cond_1c
    :goto_1c
    return v0
.end method

.method public isMiuiAdapteringApp(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "com.tencent.mm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const-string v0, "com.tencent.mobileqq"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    iget-object v0, p0, Lmiui/slide/SlideCloudConfigHelper;->mAppSlideConfigs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public registerSlideActivityChangeListener()V
    .registers 4

    iget-object v0, p0, Lmiui/slide/SlideCloudConfigHelper;->mActivityChangeListener:Lmiui/process/IActivityChangeListener;

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lmiui/slide/SlideCloudConfigHelper;->mAppSlideConfigs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lmiui/slide/SlideCloudConfigHelper;->mSlideSystemPackageList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "com.android.keyguard.settings.MiuiFaceDataInput"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.android.keyguard.settings.MiuiFaceDataIntroduction"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lmiui/slide/SlideCloudConfigHelper;->mActivityChangeListener:Lmiui/process/IActivityChangeListener;

    invoke-static {v2}, Lmiui/process/ProcessManager;->unregisterActivityChanageListener(Lmiui/process/IActivityChangeListener;)V

    iget-object v2, p0, Lmiui/slide/SlideCloudConfigHelper;->mActivityChangeListener:Lmiui/process/IActivityChangeListener;

    invoke-static {v0, v1, v2}, Lmiui/process/ProcessManager;->registerActivityChangeListener(Ljava/util/List;Ljava/util/List;Lmiui/process/IActivityChangeListener;)V

    :cond_2d
    return-void
.end method

.method public setActivityChangeListener(Lmiui/process/IActivityChangeListener;)V
    .registers 2

    iput-object p1, p0, Lmiui/slide/SlideCloudConfigHelper;->mActivityChangeListener:Lmiui/process/IActivityChangeListener;

    invoke-virtual {p0}, Lmiui/slide/SlideCloudConfigHelper;->registerSlideActivityChangeListener()V

    return-void
.end method
