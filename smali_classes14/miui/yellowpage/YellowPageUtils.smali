.class public Lmiui/yellowpage/YellowPageUtils;
.super Ljava/lang/Object;
.source "YellowPageUtils.java"


# static fields
.field private static final ANTISPAM_COLUMN_CID:I = 0x1

.field private static final ANTISPAM_COLUMN_MARKED_COUNT:I = 0x3

.field private static final ANTISPAM_COLUMN_NORMALIZED_NUMBER:I = 0x4

.field private static final ANTISPAM_COLUMN_NUMBER_TYPE:I = 0x5

.field private static final ANTISPAM_COLUMN_PID:I = 0x0

.field private static final ANTISPAM_COLUMN_TYPE:I = 0x2

.field private static final ANTISPAM_PROJECTION:[Ljava/lang/String;

.field private static final CLOUD_ANTISPAM:Ljava/lang/String; = "cloud_antispam"

.field private static final CLOUD_ANTISPAM_DISABLE:I = 0x0

.field private static final CLOUD_ANTISPAM_ENANBLE:I = 0x1

.field private static final PHONE_COLUMN_ATD_COUNT:I = 0xf

.field private static final PHONE_COLUMN_ATD_ID:I = 0xd

.field private static final PHONE_COLUMN_ATD_PROVIDER:I = 0x10

.field private static final PHONE_COLUMN_CALL_MENU:I = 0xb

.field private static final PHONE_COLUMN_CREDIT_IMG:I = 0x11

.field private static final PHONE_COLUMN_NORMALIZED_NUMBER:I = 0x9

.field private static final PHONE_COLUMN_NUMBER_TYPE:I = 0x12

.field private static final PHONE_COLUMN_PHOTO_URL:I = 0x3

.field private static final PHONE_COLUMN_PROVIDER_ID:I = 0x1

.field private static final PHONE_COLUMN_SLOGAN:I = 0xe

.field private static final PHONE_COLUMN_SUSPECT:I = 0xa

.field private static final PHONE_COLUMN_T9_RANK:I = 0xc

.field private static final PHONE_COLUMN_TAG:I = 0x2

.field private static final PHONE_COLUMN_TAG_PINYIN:I = 0x7

.field private static final PHONE_COLUMN_THUMBNAIL_URL:I = 0x4

.field private static final PHONE_COLUMN_VISIBLE:I = 0x8

.field private static final PHONE_COLUMN_YID:I = 0x0

.field private static final PHONE_COLUMN_YP_NAME:I = 0x5

.field private static final PHONE_COLUMN_YP_NAME_PINYIN:I = 0x6

.field private static final PHONE_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "YellowPageUtils"

.field private static final sCidCategories:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lmiui/yellowpage/AntispamCategory;",
            ">;"
        }
    .end annotation
.end field

