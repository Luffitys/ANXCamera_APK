.class public Lcom/miui/enterprise/settings/EnterpriseSettings$Device;
.super Ljava/lang/Object;
.source "EnterpriseSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/enterprise/settings/EnterpriseSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Device"
.end annotation


# static fields
.field public static final HOME_DEFAULT:Ljava/lang/String; = "ep_default_home"

.field public static final HOST_BLACK_LIST:Ljava/lang/String; = "ep_url_black_list"

.field public static final HOST_RESRTICTION_MODE:Ljava/lang/String; = "ep_host_restriction_mode"

.field public static final HOST_WHITE_LIST:Ljava/lang/String; = "ep_url_white_list"

.field public static final IP_BLACK_LIST:Ljava/lang/String; = "ep_ip_black_list"

.field public static final IP_RESTRICTION_MODE:Ljava/lang/String; = "ep_ip_restriction_mode"

.field public static final IP_WHITE_LIST:Ljava/lang/String; = "ep_ip_white_list"

.field public static final WIFI_AP_BSSID_BLACK_LIST:Ljava/lang/String; = "ep_wifi_ap_bssid_black_list"

.field public static final WIFI_AP_BSSID_WHITE_LIST:Ljava/lang/String; = "ep_wifi_ap_bssid_white_list"

.field public static final WIFI_AP_SSID_BLACK_LIST:Ljava/lang/String; = "ep_wifi_ap_ssid_black_list"

.field public static final WIFI_AP_SSID_WHITE_LIST:Ljava/lang/String; = "ep_wifi_ap_ssid_white_list"

.field public static final WIFI_CONN_RESRTICTION_MODE:Ljava/lang/String; = "ep_wifi_conn_restriction_mode"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
