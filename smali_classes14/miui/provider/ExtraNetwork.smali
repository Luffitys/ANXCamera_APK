.class public final Lmiui/provider/ExtraNetwork;
.super Ljava/lang/Object;
.source "ExtraNetwork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/ExtraNetwork$PackageDetail;,
        Lmiui/provider/ExtraNetwork$DataUsageDetail;
    }
.end annotation


# static fields
.field private static final ACTION_NETWORK_ASSISTANT_SMS_REPORT:Ljava/lang/String; = "miui.intent.action.NETWORKASSISTANT_SMS_REPORT"

.field public static final ACTION_NETWORK_BLOCKED:Ljava/lang/String; = "miui.intent.action.NETWORK_BLOCKED"

.field public static final ACTION_NETWORK_CONNECTED:Ljava/lang/String; = "miui.intent.action.NETWORK_CONNECTED"

.field private static final ACTION_TRAFFIC_SETTING:Ljava/lang/String; = "miui.intent.action.NETWORKASSISTANT_OPERATOR_SETTING"

.field private static final ACTION_TRAFFIC_SETTING_INTERNATIONAL:Ljava/lang/String; = "miui.intent.action.NETWORKASSISTANT_MONTH_PACKAGE_SETTING"

.field public static final BUNDLE_KEY_COMMON:Ljava/lang/String; = "bundle_key_com"

.field public static final BUNDLE_KEY_HAS_MENU:Ljava/lang/String; = "bundle_key_has_menu"

.field private static final BUNDLE_KEY_OTHER_APP:Ljava/lang/String; = "bundle_key_from_other_task"

.field public static final BUNDLE_KEY_PURCHASE_FROM:Ljava/lang/String; = "bundle_key_purchase_from"

.field public static final BUNDLE_KEY_SLOTID:Ljava/lang/String; = "bundle_key_slotid"

.field private static final BUNDLE_KEY_SLOT_ID:Ljava/lang/String; = "sim_slot_num_tag"

.field public static final BUNDLE_KEY_TITLE:Ljava/lang/String; = "bundle_key_title"

.field public static final BUNDLE_KEY_URL:Ljava/lang/String; = "bundle_key_url"

.field private static final COLUMN_NAME_MONTH_USED:Ljava/lang/String; = "month_used"

.field private static final COLUMN_NAME_MONTH_WARNING:Ljava/lang/String; = "month_warning"

.field private static final COLUMN_NAME_PACKAGE_REMAINED:Ljava/lang/String; = "package_remained"

.field private static final COLUMN_NAME_PACKAGE_TOTAL:Ljava/lang/String; = "package_total"

.field private static final COLUMN_NAME_PACKAGE_USED:Ljava/lang/String; = "package_used"

.field private static final COLUMN_NAME_SLOT_NUM:Ljava/lang/String; = "slot_num"

.field private static final COLUMN_NAME_SUPPORT:Ljava/lang/String; = "package_setted"

.field private static final COLUMN_NAME_TODAY_USED:Ljava/lang/String; = "today_used"

.field private static final COLUMN_NAME_TOTAL_LIMIT:Ljava/lang/String; = "total_limit"

.field public static final CORRECTION_TYPE_BILL:I = 0x2

.field public static final CORRECTION_TYPE_CALLTIME:I = 0x4

.field public static final CORRECTION_TYPE_TRAFFIC:I = 0x1

.field private static final EXTRA_MIUI_STARTING_WINDOW_LABEL:Ljava/lang/String; = ":miui:starting_window_label"

.field public static final FIREWALL_MOBILE_RULE:Ljava/lang/String; = "mobile_rule"

.field private static final FIREWALL_MOBILE_RULE_SLOTNUM:Ljava/lang/String; = "mobile_rule_slot"

.field public static final FIREWALL_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final FIREWALL_SOURCE_PACKAGE_NAME:Ljava/lang/String; = "source_package_name"

.field private static final FIREWALL_TEMP_MOBILE_RULE:Ljava/lang/String; = "temp_mobile_rule"

