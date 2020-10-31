.class public final synthetic Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$ApInterfaceEventCallback$zuIZfwyoTzyDkXzsmkaKM1lhmGY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;

.field public final synthetic f$1:Landroid/net/wifi/nl80211/NativeWifiClient;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;Landroid/net/wifi/nl80211/NativeWifiClient;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$ApInterfaceEventCallback$zuIZfwyoTzyDkXzsmkaKM1lhmGY;->f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;

    iput-object p2, p0, Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$ApInterfaceEventCallback$zuIZfwyoTzyDkXzsmkaKM1lhmGY;->f$1:Landroid/net/wifi/nl80211/NativeWifiClient;

    iput-boolean p3, p0, Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$ApInterfaceEventCallback$zuIZfwyoTzyDkXzsmkaKM1lhmGY;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$ApInterfaceEventCallback$zuIZfwyoTzyDkXzsmkaKM1lhmGY;->f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;

    iget-object v1, p0, Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$ApInterfaceEventCallback$zuIZfwyoTzyDkXzsmkaKM1lhmGY;->f$1:Landroid/net/wifi/nl80211/NativeWifiClient;

    iget-boolean v2, p0, Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$ApInterfaceEventCallback$zuIZfwyoTzyDkXzsmkaKM1lhmGY;->f$2:Z

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;->lambda$onConnectedClientsChanged$0$WifiNl80211Manager$ApInterfaceEventCallback(Landroid/net/wifi/nl80211/NativeWifiClient;Z)V

    return-void
.end method
