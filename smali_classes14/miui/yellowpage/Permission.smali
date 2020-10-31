.class public Lmiui/yellowpage/Permission;
.super Ljava/lang/Object;
.source "Permission.java"


# static fields
.field private static final ACTION_LOCATION_SETTING:Ljava/lang/String; = "com.miui.yellowpage.intent.action.LOCATION_SETTING"

.field private static final ACTION_USER_NOTICE:Ljava/lang/String; = "com.miui.yellowpage.intent.action.USER_NOTICE"

.field private static final ALLOW_NETWORKING_TEMPORARILY:Ljava/lang/String; = "pref_allow_networking_temporarily"

.field private static final LOCATION_MODE:Ljava/lang/String; = "location_mode"

.field private static final LOCATION_MODE_HIGH_ACCURACY:I = 0x3


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLocationSettingIntent()Landroid/content/Intent;
    .registers 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.yellowpage.intent.action.LOCATION_SETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createUserNoticeIntent()Landroid/content/Intent;
    .registers 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.yellowpage.intent.action.USER_NOTICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static enableLocation(Landroid/content/Context;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-le v0, v1, :cond_12

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "location_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1d

    :cond_12
    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "network"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    :goto_1d
    return-void
.end method

.method public static locationingAllowed(Landroid/content/Context;)Z
    .registers 3

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static mipubUploadNotified(Landroid/content/Context;)Z
    .registers 4

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pref_show_user_mipub_upload"

    invoke-static {v1}, Lmiui/yellowpage/YellowPageUtils;->formatPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static networkingAllowed(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lmiui/yellowpage/Permission;->networkingAllowedPermanently(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Lmiui/yellowpage/Permission;->networkingAllowedTemporarily(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public static networkingAllowedPermanently(Landroid/content/Context;)Z
    .registers 4

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pref_show_user_notice_yp_detail"

    invoke-static {v1}, Lmiui/yellowpage/YellowPageUtils;->formatPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static networkingAllowedTemporarily(Landroid/content/Context;)Z
    .registers 4

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pref_allow_networking_temporarily"

    invoke-static {v1}, Lmiui/yellowpage/YellowPageUtils;->formatPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static rollingAdsAllowed(Landroid/content/Context;)Z
    .registers 4

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pref_show_rolling_ads"

    invoke-static {v1}, Lmiui/yellowpage/YellowPageUtils;->formatPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setMipubUploadNotified(Landroid/content/Context;Z)V
    .registers 4

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pref_show_user_mipub_upload"

    invoke-static {v1}, Lmiui/yellowpage/YellowPageUtils;->formatPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lmiui/provider/ExtraSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static setNetworkingAllowedPermanently(Landroid/content/Context;Z)V
    .registers 4

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pref_show_user_notice_yp_detail"

    invoke-static {v1}, Lmiui/yellowpage/YellowPageUtils;->formatPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lmiui/provider/ExtraSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static setNetworkingAllowedTemporarily(Landroid/content/Context;Z)V
    .registers 4

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pref_allow_networking_temporarily"

    invoke-static {v1}, Lmiui/yellowpage/YellowPageUtils;->formatPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lmiui/provider/ExtraSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static setRollingAdsAllowed(Landroid/content/Context;Z)V
    .registers 4

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pref_show_rolling_ads"

    invoke-static {v1}, Lmiui/yellowpage/YellowPageUtils;->formatPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lmiui/provider/ExtraSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method