.field private static final FIREWALL_TEMP_MOBILE_RULE_SLOTNUM:Ljava/lang/String; = "temp_mobile_rule_slot"

.field private static final FIREWALL_TEMP_WIFI_RULE:Ljava/lang/String; = "temp_wifi_rule"

.field private static final FIREWALL_URI_STR:Ljava/lang/String; = "content://com.miui.networkassistant.provider/firewall/%s"

.field public static final FIREWALL_WIFI_RULE:Ljava/lang/String; = "wifi_rule"

.field public static final FROM_PKGNAME:Ljava/lang/String; = "from_pkgname"

.field public static final IMSI:Ljava/lang/String; = "imsi"

.field private static final KEY_CORRECTION_TYPE:Ljava/lang/String; = "correction_type"

.field private static final MOBILE_FIREWALL_URI_STR:Ljava/lang/String; = "content://com.miui.networkassistant.provider/mobile_firewall/%s/%s"

.field public static final MOBILE_RXBYTES:Ljava/lang/String; = "mobile_rxbytes"

.field public static final MOBILE_TXBYTES:Ljava/lang/String; = "mobile_txbytes"

.field private static final NETWORKASSISTANT_PURCHASE_ACTION:Ljava/lang/String; = "miui.intent.action.NETWORKASSISTANT_TRAFFIC_PURCHASE"

.field public static final STORAGE_TIME:Ljava/lang/String; = "storage_time"

.field private static final TAG:Ljava/lang/String; = "ExtraNetwork"

.field private static final TEMP_MOBILE_FIREWALL_URI_STR:Ljava/lang/String; = "content://com.miui.networkassistant.provider/temp_mobile_firewall/%s/%s"

.field private static final TEMP_WIFI_FIREWALL_URI_STR:Ljava/lang/String; = "content://com.miui.networkassistant.provider/temp_wifi_firewall/%s"

.field public static final TO_PKGNAME:Ljava/lang/String; = "to_pkgname"

.field public static final TRACK_PURCHASE_FROM_LOCK_SCREEN_TRAFFIC:Ljava/lang/String; = "100010"

.field public static final TRACK_PURCHASE_FROM_NETWORK_ASSISTANT_MAIN_PAGE:Ljava/lang/String; = "100002"

.field public static final TRACK_PURCHASE_FROM_NETWORK_ASSISTANT_MAIN_TOOLBAR:Ljava/lang/String; = "100001"

.field public static final TRACK_PURCHASE_FROM_PUSH:Ljava/lang/String; = "100007"

.field public static final TRACK_PURCHASE_FROM_SERCURITY_CENTER_EXAM:Ljava/lang/String; = "100008"

.field public static final TRACK_PURCHASE_FROM_STATUS_BAR:Ljava/lang/String; = "100003"

.field public static final TRACK_PURCHASE_FROM_TRAFFIC_OVER_LIMIT_DIALOG:Ljava/lang/String; = "100006"

.field public static final TRACK_PURCHASE_FROM_TRAFFIC_OVER_LIMIT_NOTIFY:Ljava/lang/String; = "100005"

.field public static final TRACK_PURCHASE_FROM_TRAFFIC_SORTED:Ljava/lang/String; = "100009"

.field public static final TRACK_PURCHASE_FROM_TRAFFIC_WARNING_NOTIFY:Ljava/lang/String; = "100004"

.field private static final TRAFFIC_DISTRIBUTION_URI_STR:Ljava/lang/String; = "content://com.miui.networkassistant.provider/traffic_distribution"

.field public static final TRAFFIC_PURCHASE_ENABLED:Ljava/lang/String; = "traffic_purchase_enabled"

.field private static final TRAFFIC_PURCHASE_STATUS_URI_STR:Ljava/lang/String; = "content://com.miui.networkassistant.provider/na_traffic_purchase"

.field private static final TRAFFIC_PURCHASE_STATUS_URI_STR_ISMI:Ljava/lang/String; = "content://com.miui.networkassistant.provider/na_traffic_purchase/slotId/%d"

