.class public Lmiui/yellowpage/MiPubUtils;
.super Ljava/lang/Object;
.source "MiPubUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/yellowpage/MiPubUtils$NetworkAccessDeniedException;
    }
.end annotation


# static fields
.field private static final COLUMN_THUMBNAIL_URL:I = 0x1

.field private static final COLUMN_YELLOWPAGE_NAME:I = 0x2

.field private static final COLUMN_YID:I = 0x0

.field private static final EXTRA_MULTI_MODULE_ENTRY_RAW:Ljava/lang/String; = "com.miui.yellowpage.extra.MULTI_MODULE_ENTRY_RAW"

.field private static final FOLLOW_CONFIRM_IN_YP_DETAIL:Ljava/lang/String; = "follow_confirm_in_yp_detail"

.field private static final FOLLOW_HAS_CONFIRMED_IN_YP_DETAIL:Ljava/lang/String; = "follow_has_confirmed_in_yp_detail"

.field private static final MENU_HAS_BEEN_FIRSTLY_READ:Ljava/lang/String; = "pref_menu_has_been_firstly_read"

.field private static final MENU_READ_IN_SMS_CONVERSATION:Ljava/lang/String; = "pref_menu_read_in_sms_conversation"

.field private static final MIPUB_DEVICE_ID:Ljava/lang/String; = "pref_mipub_random_device_id"

.field private static final RANDOM_BASE_STRING:Ljava/lang/String; = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

.field private static final TAG:Ljava/lang/String; = "MipubUtils"

.field private static final XM_ACCOUNT_PATTERN:Ljava/util/regex/Pattern;

.field private static final YELLOWPAGE_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "yid"

    const-string v1, "thumbnail_url"

    const-string v2, "yellow_page_name"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/MiPubUtils;->YELLOWPAGE_PROJECTION:[Ljava/lang/String;

    const-string v0, ".*@xiaomi.com(/.*)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/MiPubUtils;->XM_ACCOUNT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertBundleToModules(Landroid/content/Context;Landroid/os/Bundle;JI)Ljava/util/ArrayList;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "JI)",
            "Ljava/util/ArrayList<",
            "Lmiui/yellowpage/ModuleIntent;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p1

    move/from16 v2, p4

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "intent"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    if-eqz v9, :cond_f6

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-string v10, "title"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    const-string v0, "id"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v0, "scope"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v0, "hotId"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const-string v0, "hotShowCount"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const-string v0, "subItemsFlag"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v8

    const/4 v0, 0x0

    move v11, v0

    :goto_41
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v11, v0, :cond_f5

    if-eqz v2, :cond_59

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/2addr v0, v2

    if-lez v0, :cond_57

    goto :goto_59

    :cond_57
    const/4 v0, 0x0

    goto :goto_5a

    :cond_59
    :goto_59
    const/4 v0, 0x1

    :goto_5a
    move v12, v0

    if-eqz v12, :cond_e3

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/Intent;

    new-instance v0, Lmiui/yellowpage/ModuleIntent;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v16

    aget-boolean v17, v8, v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object v13, v0

    move-object/from16 v20, v15

    invoke-direct/range {v13 .. v19}, Lmiui/yellowpage/ModuleIntent;-><init>(Ljava/lang/String;Landroid/content/Intent;IZII)V

    aget-boolean v0, v8, v11

    if-eqz v0, :cond_d5

    :try_start_97
    new-instance v0, Lorg/json/JSONObject;

    const-string v14, "com.miui.yellowpage.extra.MULTI_MODULE_ENTRY_RAW"
    :try_end_9b
    .catch Lorg/json/JSONException; {:try_start_97 .. :try_end_9b} :catch_c6

    move-object/from16 v15, v20

    :try_start_9d
    invoke-virtual {v15, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v14, "subItems"

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_aa
    .catch Lorg/json/JSONException; {:try_start_9d .. :try_end_aa} :catch_bc

    move-object/from16 v1, p0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-wide/from16 v3, p2

    :try_start_b2
    invoke-static {v1, v14, v3, v4, v2}, Lmiui/yellowpage/MiPubUtils;->getYellowPageMenu(Landroid/content/Context;Ljava/lang/String;JI)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v13, v14}, Lmiui/yellowpage/ModuleIntent;->setSubModuleIntent(Ljava/util/ArrayList;)V
    :try_end_b9
    .catch Lorg/json/JSONException; {:try_start_b2 .. :try_end_b9} :catch_ba

    goto :goto_df

    :catch_ba
    move-exception v0

    goto :goto_d1

    :catch_bc
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-wide/from16 v3, p2

    goto :goto_d1

    :catch_c6
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v15, v20

    move-wide/from16 v3, p2

    :goto_d1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_df

    :cond_d5
    move-object/from16 v1, p0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v15, v20

    move-wide/from16 v3, p2

    :goto_df
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_eb

    :cond_e3
    move-object/from16 v1, p0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-wide/from16 v3, p2

    :goto_eb
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    goto/16 :goto_41

    :cond_f5
    return-object v9

    :cond_f6
    const/4 v10, 0x0

    return-object v10
