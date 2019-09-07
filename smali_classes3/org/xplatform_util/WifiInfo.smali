.class Lorg/xplatform_util/WifiInfo;
.super Ljava/lang/Object;
.source "SystemInfo.java"


# instance fields
.field public BSSID:Ljava/lang/String;

.field public SSID:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getBssid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/xplatform_util/WifiInfo;->BSSID:Ljava/lang/String;

    return-object p0
.end method

.method getSsid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/xplatform_util/WifiInfo;->SSID:Ljava/lang/String;

    return-object p0
.end method
