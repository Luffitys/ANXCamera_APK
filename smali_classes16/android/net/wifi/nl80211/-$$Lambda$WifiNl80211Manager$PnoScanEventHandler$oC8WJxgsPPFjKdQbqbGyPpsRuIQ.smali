.class public final synthetic Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$PnoScanEventHandler$oC8WJxgsPPFjKdQbqbGyPpsRuIQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;


# direct methods
.method public synthetic constructor <init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$PnoScanEventHandler$oC8WJxgsPPFjKdQbqbGyPpsRuIQ;->f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$PnoScanEventHandler$oC8WJxgsPPFjKdQbqbGyPpsRuIQ;->f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;

    invoke-virtual {v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;->lambda$OnPnoScanFailed$1$WifiNl80211Manager$PnoScanEventHandler()V

    return-void
.end method
