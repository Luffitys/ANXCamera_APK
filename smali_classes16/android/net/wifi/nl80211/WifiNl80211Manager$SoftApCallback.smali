.class public interface abstract Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;
.super Ljava/lang/Object;
.source "WifiNl80211Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/WifiNl80211Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SoftApCallback"
.end annotation


# virtual methods
.method public abstract onConnectedClientsChanged(Landroid/net/wifi/nl80211/NativeWifiClient;Z)V
.end method

.method public abstract onFailure()V
.end method

.method public abstract onSoftApChannelSwitched(II)V
.end method
