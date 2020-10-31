.class public final synthetic Landroid/net/wifi/nl80211/-$$Lambda$ZG2hKx497SbMnsFFcQwIH8UGwrM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanRequestCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanRequestCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/nl80211/-$$Lambda$ZG2hKx497SbMnsFFcQwIH8UGwrM;->f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanRequestCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/net/wifi/nl80211/-$$Lambda$ZG2hKx497SbMnsFFcQwIH8UGwrM;->f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanRequestCallback;

    invoke-interface {v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanRequestCallback;->onPnoRequestSucceeded()V

    return-void
.end method
