.class public final synthetic Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$_84sQMp93x3MR5HbAeuP427nm0g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$_84sQMp93x3MR5HbAeuP427nm0g;->f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$_84sQMp93x3MR5HbAeuP427nm0g;->f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;

    invoke-static {v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->lambda$sendMgmtFrame$4(Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;)V

    return-void
.end method
