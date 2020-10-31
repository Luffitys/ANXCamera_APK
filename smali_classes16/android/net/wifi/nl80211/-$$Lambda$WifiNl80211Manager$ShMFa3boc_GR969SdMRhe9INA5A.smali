.class public final synthetic Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$ShMFa3boc_GR969SdMRhe9INA5A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;


# direct methods
.method public synthetic constructor <init>(Landroid/net/wifi/nl80211/WifiNl80211Manager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$ShMFa3boc_GR969SdMRhe9INA5A;->f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$ShMFa3boc_GR969SdMRhe9INA5A;->f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    invoke-virtual {v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->lambda$binderDied$0$WifiNl80211Manager()V

    return-void
.end method
