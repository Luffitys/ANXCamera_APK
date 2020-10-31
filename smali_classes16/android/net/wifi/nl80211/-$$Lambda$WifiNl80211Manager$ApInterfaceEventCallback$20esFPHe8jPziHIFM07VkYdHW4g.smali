.class public final synthetic Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$ApInterfaceEventCallback$20esFPHe8jPziHIFM07VkYdHW4g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$ApInterfaceEventCallback$20esFPHe8jPziHIFM07VkYdHW4g;->f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;

    iput p2, p0, Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$ApInterfaceEventCallback$20esFPHe8jPziHIFM07VkYdHW4g;->f$1:I

    iput p3, p0, Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$ApInterfaceEventCallback$20esFPHe8jPziHIFM07VkYdHW4g;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$ApInterfaceEventCallback$20esFPHe8jPziHIFM07VkYdHW4g;->f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;

    iget v1, p0, Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$ApInterfaceEventCallback$20esFPHe8jPziHIFM07VkYdHW4g;->f$1:I

    iget v2, p0, Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$ApInterfaceEventCallback$20esFPHe8jPziHIFM07VkYdHW4g;->f$2:I

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;->lambda$onSoftApChannelSwitched$1$WifiNl80211Manager$ApInterfaceEventCallback(II)V

    return-void
.end method
