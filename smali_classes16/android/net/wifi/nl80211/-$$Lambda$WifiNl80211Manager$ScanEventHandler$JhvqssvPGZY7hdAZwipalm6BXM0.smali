.class public final synthetic Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$ScanEventHandler$JhvqssvPGZY7hdAZwipalm6BXM0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;


# direct methods
.method public synthetic constructor <init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$ScanEventHandler$JhvqssvPGZY7hdAZwipalm6BXM0;->f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$ScanEventHandler$JhvqssvPGZY7hdAZwipalm6BXM0;->f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;

    invoke-virtual {v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->lambda$OnScanFailed$1$WifiNl80211Manager$ScanEventHandler()V

    return-void
.end method