.field private static final URI_BILL_PACKAGE_DETAIL:Ljava/lang/String; = "content://com.miui.networkassistant.provider/bill_detail"

.field private static final URI_CALL_TIME_PACKAGE_DETAIL:Ljava/lang/String; = "content://com.miui.networkassistant.provider/calltime_detail"

.field private static final URI_NETWORK_TRAFFIC_INFO:Ljava/lang/String; = "content://com.miui.networkassistant.provider/datausage_status"

.field private static final URI_SMS_CORRECTION:Ljava/lang/String; = "content://com.miui.networkassistant.provider/sms_correction"

.field private static final WIFI_FIREWALL_URI_STR:Ljava/lang/String; = "content://com.miui.networkassistant.provider/wifi_firewall/%s"

.field public static final WIFI_RXBYTES:Ljava/lang/String; = "wifi_rxbytes"

.field public static final WIFI_TXBYTES:Ljava/lang/String; = "wifi_txbytes"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBillPackageDetail(Landroid/content/Context;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lmiui/provider/ExtraNetwork$PackageDetail;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_6
    const-string v2, "content://com.miui.networkassistant.provider/bill_detail"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    if-eqz v0, :cond_64

    :goto_1b
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_64

    const-string v2, "package_total"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v2, "package_used"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string v2, "package_remained"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-string v2, "slot_num"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string v2, "true"

    const-string v3, "package_setted"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    new-instance v2, Lmiui/provider/ExtraNetwork$PackageDetail;

    move-object v5, v2

    invoke-direct/range {v5 .. v13}, Lmiui/provider/ExtraNetwork$PackageDetail;-><init>(JJJIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_62} :catch_6d
    .catchall {:try_start_6 .. :try_end_62} :catchall_6b

    nop

    goto :goto_1b

    :cond_64
    nop

    if-eqz v0, :cond_6a

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6a
    return-object v1

    :catchall_6b
    move-exception v2

    goto :goto_7c

    :catch_6d
    move-exception v2

    :try_start_6e
    const-string v3, "ExtraNetwork"

    const-string v4, "getBillPackageDetail"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_75
    .catchall {:try_start_6e .. :try_end_75} :catchall_6b

    nop

    if-eqz v0, :cond_7b

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7b
    return-object v1

    :goto_7c
    if-eqz v0, :cond_81

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_81
    throw v2
.end method

.method public static getCallTimePackageDetail(Landroid/content/Context;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lmiui/provider/ExtraNetwork$PackageDetail;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_6
    const-string v2, "content://com.miui.networkassistant.provider/calltime_detail"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    if-eqz v0, :cond_64

    :goto_1b
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_64

    const-string v2, "package_total"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v2, "package_used"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string v2, "package_remained"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-string v2, "slot_num"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string v2, "true"

    const-string v3, "package_setted"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    new-instance v2, Lmiui/provider/ExtraNetwork$PackageDetail;

    move-object v5, v2

    invoke-direct/range {v5 .. v13}, Lmiui/provider/ExtraNetwork$PackageDetail;-><init>(JJJIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_62} :catch_6d
    .catchall {:try_start_6 .. :try_end_62} :catchall_6b

    nop

    goto :goto_1b

    :cond_64
    nop

    if-eqz v0, :cond_6a

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6a
    return-object v1

    :catchall_6b
    move-exception v2

    goto :goto_7c

    :catch_6d
    move-exception v2

    :try_start_6e
    const-string v3, "ExtraNetwork"

    const-string v4, "getCallTimePackageDetail"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_75
    .catchall {:try_start_6e .. :try_end_75} :catchall_6b

    nop

    if-eqz v0, :cond_7b

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7b
    return-object v1

    :goto_7c
    if-eqz v0, :cond_81

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_81
    throw v2
.end method

.method public static getUserDataUsageDetail(Landroid/content/Context;)Lmiui/provider/ExtraNetwork$DataUsageDetail;
    .registers 14

    if-eqz p0, :cond_6f

    const/4 v0, 0x0

    :try_start_3
    const-string v1, "content://com.miui.networkassistant.provider/datausage_status"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    if-eqz v0, :cond_53

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_53

    const-string v1, "total_limit"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-string v1, "month_used"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-string v1, "month_warning"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-string v1, "today_used"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    new-instance v1, Lmiui/provider/ExtraNetwork$DataUsageDetail;

    move-object v4, v1

    invoke-direct/range {v4 .. v12}, Lmiui/provider/ExtraNetwork$DataUsageDetail;-><init>(JJJJ)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_4c} :catch_58
    .catchall {:try_start_3 .. :try_end_4c} :catchall_56

    if-eqz v0, :cond_52

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    :cond_52
    return-object v1

    :cond_53
    if-eqz v0, :cond_6f

    goto :goto_63

    :catchall_56
    move-exception v1

    goto :goto_68

    :catch_58
    move-exception v1

    :try_start_59
    const-string v2, "ExtraNetwork"

    const-string v3, "getUserDataUsageDetail"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_56

    nop

    if-eqz v0, :cond_6f

    :goto_63
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    goto :goto_6f

    :goto_68
    if-eqz v0, :cond_6e

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    :cond_6e
    throw v1

    :cond_6f
    :goto_6f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static insertTrafficDistribution(Landroid/content/Context;Ljava/lang/String;JJJJ)Z
    .registers 21
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v1, p0

    const/4 v2, 0x0

    if-eqz v1, :cond_92

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object v7, p1

    goto/16 :goto_93

    :cond_d
    :try_start_d
    const-string v0, "content://com.miui.networkassistant.provider/traffic_distribution"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_86

    const-string v3, ""

    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_26

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    :cond_26
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "from_pkgname"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "to_pkgname"
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_36} :catch_88

    move-object v7, p1

    :try_start_37
    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "mobile_rxbytes"

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "mobile_txbytes"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "wifi_rxbytes"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "wifi_txbytes"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "imsi"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "storage_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v0, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_80} :catch_84

    if-nez v10, :cond_87

    const/4 v2, 0x1

    return v2

    :catch_84
    move-exception v0

    goto :goto_8a

    :cond_86
    move-object v7, p1

    :cond_87
    goto :goto_91

    :catch_88
    move-exception v0

    move-object v7, p1

    :goto_8a
    const-string v3, "ExtraNetwork"

    const-string v4, "insertTrafficDistribution"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_91
    return v2

    :cond_92
    move-object v7, p1

    :goto_93
    return v2
