.class public Lmiui/util/AutoDisableScreenButtonsHelper;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsHelper.java"


# static fields
.field public static final CLOUD_SETTING:Ljava/lang/String; = "auto_disable_screen_button_cloud_setting"

.field public static final ENABLE_ASK:I = 0x1

.field public static final ENABLE_AUTO:I = 0x2

.field public static final MODULE_AUTO_DIS_NAV_BTN:Ljava/lang/String; = "AutoDisableNavigationButton1"

.field public static final NO:I = 0x3

.field public static final NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AutoDisableHelper"

.field private static mCloudJson:Lorg/json/JSONObject;

.field private static mUserJson:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkJson(Landroid/content/Context;)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    :cond_3
    sget-object v0, Lmiui/util/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    if-nez v0, :cond_22

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v1

    const-string v2, "auto_disable_screen_button"

    invoke-static {v0, v2, v1}, Landroid/provider/MiuiSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1f

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sput-object v1, Lmiui/util/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    goto :goto_22

    :cond_1f
    invoke-static {v0}, Lmiui/util/AutoDisableScreenButtonsHelper;->updateUserJson(Ljava/lang/String;)V

    :cond_22
    :goto_22
    sget-object v0, Lmiui/util/AutoDisableScreenButtonsHelper;->mCloudJson:Lorg/json/JSONObject;

    if-nez v0, :cond_33

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_disable_screen_button_cloud_setting"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/util/AutoDisableScreenButtonsHelper;->updateCloudJson(Ljava/lang/String;)V

    :cond_33
    return-void
.end method

.method public static getAppFlag(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    invoke-static {p0, p1}, Lmiui/util/AutoDisableScreenButtonsHelper;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x3

    goto :goto_f

    :cond_8
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_f
    return v1
.end method

.method public static getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-static {p0}, Lmiui/util/AutoDisableScreenButtonsHelper;->checkJson(Landroid/content/Context;)V

    :try_start_3
    sget-object v0, Lmiui/util/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    if-eqz v0, :cond_16

    sget-object v0, Lmiui/util/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lmiui/util/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_16
    sget-object v0, Lmiui/util/AutoDisableScreenButtonsHelper;->mCloudJson:Lorg/json/JSONObject;

    if-eqz v0, :cond_29

    sget-object v0, Lmiui/util/AutoDisableScreenButtonsHelper;->mCloudJson:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Lmiui/util/AutoDisableScreenButtonsHelper;->mCloudJson:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_28} :catch_2a

    return-object v0

    :cond_29
    goto :goto_2e

    :catch_2a
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2e
    const/4 v0, 0x0

    return-object v0
.end method

.method public static setFlag(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lmiui/util/AutoDisableScreenButtonsHelper;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    invoke-static {p0}, Lmiui/util/AutoDisableScreenButtonsHelper;->checkJson(Landroid/content/Context;)V

    sget-object v0, Lmiui/util/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    if-eqz v0, :cond_24

    if-eqz p0, :cond_24

    :try_start_9
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/util/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v2

    const-string v3, "auto_disable_screen_button"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/MiuiSettings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_24
    return-void
.end method

.method public static updateCloudJson(Ljava/lang/String;)V
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    sget-object v0, Lmiui/util/AutoDisableScreenButtonsHelper;->mCloudJson:Lorg/json/JSONObject;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_22

    :cond_15
    :try_start_15
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/AutoDisableScreenButtonsHelper;->mCloudJson:Lorg/json/JSONObject;
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_21
    return-void

    :cond_22
    :goto_22
    return-void
.end method

.method public static updateUserJson(Ljava/lang/String;)V
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    sget-object v0, Lmiui/util/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_22

    :cond_15
    :try_start_15
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_21
    return-void

    :cond_22
    :goto_22
    return-void
.end method