.end method

.method private static convertBundleToModules(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList<",
            "Lmiui/yellowpage/ModuleIntent;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "intent"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    if-eqz v4, :cond_49

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "title"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v5, "id"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    :goto_21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_48

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    new-instance v6, Lmiui/yellowpage/ModuleIntent;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v6, v7, v5, v8}, Lmiui/yellowpage/ModuleIntent;-><init>(Ljava/lang/String;Landroid/content/Intent;I)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_48
    return-object v4

    :cond_49
    const/4 v3, 0x0

    return-object v3
.end method

.method public static getCloudYellowPage(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1}, Lmiui/yellowpage/MiPubUtils;->getCloudYellowPageThrowException(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v1
    :try_end_5
    .catch Lmiui/yellowpage/MiPubUtils$NetworkAccessDeniedException; {:try_start_1 .. :try_end_5} :catch_7

    move-object v0, v1

    goto :goto_b

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Lmiui/yellowpage/MiPubUtils$NetworkAccessDeniedException;->printStackTrace()V

    :goto_b
    return-object v0
.end method

.method public static getCloudYellowPageThrowException(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/yellowpage/MiPubUtils$NetworkAccessDeniedException;
        }
    .end annotation

    const-string v0, "request.yellowpage.remote.miid"

    invoke-static {p0, v0, p1}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getYellowPage:The status is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MipubUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "ok"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lmiui/yellowpage/MiPubUtils;->parseYellowPage(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v3

    return-object v3

    :cond_35
    const-string v2, "network_access_denied"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    const/4 v2, 0x0

    return-object v2

    :cond_3f
    new-instance v2, Lmiui/yellowpage/MiPubUtils$NetworkAccessDeniedException;

    invoke-direct {v2}, Lmiui/yellowpage/MiPubUtils$NetworkAccessDeniedException;-><init>()V

    throw v2
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pref_mipub_random_device_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-static {p0}, Lmiui/yellowpage/MiPubUtils;->getHashedDeviceInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The random device id is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MipubUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_31
    return-object v0
.end method

.method private static getFollowConfirmPref(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    const-string v0, "follow_confirm_in_yp_detail"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static getHashedDeviceInfo(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "device.hashed_device_info"

    invoke-static {p0, v0}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "hashed_device_info"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalYellowPage(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .registers 11

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    sget-object v0, Lmiui/yellowpage/YellowPageContract$YellowPage;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_11

    return-object v1

    :cond_11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/yellowpage/YellowPageContract$YellowPage;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    aput-object v0, v6, v8

    const/4 v7, 0x0

    const-string v5, "miid=?"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4b

    :try_start_30
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/yellowpage/YellowPage;->fromJson(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v1
    :try_end_3e
    .catchall {:try_start_30 .. :try_end_3e} :catchall_46

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_42
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_4b

    :catchall_46
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_4b
    :goto_4b
    return-object v1
.end method

.method public static getLocalYellowPageNavContent(Landroid/content/Context;I)Ljava/lang/String;
    .registers 10

    const-string v0, ""

    sget-object v1, Lmiui/yellowpage/YellowPageContract$NavigationTab;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v1}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v1, 0x0

    return-object v1

    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/yellowpage/YellowPageContract$NavigationTab;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "value"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    const/4 v7, 0x0

    const-string v5, "type=?"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_44

    :try_start_2b
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3b

    nop

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_3f

    move-object v0, v1

    :cond_3b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_44

    :catchall_3f
    move-exception v1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_44
    :goto_44
    return-object v0
.end method

.method public static getLocalYellowPages(Landroid/content/Context;Ljava/util/Set;)Ljava/util/HashMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiui/yellowpage/YellowPage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "MipubUtils"

    const/4 v1, 0x0

    if-nez p1, :cond_6

    return-object v1

    :cond_6
    sget-object v2, Lmiui/yellowpage/YellowPageContract$YellowPage;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v2}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_f

    return-object v1

    :cond_f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/yellowpage/YellowPageContract$YellowPage;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "miid"

    const-string v5, "content"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v6, "miid IS NOT NULL"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_95

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_2c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Query miids count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_44
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_65

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmiui/yellowpage/YellowPage;->fromJson(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_64
    goto :goto_44

    :cond_65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Query remote yellowpage by miid with cout "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_8b

    new-instance v0, Lmiui/yellowpage/MiPubUtils$1;

    invoke-direct {v0, p1, p0}, Lmiui/yellowpage/MiPubUtils$1;-><init>(Ljava/util/Set;Landroid/content/Context;)V

    invoke-static {v0}, Lmiui/yellowpage/ThreadPool;->execute(Ljava/lang/Runnable;)V
    :try_end_8b
    .catchall {:try_start_2c .. :try_end_8b} :catchall_90

    :cond_8b
    nop

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_90
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_95
    return-object v1
.end method

.method private static getMenuReadInSmsPref(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    const-string v0, "pref_menu_read_in_sms_conversation"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getMipub(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPageMipub;
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lmiui/yellowpage/YellowPageContract$MiPub;->CONTENT_URI_YELLOWPAGE:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    const/4 v8, 0x0

    if-nez v1, :cond_12

    return-object v8

    :cond_12
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lmiui/yellowpage/MiPubUtils;->YELLOWPAGE_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4b

    :try_start_22
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_42

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v2, Lmiui/yellowpage/YellowPageMipub;

    move-object v3, v2

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lmiui/yellowpage/YellowPageMipub;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_22 .. :try_end_3e} :catchall_46

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v2

    :cond_42
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4b

    :catchall_46
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_4b
    :goto_4b
    return-object v8
.end method

.method public static getMipubName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    sget-object v0, Lmiui/yellowpage/YellowPageContract$MiPub;->CONTENT_URI_YELLOWPAGE:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    const/4 v8, 0x0

    if-nez v1, :cond_12

    return-object v8

    :cond_12
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lmiui/yellowpage/MiPubUtils;->YELLOWPAGE_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3a

    :try_start_22
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_31

    const/4 v2, 0x2

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
    return-object v8
.end method

.method public static getRechargeMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiui/yellowpage/Service;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "dataRecharge"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-static {v2}, Lmiui/yellowpage/Service;->fromJson(Lorg/json/JSONObject;)Lmiui/yellowpage/Service;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    const-string v1, "phoneRecharge"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_23

    invoke-static {v3}, Lmiui/yellowpage/Service;->fromJson(Lorg/json/JSONObject;)Lmiui/yellowpage/Service;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    return-object v0
.end method

.method public static getRemoteYellowPageNavContent(Landroid/content/Context;I)Ljava/lang/String;
    .registers 11

    const-string v0, ""

    nop

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "request.remote.navigation.info"

    invoke-static {p0, v2, v1}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ok"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    const-string v3, "data"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lmiui/yellowpage/YellowPageContract$NavigationTab;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v3}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_2a

    return-object v0

    :cond_2a
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "value"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "type = ? "

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lmiui/yellowpage/YellowPageContract$NavigationTab;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v3, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    if-ge v7, v5, :cond_55

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v8, Lmiui/yellowpage/YellowPageContract$NavigationTab;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v8, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_55
    return-object v0
.end method

.method public static getSearchHint(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 2

    const-string v0, "searchHint"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getServicesList(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lmiui/yellowpage/ServicesDataEntry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "nav_groups"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    :goto_11
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_27

    nop

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lmiui/yellowpage/ServicesDataEntry;->fromJson(Lorg/json/JSONObject;)Lmiui/yellowpage/ServicesDataEntry;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_23} :catch_28

    nop

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_27
    goto :goto_30

    :catch_28
    move-exception v1

    const-string v2, "MipubUtils"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_30
    return-object v0
.end method

.method public static getServicesList(Lorg/json/JSONObject;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lmiui/yellowpage/ServicesDataEntry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    const-string v1, "nav_groups"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    :goto_c
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_22

    nop

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lmiui/yellowpage/ServicesDataEntry;->fromJson(Lorg/json/JSONObject;)Lmiui/yellowpage/ServicesDataEntry;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1e} :catch_23

    nop

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_22
    goto :goto_2b

    :catch_23
    move-exception v1

    const-string v2, "MipubUtils"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2b
    return-object v0
.end method

.method public static getShowPhoneRecharge(Lorg/json/JSONObject;)Z
    .registers 3

    const-string v0, "showPhoneRecharge"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getYellowPage(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .registers 3

    invoke-static {p0, p1}, Lmiui/yellowpage/MiPubUtils;->getLocalYellowPage(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-static {p0, p1}, Lmiui/yellowpage/MiPubUtils;->getCloudYellowPage(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method public static getYellowPageMenu(Landroid/content/Context;JZ)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JZ)",
            "Ljava/util/ArrayList<",
            "Lmiui/yellowpage/ModuleIntent;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "remote"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "hasScope"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "yellowpage.menu"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lmiui/yellowpage/MiPubUtils;->convertBundleToModules(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2
.end method

.method public static getYellowPageMenu(Landroid/content/Context;JZI)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JZI)",
            "Ljava/util/ArrayList<",
            "Lmiui/yellowpage/ModuleIntent;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "remote"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "hasScope"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "yellowpage.menu"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v1, p1, p2, p4}, Lmiui/yellowpage/MiPubUtils;->convertBundleToModules(Landroid/content/Context;Landroid/os/Bundle;JI)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2
.end method

.method public static getYellowPageMenu(Landroid/content/Context;Ljava/lang/String;J)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/ArrayList<",
            "Lmiui/yellowpage/ModuleIntent;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "jsonString"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "yellowpage.parsemenu"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lmiui/yellowpage/MiPubUtils;->convertBundleToModules(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2
.end method

.method public static getYellowPageMenu(Landroid/content/Context;Ljava/lang/String;JI)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "JI)",
            "Ljava/util/ArrayList<",
            "Lmiui/yellowpage/ModuleIntent;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "jsonString"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "yellowpage.parsesubmenu"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v1, p2, p3, p4}, Lmiui/yellowpage/MiPubUtils;->convertBundleToModules(Landroid/content/Context;Landroid/os/Bundle;JI)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2
.end method

.method public static getYellowPageThrowException(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/yellowpage/MiPubUtils$NetworkAccessDeniedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lmiui/yellowpage/MiPubUtils;->getLocalYellowPage(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-static {p0, p1}, Lmiui/yellowpage/MiPubUtils;->getCloudYellowPageThrowException(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method public static isFollowConfirmed(Landroid/content/Context;)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lmiui/yellowpage/MiPubUtils;->getFollowConfirmPref(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "follow_has_confirmed_in_yp_detail"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private static isNumeric(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "[0-9]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static isServiceNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    invoke-static {p1}, Lmiui/yellowpage/MiPubUtils;->isServiceNumber(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-static {p1}, Lmiui/yellowpage/MiPubUtils;->isXiaomiJID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private static isServiceNumber(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "miui.provider.ExtraTelephony"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isServiceNumber"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v4, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_27

    return v0

    :catch_27
    move-exception v1

    const-string v2, "MipubUtils"

    const-string v3, "invoke ExtraTelephony.isServiceNumber failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static isSmsMenuRead(Landroid/content/Context;J)Z
    .registers 6

    invoke-static {p0}, Lmiui/yellowpage/MiPubUtils;->getMenuReadInSmsPref(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_menu_has_been_firstly_read"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method public static isXiaomiAccount(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    sget-object v0, Lmiui/yellowpage/MiPubUtils;->XM_ACCOUNT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method private static isXiaomiJID(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lmiui/yellowpage/MiPubUtils;->isXiaomiAccount(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    invoke-static {p0}, Lmiui/yellowpage/MiPubUtils;->trimDomainSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/yellowpage/MiPubUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isYellowPageNetworkAllowed(Landroid/content/Context;)Z
    .registers 4

    const-string v0, "yellowpage.isnetworkallowed"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "networkAllowed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private static parseYellowPage(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .registers 6

    const-string v0, "yp"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    :try_start_8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "yellowpage.insert"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/yellowpage/YellowPage;->fromJson(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v0
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_1e} :catch_1f

    return-object v0

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_23
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final randomString(I)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/4 v2, 0x0

    :goto_b
    if-ge v2, p0, :cond_21

    const-string v3, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static setFollowConfirmed(Landroid/content/Context;Z)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lmiui/yellowpage/MiPubUtils;->getFollowConfirmPref(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "follow_has_confirmed_in_yp_detail"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setSmsMenuRead(Landroid/content/Context;JZ)V
    .registers 8

    invoke-static {p0}, Lmiui/yellowpage/MiPubUtils;->getMenuReadInSmsPref(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_menu_has_been_firstly_read"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setYellowPageNetworkAllowed(Landroid/content/Context;)Z
    .registers 4

    const-string v0, "yellowpage.setnetworkallowed"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "networkAllowed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static trimDomainSuffix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_16

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_16
    return-object p0
.end method