.end method

.method public static isMobileRestrict(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lmiui/provider/ExtraNetwork;->isMobileRestrict(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isMobileRestrict(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 14

    const/4 v0, 0x0

    if-eqz p0, :cond_67

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_67

    :cond_a
    const/4 v1, 0x0

    :try_start_b
    const-string v2, "content://com.miui.networkassistant.provider/mobile_firewall/%s/%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-array v9, v4, [Ljava/lang/String;

    aput-object p1, v9, v0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    if-eqz v1, :cond_4c

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4c

    const-string v2, "mobile_rule"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_43} :catch_54
    .catchall {:try_start_b .. :try_end_43} :catchall_52

    if-ne v2, v4, :cond_46

    move v0, v4

    :cond_46
    if-eqz v1, :cond_4b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4b
    return v0

    :cond_4c
    if-eqz v1, :cond_60

    :goto_4e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_60

    :catchall_52
    move-exception v0

    goto :goto_61

    :catch_54
    move-exception v2

    :try_start_55
    const-string v3, "ExtraNetwork"

    const-string v4, "isMobileRestrict"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5c
    .catchall {:try_start_55 .. :try_end_5c} :catchall_52

    nop

    if-eqz v1, :cond_60

    goto :goto_4e

    :cond_60
    :goto_60
    return v0

    :goto_61
    if-eqz v1, :cond_66

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_66
    throw v0

    :cond_67
    :goto_67
    return v0
.end method

.method public static isMobileTempRestrict(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 14

    const/4 v0, 0x0

    if-eqz p0, :cond_67

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_67

    :cond_a
    const/4 v1, 0x0

    :try_start_b
    const-string v2, "content://com.miui.networkassistant.provider/temp_mobile_firewall/%s/%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-array v9, v4, [Ljava/lang/String;

    aput-object p1, v9, v0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    if-eqz v1, :cond_4c

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4c

    const-string v2, "temp_mobile_rule"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_43} :catch_54
    .catchall {:try_start_b .. :try_end_43} :catchall_52

    if-ne v2, v4, :cond_46

    move v0, v4

    :cond_46
    if-eqz v1, :cond_4b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4b
    return v0

    :cond_4c
    if-eqz v1, :cond_60

    :goto_4e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_60

    :catchall_52
    move-exception v0

    goto :goto_61

    :catch_54
    move-exception v2

    :try_start_55
    const-string v3, "ExtraNetwork"

    const-string v4, "isMobileTempRestrict"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5c
    .catchall {:try_start_55 .. :try_end_5c} :catchall_52

    nop

    if-eqz v1, :cond_60

    goto :goto_4e

    :cond_60
    :goto_60
    return v0

    :goto_61
    if-eqz v1, :cond_66

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_66
    throw v0

    :cond_67
    :goto_67
    return v0
.end method

.method public static isTrafficPurchaseSupported(Landroid/content/Context;)Z
    .registers 4

    if-eqz p0, :cond_15

    :try_start_2
    const-string v0, "content://com.miui.networkassistant.provider/na_traffic_purchase"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lmiui/provider/ExtraNetwork;->queryTrafficPurchaseStatus(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_d

    return v1

    :catch_d
    move-exception v0

    const-string v1, "ExtraNetwork"

    const-string v2, "isTrafficPurchaseSupported"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public static isTrafficPurchaseSupported(Landroid/content/Context;I)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_28

    if-ltz p1, :cond_28

    const/4 v1, 0x2

    if-ge p1, v1, :cond_28

    :try_start_8
    const-string v1, "content://com.miui.networkassistant.provider/na_traffic_purchase/slotId/%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lmiui/provider/ExtraNetwork;->queryTrafficPurchaseStatus(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1f} :catch_20

    return v0

    :catch_20
    move-exception v1

    const-string v2, "ExtraNetwork"

    const-string v3, "isTrafficPurchaseSupported"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_28
    return v0
.end method

.method public static isWifiRestrict(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 12

    const/4 v0, 0x0

    if-eqz p0, :cond_60

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_60

    :cond_a
    const/4 v1, 0x0

    :try_start_b
    const-string v2, "content://com.miui.networkassistant.provider/wifi_firewall/%s"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v8, v3, [Ljava/lang/String;

    aput-object p1, v8, v0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    if-eqz v1, :cond_45

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_45

    const-string v2, "wifi_rule"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_3c} :catch_4d
    .catchall {:try_start_b .. :try_end_3c} :catchall_4b

    if-ne v2, v3, :cond_3f

    move v0, v3

    :cond_3f
    if-eqz v1, :cond_44

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_44
    return v0

    :cond_45
    if-eqz v1, :cond_59

    :goto_47
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_59

    :catchall_4b
    move-exception v0

    goto :goto_5a

    :catch_4d
    move-exception v2

    :try_start_4e
    const-string v3, "ExtraNetwork"

    const-string v4, "isWifiRestrict"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_4b

    nop

    if-eqz v1, :cond_59

    goto :goto_47

    :cond_59
    :goto_59
    return v0

    :goto_5a
    if-eqz v1, :cond_5f

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5f
    throw v0

    :cond_60
    :goto_60
    return v0
.end method

.method public static isWifiTempRestrict(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 12

    const/4 v0, 0x0

    if-eqz p0, :cond_60

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_60

    :cond_a
    const/4 v1, 0x0

    :try_start_b
    const-string v2, "content://com.miui.networkassistant.provider/temp_wifi_firewall/%s"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v8, v3, [Ljava/lang/String;

    aput-object p1, v8, v0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    if-eqz v1, :cond_45

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_45

    const-string v2, "temp_wifi_rule"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_3c} :catch_4d
    .catchall {:try_start_b .. :try_end_3c} :catchall_4b

    if-ne v2, v3, :cond_3f

    move v0, v3

    :cond_3f
    if-eqz v1, :cond_44

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_44
    return v0

    :cond_45
    if-eqz v1, :cond_59

    :goto_47
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_59

    :catchall_4b
    move-exception v0

    goto :goto_5a

    :catch_4d
    move-exception v2

    :try_start_4e
    const-string v3, "ExtraNetwork"

    const-string v4, "isWifiTempRestrict"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_4b

    nop

    if-eqz v1, :cond_59

    goto :goto_47

    :cond_59
    :goto_59
    return v0

    :goto_5a
    if-eqz v1, :cond_5f

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5f
    throw v0

    :cond_60
    :goto_60
    return v0
.end method

.method public static navigateToOperatorSettingActivity(Landroid/content/Context;I)V
    .registers 6

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_c

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.NETWORKASSISTANT_MONTH_PACKAGE_SETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_13

    :cond_c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.NETWORKASSISTANT_OPERATOR_SETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_13
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "sim_slot_num_tag"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x1

    const-string v3, "bundle_key_from_other_task"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static navigateToRichWebActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V
    .registers 9

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.NETWORKASSISTANT_TRAFFIC_PURCHASE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "bundle_key_url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "bundle_key_title"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "bundle_key_has_menu"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "bundle_key_purchase_from"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "bundle_key_com"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v2, ":miui:starting_window_label"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p5, :cond_31

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_31
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static navigateToSmsReportActivity(Landroid/content/Context;II)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.NETWORKASSISTANT_SMS_REPORT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "sim_slot_num_tag"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "correction_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static navigateToTrafficPurchasePage(Landroid/content/Context;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.NETWORKASSISTANT_TRAFFIC_PURCHASE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static navigateToTrafficPurchasePage(Landroid/content/Context;I)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.NETWORKASSISTANT_TRAFFIC_PURCHASE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "bundle_key_slotid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "bundle_key_com"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static navigateToTrafficPurchasePage(Landroid/content/Context;ILjava/lang/String;)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.NETWORKASSISTANT_TRAFFIC_PURCHASE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "bundle_key_slotid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "bundle_key_purchase_from"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "bundle_key_com"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static navigateToTrafficPurchasePage(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.NETWORKASSISTANT_TRAFFIC_PURCHASE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "bundle_key_purchase_from"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "bundle_key_com"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static queryTrafficPurchaseStatus(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_45

    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v0, v3

    if-eqz v0, :cond_45

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_45

    const-string v3, "traffic_purchase_enabled"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2c} :catch_30
    .catchall {:try_start_4 .. :try_end_2c} :catchall_2e

    move v1, v3

    goto :goto_45

    :catchall_2e
    move-exception v2

    goto :goto_3f

    :catch_30
    move-exception v2

    :try_start_31
    const-string v3, "ExtraNetwork"

    const-string v4, "queryTrafficPurchaseStatus"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_2e

    nop

    if-eqz v0, :cond_48

    :goto_3b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_48

    :goto_3f
    if-eqz v0, :cond_44

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_44
    throw v2

    :cond_45
    :goto_45
    if-eqz v0, :cond_48

    goto :goto_3b

    :cond_48
    :goto_48
    return v1
.end method

.method private static registerContentObserver(Landroid/content/Context;Ljava/lang/String;Landroid/database/ContentObserver;)V
    .registers 12

    :try_start_0
    const-string v0, "android.content.ContentResolver"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "registerContentObserver"

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/net/Uri;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Landroid/database/ContentObserver;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v6

    aput-object p2, v2, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v8

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_45

    nop

    goto :goto_4d

    :catch_45
    move-exception v0

    const-string v1, "ExtraNetwork"

    const-string v2, "registerContentObserver error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4d
    return-void
.end method

.method public static registerFirewallContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const-string v1, "content://com.miui.networkassistant.provider/firewall/%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lmiui/provider/ExtraNetwork;->registerContentObserver(Landroid/content/Context;Ljava/lang/String;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public static registerPackageContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;I)V
    .registers 4

    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    const-string v0, "content://com.miui.networkassistant.provider/bill_detail"

    goto :goto_e

    :cond_6
    const/4 v0, 0x4

    if-ne p2, v0, :cond_c

    const-string v0, "content://com.miui.networkassistant.provider/calltime_detail"

    goto :goto_e

    :cond_c
    const-string v0, "content://com.miui.networkassistant.provider/datausage_status"

    :goto_e
    invoke-static {p0, v0, p1}, Lmiui/provider/ExtraNetwork;->registerContentObserver(Landroid/content/Context;Ljava/lang/String;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public static setMobileRestrict(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 4

    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lmiui/provider/ExtraNetwork;->setMobileRestrict(Landroid/content/Context;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public static setMobileRestrict(Landroid/content/Context;Ljava/lang/String;ZI)Z
    .registers 11

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "content://com.miui.networkassistant.provider/mobile_firewall/%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_46

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "mobile_rule_slot"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "mobile_rule"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v5, "source_package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v4, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_42} :catch_47

    if-ne v5, v3, :cond_45

    move v0, v3

    :cond_45
    return v0

    :cond_46
    goto :goto_4f

    :catch_47
    move-exception v1

    const-string v2, "ExtraNetwork"

    const-string v3, "setMobileTempRestrict"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4f
    return v0
.end method

.method public static setMobileTempRestrict(Landroid/content/Context;Ljava/lang/String;IZ)Z
    .registers 11

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "content://com.miui.networkassistant.provider/temp_mobile_firewall/%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_46

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "temp_mobile_rule_slot"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "temp_mobile_rule"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v5, "source_package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v4, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_42} :catch_47

    if-ne v5, v3, :cond_45

    move v0, v3

    :cond_45
    return v0

    :cond_46
    goto :goto_4f

    :catch_47
    move-exception v1

    const-string v2, "ExtraNetwork"

    const-string v3, "setMobileTempRestrict"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4f
    return v0
.end method

.method public static setWifiRestrict(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "content://com.miui.networkassistant.provider/wifi_firewall/%s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_36

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "wifi_rule"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v5, "source_package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_32} :catch_37

    if-ne v5, v2, :cond_35

    move v0, v2

    :cond_35
    return v0

    :cond_36
    goto :goto_3f

    :catch_37
    move-exception v1

    const-string v2, "ExtraNetwork"

    const-string v3, "setWifiTempRestrict"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3f
    return v0
.end method

.method public static setWifiTempRestrict(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "content://com.miui.networkassistant.provider/temp_wifi_firewall/%s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_36

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "temp_wifi_rule"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v5, "source_package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_32} :catch_37

    if-ne v5, v2, :cond_35

    move v0, v2

    :cond_35
    return v0

    :cond_36
    goto :goto_3f

    :catch_37
    move-exception v1

    const-string v2, "ExtraNetwork"

    const-string v3, "setWifiTempRestrict"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3f
    return v0
.end method

.method public static startCorrection(Landroid/content/Context;II)Z
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "content://com.miui.networkassistant.provider/sms_correction"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "sim_slot_num_tag"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "correction_type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_29} :catch_2f

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2d

    move v0, v5

    :cond_2d
    return v0

    :cond_2e
    goto :goto_37

    :catch_2f
    move-exception v1

    const-string v2, "ExtraNetwork"

    const-string v3, "startCorrection"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_37
    return v0
.end method

.method public static unRegisterFirewallContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public static unRegisterPackageContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