.field private static final sProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmiui/yellowpage/YellowPageProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 19

    const-string v0, "yid"

    const-string v1, "provider_id"

    const-string v2, "tag"

    const-string v3, "photo_url"

    const-string v4, "thumbnail_url"

    const-string v5, "yellow_page_name"

    const-string v6, "yellow_page_name_pinyin"

    const-string v7, "tag_pinyin"

    const-string v8, "hide"

    const-string v9, "normalized_number"

    const-string v10, "suspect"

    const-string v11, "call_menu"

    const-string v12, "t9_rank"

    const-string v13, "atd_category_id"

    const-string v14, "slogan"

    const-string v15, "atd_count"

    const-string v16, "atd_provider"

    const-string v17, "credit_img"

    const-string v18, "number_type"

    filled-new-array/range {v0 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/YellowPageUtils;->PHONE_PROJECTION:[Ljava/lang/String;

    const-string v1, "pid"

    const-string v2, "cid"

    const-string v3, "type"

    const-string v4, "marked_count"

    const-string v5, "normalized_number"

    const-string v6, "number_type"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/YellowPageUtils;->ANTISPAM_PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/yellowpage/YellowPageUtils;->sProviders:Ljava/util/HashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lmiui/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static antispamNumberNotInPresetFile(Landroid/database/Cursor;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_21

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_21

    :cond_a
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_20

    :cond_10
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_10

    :cond_20
    return v0

    :cond_21
    :goto_21
    return v0
.end method

.method private static varargs buildAntispamCategorySelection([Ljava/lang/Integer;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_26

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_14

    const-string v2, " OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    const-string v2, "type"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_26
    const/4 v1, 0x0

    const-string v2, "("

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static buildAntispamInfoFromCursor(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;
    .registers 29

    move-object/from16 v0, p1

    const/4 v1, 0x0

    :goto_3
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8b

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_1a

    const-string v3, "YellowPageUtils"

    const-string v4, "invalid cid"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v15, p0

    goto :goto_3

    :cond_1a
    move-object/from16 v15, p0

    invoke-static {v15, v2}, Lmiui/yellowpage/YellowPageUtils;->getCidName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    goto :goto_3

    :cond_27
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v14, 0x3

    if-ne v4, v14, :cond_36

    move v4, v14

    goto :goto_37

    :cond_36
    move v4, v3

    :goto_37
    move v13, v4

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const/4 v4, 0x4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/4 v4, 0x5

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    new-instance v21, Lmiui/yellowpage/YellowPagePhone;

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    if-ne v3, v13, :cond_53

    if-eqz v12, :cond_53

    const-string v3, ""

    move-object v7, v3

    goto :goto_55

    :cond_53
    move-object/from16 v7, v17

    :goto_55
    const/16 v16, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v3, v21

    move-object/from16 v8, p2

    move-object/from16 v9, v20

    move v10, v13

    move/from16 v11, v18

    move/from16 v24, v12

    move/from16 v12, v19

    move/from16 v25, v13

    move/from16 v13, v16

    move-object/from16 v14, v22

    move-object/from16 v15, v23

    move/from16 v16, v2

    invoke-direct/range {v3 .. v16}, Lmiui/yellowpage/YellowPagePhone;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;I)V

    move/from16 v4, v24

    invoke-virtual {v3, v4}, Lmiui/yellowpage/YellowPagePhone;->setNumberType(I)V

    if-eqz v1, :cond_82

    move/from16 v5, v25

    const/4 v6, 0x3

    if-ne v5, v6, :cond_89

    goto :goto_85

    :cond_82
    move/from16 v5, v25

    const/4 v6, 0x3

    :goto_85
    move-object v1, v3

    if-ne v5, v6, :cond_89

    goto :goto_8b

    :cond_89
    goto/16 :goto_3

    :cond_8b
    :goto_8b
    return-object v1
.end method

.method private static buildYellowPagePhoneFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;
    .registers 35

    move-object/from16 v0, p0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/4 v2, 0x5

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    const/4 v3, 0x6

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/4 v3, 0x7

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v3, 0x9

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    const/16 v3, 0x8

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_30

    move v12, v1

    goto :goto_31

    :cond_30
    move v12, v2

    :goto_31
    const/16 v3, 0xa

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_3b

    move v15, v1

    goto :goto_3c

    :cond_3b
    move v15, v2

    :goto_3c
    const/16 v3, 0xb

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_47

    move/from16 v16, v1

    goto :goto_49

    :cond_47
    move/from16 v16, v2

    :goto_49
    const/16 v1, 0xc

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v2, 0xe

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/16 v2, 0xf

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    const/16 v2, 0x10

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/16 v2, 0x11

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v2, 0x12

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    cmp-long v3, v20, v3

    if-eqz v3, :cond_7e

    const/4 v2, 0x1

    move/from16 v26, v2

    goto :goto_86

    :cond_7e
    if-lez v1, :cond_84

    const/4 v2, 0x2

    move/from16 v26, v2

    goto :goto_86

    :cond_84
    move/from16 v26, v2

    :goto_86
    new-instance v27, Lmiui/yellowpage/YellowPagePhone;

    move-object/from16 v2, v27

    move-wide/from16 v3, v20

    move-object/from16 v5, v19

    move-object/from16 v6, v18

    move-object/from16 v7, p1

    move v0, v8

    move-object/from16 v8, v24

    move/from16 v28, v0

    move-object v0, v9

    move/from16 v9, v26

    move/from16 v29, v10

    move/from16 v10, v17

    move/from16 v30, v1

    move-object v1, v11

    move/from16 v11, v25

    move-object/from16 v31, v0

    move-object/from16 v32, v1

    move-wide v0, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    invoke-direct/range {v2 .. v16}, Lmiui/yellowpage/YellowPagePhone;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v2, v0, v1}, Lmiui/yellowpage/YellowPagePhone;->setT9Rank(J)Lmiui/yellowpage/YellowPagePhone;

    move-object/from16 v3, v32

    invoke-virtual {v2, v3}, Lmiui/yellowpage/YellowPagePhone;->setRawSlogan(Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;

    move-object/from16 v4, v31

    invoke-virtual {v2, v4}, Lmiui/yellowpage/YellowPagePhone;->setCreditImg(Ljava/lang/String;)V

    move/from16 v5, v30

    invoke-virtual {v2, v5}, Lmiui/yellowpage/YellowPagePhone;->setCid(I)Lmiui/yellowpage/YellowPagePhone;

    move/from16 v6, v29

    invoke-virtual {v2, v6}, Lmiui/yellowpage/YellowPagePhone;->setAntispamProviderId(I)Lmiui/yellowpage/YellowPagePhone;

    move/from16 v7, v28

    invoke-virtual {v2, v7}, Lmiui/yellowpage/YellowPagePhone;->setNumberType(I)V

    return-object v2
.end method

.method public static createAntispamCategory(Landroid/content/Context;Ljava/lang/String;)I
    .registers 10

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "YellowPageUtils"

    const-string v1, "The category name must not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    sget-object v0, Lmiui/yellowpage/YellowPageContract$AntispamCategory;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    return v1

    :cond_17
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/yellowpage/YellowPageContract$AntispamCategory;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "MAX(cid)"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v2, 0x2710

    if-eqz v0, :cond_4b

    :try_start_2e
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_38} :catch_42
    .catchall {:try_start_2e .. :try_end_38} :catchall_40

    if-lt v1, v2, :cond_3c

    add-int/lit8 v2, v1, 0x1

    :cond_3c
    :goto_3c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_4b

    :catchall_40
    move-exception v1

    goto :goto_47

    :catch_42
    move-exception v1

    :try_start_43
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_40

    goto :goto_3c

    :goto_47
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_4b
    :goto_4b
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "cid"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "names"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v3, Lmiui/yellowpage/YellowPageContract$AntispamCategory;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v3, v1}, Lmiui/yellowpage/YellowPageUtils;->insert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return v2
.end method

.method public static formatPreferenceKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string v1, "com.miui.yellowpage_preferences.%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAntispamCategoryFromCursor(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;)Lmiui/yellowpage/AntispamCustomCategory;
    .registers 22

    move-object/from16 v0, p1

    const/4 v1, 0x0

    const/4 v2, -0x1

    move/from16 v3, p2

    if-eq v3, v2, :cond_61

    invoke-interface/range {p1 .. p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_61

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const/4 v7, 0x5

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    if-ne v5, v6, :cond_25

    goto :goto_26

    :cond_25
    const/4 v2, 0x0

    :goto_26
    if-eqz v2, :cond_2b

    invoke-static/range {p0 .. p0}, Lmiui/yellowpage/YellowPageUtils;->getCategories(Landroid/content/Context;)Ljava/util/List;

    :cond_2b
    sget-object v6, Lmiui/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/yellowpage/AntispamCategory;

    if-eqz v6, :cond_60

    new-instance v17, Lmiui/yellowpage/AntispamCustomCategory;

    invoke-virtual {v6}, Lmiui/yellowpage/AntispamCategory;->getCategoryId()I

    move-result v8

    invoke-virtual {v6}, Lmiui/yellowpage/AntispamCategory;->getCategoryAllNames()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lmiui/yellowpage/AntispamCategory;->getCategoryType()I

    move-result v10

    invoke-virtual {v6}, Lmiui/yellowpage/AntispamCategory;->getIcon()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Lmiui/yellowpage/AntispamCategory;->getOrder()I

    move-result v12

    move-object/from16 v7, v17

    move-object/from16 v13, p3

    move/from16 v14, v16

    move v0, v15

    move v15, v2

    invoke-direct/range {v7 .. v15}, Lmiui/yellowpage/AntispamCustomCategory;-><init>(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ)V

    move-object/from16 v1, v17

    invoke-virtual {v1, v0}, Lmiui/yellowpage/AntispamCustomCategory;->setNumberType(I)V

    goto :goto_61

    :cond_60
    move v0, v15

    :cond_61
    :goto_61
    return-object v1
.end method

.method public static getAntispamNumberCategory(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/AntispamCustomCategory;
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lmiui/yellowpage/YellowPageUtils;->getAntispamNumberCategory(Landroid/content/Context;Ljava/lang/String;Z)Lmiui/yellowpage/AntispamCustomCategory;

    move-result-object v0

    return-object v0
.end method

.method public static getAntispamNumberCategory(Landroid/content/Context;Ljava/lang/String;Z)Lmiui/yellowpage/AntispamCustomCategory;
    .registers 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_c

    return-object v3

    :cond_c
    sget-object v0, Lmiui/yellowpage/YellowPageContract$AntispamNumber;->CONTENT_PHONE_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-static {v1, v11}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_19

    return-object v3

    :cond_19
    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lmiui/yellowpage/YellowPageUtils;->ANTISPAM_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v13, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v14, 0x0

    aput-object v5, v0, v14

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v15

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v10

    const/4 v9, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v13

    invoke-static {v0}, Lmiui/yellowpage/YellowPageUtils;->buildAntispamCategorySelection([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v0, 0x0

    const/16 v16, 0x0

    move-object v5, v11

    move v14, v9

    move-object v9, v0

    move v3, v10

    move-object/from16 v10, v16

    invoke-virtual/range {v4 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    const-string v5, "getAntispamNumberCategory(): find nothing in db"

    const-string v6, "YellowPageUtils"

    if-eqz v4, :cond_bb

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    :goto_5b
    :try_start_5b
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_81

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eq v10, v15, :cond_7a

    if-eq v10, v3, :cond_7a

    if-eq v10, v13, :cond_74

    if-eq v10, v14, :cond_6e

    goto :goto_80

    :cond_6e
    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    move v9, v10

    goto :goto_80

    :cond_74
    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    move v7, v10

    goto :goto_80

    :cond_7a
    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    move v8, v10

    nop

    :goto_80
    goto :goto_5b

    :cond_81
    const/4 v10, -0x1

    const/4 v14, -0x1

    if-eq v7, v14, :cond_8c

    move v10, v7

    const-string v0, "getAntispamNumberCategory(): found type user marked in db"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a2

    :cond_8c
    if-eq v8, v14, :cond_95

    move v10, v8

    const-string v0, "getAntispamNumberCategory(): found type preset/cloud in db"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a2

    :cond_95
    if-eq v9, v14, :cond_a2

    const-string v5, "getAntispamNumberCategory(): found type not in preset in db"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_9c} :catch_af
    .catchall {:try_start_5b .. :try_end_9c} :catchall_ad

    nop

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    return-object v0

    :cond_a2
    :goto_a2
    :try_start_a2
    invoke-static {v1, v4, v10, v2}, Lmiui/yellowpage/YellowPageUtils;->getAntispamCategoryFromCursor(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;)Lmiui/yellowpage/AntispamCustomCategory;

    move-result-object v0

    move-object v12, v0

    if-nez v12, :cond_b3

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_ac} :catch_af
    .catchall {:try_start_a2 .. :try_end_ac} :catchall_ad

    goto :goto_b3

    :catchall_ad
    move-exception v0

    goto :goto_b7

    :catch_af
    move-exception v0

    :try_start_b0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_ad

    :cond_b3
    :goto_b3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_be

    :goto_b7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_bb
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_be
    if-nez v12, :cond_ff

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    sget-object v0, Lmiui/yellowpage/YellowPageContract$AntispamNumber;->CONTENT_PRESET_PHONE_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    sget-object v19, Lmiui/yellowpage/YellowPageUtils;->ANTISPAM_PROJECTION:[Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v17 .. v22}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_fa

    const/4 v5, 0x0

    :try_start_d9
    invoke-static {v1, v4, v5, v2}, Lmiui/yellowpage/YellowPageUtils;->getAntispamCategoryFromCursor(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;)Lmiui/yellowpage/AntispamCustomCategory;

    move-result-object v0

    move-object v12, v0

    if-eqz v12, :cond_e6

    const-string v0, "getAntispamNumberCategory(): found in preset"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f2

    :cond_e6
    const-string v0, "getAntispamNumberCategory(): not found in preset"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_eb} :catch_ee
    .catchall {:try_start_d9 .. :try_end_eb} :catchall_ec

    goto :goto_f2

    :catchall_ec
    move-exception v0

    goto :goto_f6

    :catch_ee
    move-exception v0

    :try_start_ef
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f2
    .catchall {:try_start_ef .. :try_end_f2} :catchall_ec

    :goto_f2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_ff

    :goto_f6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_fa
    const-string v0, "getAntispamNumberCategory(): find nothing in preset"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ff
    :goto_ff
    if-eqz v12, :cond_124

    new-array v0, v13, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lmiui/yellowpage/YellowPageUtils;->getLogNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v0, v7

    invoke-virtual {v12}, Lmiui/yellowpage/AntispamCustomCategory;->getNumberType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v15

    invoke-virtual {v12}, Lmiui/yellowpage/AntispamCustomCategory;->getCategoryName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    const-string v3, "getAntispamNumberCategory(): number=%s, numberType=%s, category=%s"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_136

    :cond_124
    new-array v0, v15, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lmiui/yellowpage/YellowPageUtils;->getLogNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v0, v5

    const-string v3, "getAntispamNumberCategory(): number=%s, not found"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_136
    return-object v12
.end method

.method private static getBooleanSettings(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10

    sget-object v0, Lmiui/yellowpage/YellowPageContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    const/4 v7, 0x0

    if-nez v1, :cond_e

    return v7

    :cond_e
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_37

    :try_start_1d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_32

    if-lez v2, :cond_2a

    const/4 v7, 0x1

    :cond_2a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v7

    :cond_2e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_37

    :catchall_32
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_37
    :goto_37
    return v7
.end method

.method public static getCategories(Landroid/content/Context;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lmiui/yellowpage/AntispamCategory;",
            ">;"
        }
    .end annotation

    sget-object v0, Lmiui/yellowpage/YellowPageContract$AntispamCategory;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_d
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/yellowpage/YellowPageContract$AntispamCategory;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "cid"

    const-string v3, "names"

    const-string v4, "type"

    const-string v5, "icon"

    const-string v6, "display_order"

    filled-new-array {v0, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_69

    :goto_2a
    :try_start_2a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    new-instance v1, Lmiui/yellowpage/AntispamCategory;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lmiui/yellowpage/AntispamCategory;-><init>(ILjava/lang/String;ILjava/lang/String;I)V

    sget-object v2, Lmiui/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_58} :catch_60
    .catchall {:try_start_2a .. :try_end_58} :catchall_5e

    nop

    goto :goto_2a

    :cond_5a
    :goto_5a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_69

    :catchall_5e
    move-exception v1

    goto :goto_65

    :catch_60
    move-exception v1

    :try_start_61
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_5e

    goto :goto_5a

    :goto_65
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_69
    :goto_69
    sget-object v1, Lmiui/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    if-nez v1, :cond_73

    const/4 v1, 0x0

    goto :goto_7e

    :cond_73
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lmiui/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_7e
    return-object v1
.end method

.method public static getCidName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    sget-object v1, Lmiui/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    sget-object v1, Lmiui/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lmiui/yellowpage/AntispamCategory;

    if-nez v0, :cond_1e

    goto :goto_22

    :cond_1e
    invoke-virtual {v0}, Lmiui/yellowpage/AntispamCategory;->getCategoryName()Ljava/lang/String;

    move-result-object v2

    :goto_22
    return-object v2

    :cond_23
    invoke-static {p0}, Lmiui/yellowpage/YellowPageUtils;->getCategories(Landroid/content/Context;)Ljava/util/List;

    sget-object v1, Lmiui/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lmiui/yellowpage/AntispamCategory;

    if-nez v0, :cond_36

    goto :goto_3a

    :cond_36
    invoke-virtual {v0}, Lmiui/yellowpage/AntispamCategory;->getCategoryName()Ljava/lang/String;

    move-result-object v2

    :goto_3a
    return-object v2
.end method

.method public static getIvrMenuByNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    sget-object v0, Lmiui/yellowpage/YellowPageContract$Ivr;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    const/4 v7, 0x0

    if-nez v1, :cond_e

    return-object v7

    :cond_e
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3a

    :try_start_22
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_31

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_35

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v2

    :cond_31
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3a

    :catchall_35
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_3a
    :goto_3a
    return-object v7
.end method

.method public static getLocalYellowPagePhones(Landroid/content/Context;Ljava/util/List;)Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiui/yellowpage/YellowPagePhone;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiui/yellowpage/YellowPageUtils;->getLocalYellowPagePhones(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalYellowPagePhones(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiui/yellowpage/YellowPagePhone;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static/range {p0 .. p0}, Lmiui/yellowpage/YellowPageUtils;->isYellowPageAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_108

    if-eqz v2, :cond_108

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_108

    :cond_17
    sget-object v0, Lmiui/yellowpage/YellowPageContract$PhoneLookup;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v0}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_20

    return-object v4

    :cond_20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v4, v0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v5, v0

    const/4 v0, 0x0

    move v6, v0

    :goto_2e
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_107

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v7, 0x0

    if-eqz v3, :cond_52

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4a

    goto :goto_52

    :cond_4a
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Ljava/lang/String;

    goto :goto_63

    :cond_52
    :goto_52
    invoke-static {v1, v0}, Lmiui/yellowpage/YellowPageUtils;->getNormalizedNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5e

    goto/16 :goto_103

    :cond_5e
    if-eqz v3, :cond_63

    invoke-virtual {v3, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_63
    :goto_63
    invoke-virtual {v4, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v8

    const/16 v9, 0x32

    if-gt v8, v9, :cond_76

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v6, v8, :cond_103

    :cond_76
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_83
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_9a

    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9a
    const-string v11, "\'"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_83

    :cond_a6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Lmiui/yellowpage/YellowPageContract$PhoneLookup;->CONTENT_URI:Landroid/net/Uri;

    sget-object v14, Lmiui/yellowpage/YellowPageUtils;->PHONE_PROJECTION:[Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "normalized_number IN ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_103

    move-object v10, v7

    move-object v7, v0

    :goto_d4
    :try_start_d4
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_f1

    const/16 v0, 0x9

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    invoke-static {v9, v7}, Lmiui/yellowpage/YellowPageUtils;->buildYellowPagePhoneFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    goto :goto_d4

    :cond_f1
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_f4} :catch_f7
    .catchall {:try_start_d4 .. :try_end_f4} :catchall_f5

    goto :goto_fb

    :catchall_f5
    move-exception v0

    goto :goto_ff

    :catch_f7
    move-exception v0

    :try_start_f8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_fb
    .catchall {:try_start_f8 .. :try_end_fb} :catchall_f5

    :goto_fb
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_103

    :goto_ff
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_103
    :goto_103
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2e

    :cond_107
    return-object v5

    :cond_108
    :goto_108
    return-object v4
.end method

.method private static getLogNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-eqz p0, :cond_6c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_6c

    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x4

    if-gt v0, v2, :cond_35

    const/4 v2, 0x0

    :goto_16
    add-int/lit8 v3, v0, -0x2

    if-ge v2, v3, :cond_24

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_24
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_2a
    if-ge v2, v3, :cond_34

    const-string v4, "*"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_34
    goto :goto_67

    :cond_35
    const/4 v2, 0x5

    if-eq v0, v2, :cond_53

    const/4 v2, 0x6

    if-ne v0, v2, :cond_3c

    goto :goto_53

    :cond_3c
    if-le v0, v2, :cond_67

    const/4 v2, 0x0

    :goto_3f
    add-int/lit8 v3, v0, -0x4

    if-ge v2, v3, :cond_4d

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    :cond_4d
    const-string v2, "****"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_67

    :cond_53
    :goto_53
    const/4 v2, 0x0

    :goto_54
    add-int/lit8 v3, v0, -0x3

    if-ge v2, v3, :cond_62

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    :cond_62
    const-string v2, "***"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_67
    :goto_67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_6c
    :goto_6c
    const-string v0, "[empty number]"

    return-object v0
.end method

.method public static getNormalizedNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lmiui/yellowpage/YellowPageUtils;->getNormalizedNumber(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNormalizedNumber(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .registers 14

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    sget-object v0, Lmiui/yellowpage/YellowPageContract$PhoneLookup;->CONTENT_NORMALIZED_NUMBER:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    if-eqz p2, :cond_17

    const-string v3, "true"

    goto :goto_19

    :cond_17
    const-string v3, "false"

    :goto_19
    const-string v4, "withCountryCode"

    invoke-virtual {v2, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_29

    const-string v3, "defaultCountryCode"

    invoke-virtual {v2, v3, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_29
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_34

    return-object v1

    :cond_34
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_5b

    :try_start_43
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_52

    const/4 v1, 0x0

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_4e
    .catchall {:try_start_43 .. :try_end_4e} :catchall_56

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_52
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_5b

    :catchall_56
    move-exception v1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_5b
    :goto_5b
    return-object v1
.end method

.method public static getPhoneInfo(Landroid/content/Context;Ljava/lang/String;Z)Lmiui/yellowpage/YellowPagePhone;
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiui/yellowpage/YellowPageUtils;->queryPhoneInfo(Landroid/content/Context;Ljava/lang/String;Z)Lmiui/yellowpage/YellowPagePhone;

    move-result-object v0

    if-nez v0, :cond_17

    if-eqz p2, :cond_17

    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lmiui/yellowpage/YellowPageUtils;->queryPhoneInfo(Landroid/content/Context;Ljava/lang/String;Z)Lmiui/yellowpage/YellowPagePhone;

    move-result-object v0

    goto :goto_1c

    :cond_17
    if-eqz p2, :cond_1c

    invoke-static {p0, p1}, Lmiui/yellowpage/YellowPageUtils;->updateCloudPhoneInfo(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1c
    :goto_1c
    return-object v0
.end method

.method public static getProvider(Landroid/content/Context;I)Lmiui/yellowpage/YellowPageProvider;
    .registers 12

    sget-object v0, Lmiui/yellowpage/YellowPageUtils;->sProviders:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/yellowpage/YellowPageProvider;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lmiui/yellowpage/YellowPageProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    return-object v0

    :cond_19
    sget-object v1, Lmiui/yellowpage/YellowPageContract$Provider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v1}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_23

    return-object v2

    :cond_23
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/yellowpage/YellowPageContract$Provider;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "name"

    const-string v5, "icon"

    const-string v6, "pid"

    const-string v7, "icon_big"

    filled-new-array {v1, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_8b

    :goto_3e
    :try_start_3e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7c

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    if-nez v5, :cond_52

    move-object v6, v2

    goto :goto_57

    :cond_52
    array-length v6, v5

    invoke-static {v5, v3, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    :goto_57
    const/4 v7, 0x3

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    move-object v5, v7

    if-nez v5, :cond_61

    move-object v3, v2

    goto :goto_66

    :cond_61
    array-length v7, v5

    invoke-static {v5, v3, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_66
    const/4 v7, 0x2

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    new-instance v8, Lmiui/yellowpage/YellowPageProvider;

    invoke-direct {v8, v7, v4, v6, v3}, Lmiui/yellowpage/YellowPageProvider;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    move-object v0, v8

    sget-object v8, Lmiui/yellowpage/YellowPageUtils;->sProviders:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_7a} :catch_82
    .catchall {:try_start_3e .. :try_end_7a} :catchall_80

    nop

    goto :goto_3e

    :cond_7c
    :goto_7c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_8b

    :catchall_80
    move-exception v2

    goto :goto_87

    :catch_82
    move-exception v2

    :try_start_83
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_80

    goto :goto_7c

    :goto_87
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_8b
    :goto_8b
    sget-object v2, Lmiui/yellowpage/YellowPageUtils;->sProviders:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lmiui/yellowpage/YellowPageProvider;

    if-nez v0, :cond_9c

    sget-object v0, Lmiui/yellowpage/YellowPageProvider;->DEFAULT_PROVIDER:Lmiui/yellowpage/YellowPageProvider;

    :cond_9c
    return-object v0
.end method

.method public static getUserAreaCode(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    sget-object v0, Lmiui/yellowpage/YellowPageContract$UserArea;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/yellowpage/YellowPageContract$UserArea;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "area_code"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3d

    :try_start_1f
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2a} :catch_34
    .catchall {:try_start_1f .. :try_end_2a} :catchall_32

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_2e
    :goto_2e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3d

    :catchall_32
    move-exception v1

    goto :goto_39

    :catch_34
    move-exception v2

    :try_start_35
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_32

    goto :goto_2e

    :goto_39
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_3d
    :goto_3d
    return-object v1
.end method

.method public static informYellowpagePhoneEvent(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 26
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v0

    :try_start_6
    const-string v0, "direction"
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_8} :catch_9e

    move/from16 v2, p7

    :try_start_a
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "number"
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_f} :catch_96

    move-object/from16 v3, p8

    :try_start_11
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "connected"
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_16} :catch_8e

    move/from16 v4, p9

    :try_start_18
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_1b} :catch_86

    nop

    sget-object v0, Lmiui/yellowpage/YellowPageContract$MipubPhoneEvent;->CONTENT_URI_MIPUB_PHONE_EVENT:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "extra_start_time"

    invoke-virtual {v0, v6, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "extra_end_time"

    invoke-virtual {v0, v6, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v5, "extra_source"

    move-object/from16 v6, p5

    invoke-virtual {v0, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v5, "extra_type"

    move-object/from16 v7, p6

    invoke-virtual {v0, v5, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "extra_data"

    invoke-virtual {v0, v8, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v14, p0

    invoke-static {v14, v5}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_61

    return-void

    :cond_61
    const/4 v15, 0x0

    :try_start_62
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v9, v5

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_6f} :catch_78
    .catchall {:try_start_62 .. :try_end_6f} :catchall_76

    move-object v15, v0

    if-eqz v15, :cond_7f

    :goto_72
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_7f

    :catchall_76
    move-exception v0

    goto :goto_80

    :catch_78
    move-exception v0

    :try_start_79
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_76

    if-eqz v15, :cond_7f

    goto :goto_72

    :cond_7f
    :goto_7f
    return-void

    :goto_80
    if-eqz v15, :cond_85

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_85
    throw v0

    :catch_86
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    goto :goto_ab

    :catch_8e
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    goto :goto_a9

    :catch_96
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    goto :goto_a7

    :catch_9e
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v2, p7

    :goto_a7
    move-object/from16 v3, p8

    :goto_a9
    move/from16 v4, p9

    :goto_ab
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method

.method private static insert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 5

    invoke-static {p0, p1}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "YellowPageUtils"

    const-string v1, "insert-The provider is not installed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static isCloudAntispamEnable(Landroid/content/Context;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cloud_antispam"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    move v2, v1

    :cond_f
    return v2
.end method

.method public static isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_1d

    if-nez p1, :cond_6

    goto :goto_1d

    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    if-nez v1, :cond_18

    const-string v2, "YellowPageUtils"

    const-string v3, "The content provider is not installed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_18
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    const/4 v0, 0x1

    return v0

    :cond_1d
    :goto_1d
    return v0
.end method

.method public static isFraudIncomingNumber(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 13

    sget-object v0, Lmiui/yellowpage/YellowPageContract$PhoneLookup;->CONTENT_FRAUD_VERIFY:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "simIndex"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "incoming"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "yid"

    invoke-virtual {v0, v1, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    const/4 v8, 0x0

    if-nez v2, :cond_25

    return v8

    :cond_25
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_4e

    :try_start_34
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_49

    if-lez v3, :cond_41

    const/4 v8, 0x1

    :cond_41
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return v8

    :cond_45
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_4e

    :catchall_49
    move-exception v3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_4e
    :goto_4e
    return v8
.end method

.method public static isFraudNumOnlineIdentificationEnabled(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "online_fraud_enable"

    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->getBooleanSettings(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isInSmsWhiteList(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    sget-object v0, Lmiui/yellowpage/YellowPageContract$AntispamWhiteList;->CONTNET_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_11

    return v1

    :cond_11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/yellowpage/YellowPageContract$AntispamWhiteList;->CONTNET_URI:Landroid/net/Uri;

    const-string v0, "number"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "number LIKE \'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "%\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_69

    :goto_3b
    :try_start_3b
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_55

    const-string v3, "106"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_51} :catch_60
    .catchall {:try_start_3b .. :try_end_51} :catchall_5e

    if-eqz v3, :cond_54

    goto :goto_55

    :cond_54
    goto :goto_3b

    :cond_55
    :goto_55
    const/4 v1, 0x1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    :cond_5a
    :goto_5a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_69

    :catchall_5e
    move-exception v1

    goto :goto_65

    :catch_60
    move-exception v2

    :try_start_61
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_5e

    goto :goto_5a

    :goto_65
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_69
    :goto_69
    return v1
.end method

.method public static isIvrMenuExist(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10

    sget-object v0, Lmiui/yellowpage/YellowPageContract$Ivr;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    const/4 v7, 0x0

    if-nez v1, :cond_e

    return v7

    :cond_e
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "exist"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3d

    :try_start_22
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_38

    const/4 v3, 0x1

    if-ne v2, v3, :cond_30

    move v7, v3

    :cond_30
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v7

    :cond_34
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3d

    :catchall_38
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_3d
    :goto_3d
    return v7
.end method

.method public static isNeverRemindSmartAntispamEnable(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "never_remind_user_enable_antispam"

    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->getBooleanSettings(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRemindIgnoredUserSuspectNumber(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "remind_user_suspect_number"

    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->getBooleanSettings(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isYellowPageAvailable(Landroid/content/Context;)Z
    .registers 7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_24

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    :cond_22
    move v1, v2

    goto :goto_25

    :cond_24
    move v1, v3

    :goto_25
    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v4

    const-string v5, "IN"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v1, :cond_35

    if-eqz v4, :cond_34

    goto :goto_35

    :cond_34
    move v2, v3

    :cond_35
    :goto_35
    return v2
.end method

.method public static isYellowPageEnable(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lmiui/yellowpage/YellowPageUtils;->isYellowPageAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lmiui/yellowpage/YellowPageUtils;->isCloudAntispamEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static markAntiSpam(Landroid/content/Context;Ljava/lang/String;IZ)V
    .registers 7

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "categoryId"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "delete"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v1, Lmiui/yellowpage/YellowPageContract$AntispamNumber;->CONTENT_MARK_NUMBER_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2, v2}, Lmiui/yellowpage/YellowPageUtils;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private static queryCloudExpressInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static {p0}, Lmiui/yellowpage/YellowPageUtils;->isYellowPageAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_29

    :cond_13
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "bizName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "serialNumber"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "request.remote.express.info"

    invoke-static {p0, v2, v1, v0}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void

    :cond_29
    :goto_29
    return-void
.end method

.method public static queryExpressInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2}, Lmiui/yellowpage/YellowPageUtils;->queryLocalExpressInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p0, p1, p2}, Lmiui/yellowpage/YellowPageUtils;->queryCloudExpressInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private static queryLocalExpressInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    invoke-static {p0}, Lmiui/yellowpage/YellowPageUtils;->isYellowPageAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_30

    :cond_13
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "bizName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "serialNumber"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "request.local.express.info"

    invoke-static {p0, v2, v1, v0}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "res"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2

    :cond_30
    :goto_30
    const/4 v0, 0x0

    return v0
.end method

.method private static queryPhoneInfo(Landroid/content/Context;Ljava/lang/String;Z)Lmiui/yellowpage/YellowPagePhone;
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz p2, :cond_9

    sget-object v0, Lmiui/yellowpage/YellowPageContract$PhoneLookup;->CONTENT_URI_CLOUD:Landroid/net/Uri;

    goto :goto_b

    :cond_9
    sget-object v0, Lmiui/yellowpage/YellowPageContract$PhoneLookup;->CONTENT_URI:Landroid/net/Uri;

    :goto_b
    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v1, v9}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_17

    return-object v10

    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lmiui/yellowpage/YellowPageUtils;->PHONE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v9

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_44

    :try_start_27
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-static {v3, v2}, Lmiui/yellowpage/YellowPageUtils;->buildYellowPagePhoneFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;

    move-result-object v0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_31} :catch_3b
    .catchall {:try_start_27 .. :try_end_31} :catchall_39

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_35
    :goto_35
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_44

    :catchall_39
    move-exception v0

    goto :goto_40

    :catch_3b
    move-exception v0

    :try_start_3c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_39

    goto :goto_35

    :goto_40
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_44
    :goto_44
    if-nez p2, :cond_b4

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v0, Lmiui/yellowpage/YellowPageContract$AntispamNumber;->CONTENT_PHONE_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    sget-object v13, Lmiui/yellowpage/YellowPageUtils;->ANTISPAM_PROJECTION:[Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v14, "type<>4"

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_82

    :try_start_5d
    invoke-static {v1, v3, v2}, Lmiui/yellowpage/YellowPageUtils;->buildAntispamInfoFromCursor(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;

    move-result-object v0
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_61} :catch_76
    .catchall {:try_start_5d .. :try_end_61} :catchall_74

    if-eqz v0, :cond_68

    nop

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_68
    :try_start_68
    invoke-static {v3}, Lmiui/yellowpage/YellowPageUtils;->antispamNumberNotInPresetFile(Landroid/database/Cursor;)Z

    move-result v4
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6c} :catch_76
    .catchall {:try_start_68 .. :try_end_6c} :catchall_74

    if-eqz v4, :cond_73

    nop

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v10

    :cond_73
    goto :goto_7a

    :catchall_74
    move-exception v0

    goto :goto_7e

    :catch_76
    move-exception v0

    :try_start_77
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_74

    :goto_7a
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_82

    :goto_7e
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_82
    :goto_82
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v0, Lmiui/yellowpage/YellowPageContract$AntispamNumber;->CONTENT_PRESET_PHONE_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    sget-object v13, Lmiui/yellowpage/YellowPageUtils;->ANTISPAM_PROJECTION:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_b4

    :try_start_98
    invoke-static {v1, v3, v2}, Lmiui/yellowpage/YellowPageUtils;->buildAntispamInfoFromCursor(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;

    move-result-object v0
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_9c} :catch_a9
    .catchall {:try_start_98 .. :try_end_9c} :catchall_a7

    if-eqz v0, :cond_a3

    nop

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_a3
    :goto_a3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_b4

    :catchall_a7
    move-exception v0

    goto :goto_b0

    :catch_a9
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    :try_start_ac
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_af
    .catchall {:try_start_ac .. :try_end_af} :catchall_a7

    goto :goto_a3

    :goto_b0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_b4
    :goto_b4
    return-object v10
.end method

.method private static update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7

    invoke-static {p0, p1}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "YellowPageUtils"

    const-string v1, "update-The provider is not installed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static updateCloudPhoneInfo(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lmiui/yellowpage/YellowPageContract$PhoneLookup;->CONTENT_URI_CLOUD:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, v2}, Lmiui/yellowpage/YellowPageUtils;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static updatePhoneInfo(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "YellowPageUtils"

    const-string v1, "updatePhoneInfo updateCloud"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lmiui/yellowpage/YellowPageUtils;->updateCloudPhoneInfo(Landroid/content/Context;Ljava/lang/String;)V

    :cond_10
    return-void
.end method
