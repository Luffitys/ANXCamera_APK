.class Landroid/location/LocationManager$GnssNavigationMessageListenerManager$GnssNavigationMessageListener;
.super Landroid/location/IGnssNavigationMessageListener$Stub;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager$GnssNavigationMessageListenerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GnssNavigationMessageListener"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/location/LocationManager$GnssNavigationMessageListenerManager;


# direct methods
.method private constructor <init>(Landroid/location/LocationManager$GnssNavigationMessageListenerManager;)V
    .registers 2

    iput-object p1, p0, Landroid/location/LocationManager$GnssNavigationMessageListenerManager$GnssNavigationMessageListener;->this$1:Landroid/location/LocationManager$GnssNavigationMessageListenerManager;

    invoke-direct {p0}, Landroid/location/IGnssNavigationMessageListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/location/LocationManager$GnssNavigationMessageListenerManager;Landroid/location/LocationManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/LocationManager$GnssNavigationMessageListenerManager$GnssNavigationMessageListener;-><init>(Landroid/location/LocationManager$GnssNavigationMessageListenerManager;)V

    return-void
.end method

.method static synthetic lambda$onGnssNavigationMessageReceived$0(Landroid/location/GnssNavigationMessage;Landroid/location/GnssNavigationMessage$Callback;)V
    .registers 2

    invoke-virtual {p1, p0}, Landroid/location/GnssNavigationMessage$Callback;->onGnssNavigationMessageReceived(Landroid/location/GnssNavigationMessage;)V

    return-void
.end method

.method static synthetic lambda$onStatusChanged$1(ILandroid/location/GnssNavigationMessage$Callback;)V
    .registers 2

    invoke-virtual {p1, p0}, Landroid/location/GnssNavigationMessage$Callback;->onStatusChanged(I)V

    return-void
.end method


# virtual methods
.method public onGnssNavigationMessageReceived(Landroid/location/GnssNavigationMessage;)V
    .registers 4

    iget-object v0, p0, Landroid/location/LocationManager$GnssNavigationMessageListenerManager$GnssNavigationMessageListener;->this$1:Landroid/location/LocationManager$GnssNavigationMessageListenerManager;

    new-instance v1, Landroid/location/-$$Lambda$LocationManager$GnssNavigationMessageListenerManager$GnssNavigationMessageListener$eKDrbCr3M4VciXB1DeKK-QBtkPY;

    invoke-direct {v1, p1}, Landroid/location/-$$Lambda$LocationManager$GnssNavigationMessageListenerManager$GnssNavigationMessageListener$eKDrbCr3M4VciXB1DeKK-QBtkPY;-><init>(Landroid/location/GnssNavigationMessage;)V

    invoke-virtual {v0, v1}, Landroid/location/LocationManager$GnssNavigationMessageListenerManager;->execute(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onStatusChanged(I)V
    .registers 4

    iget-object v0, p0, Landroid/location/LocationManager$GnssNavigationMessageListenerManager$GnssNavigationMessageListener;->this$1:Landroid/location/LocationManager$GnssNavigationMessageListenerManager;

    new-instance v1, Landroid/location/-$$Lambda$LocationManager$GnssNavigationMessageListenerManager$GnssNavigationMessageListener$hPtXaHVfOUh07rZHHklhJOg9b4g;

    invoke-direct {v1, p1}, Landroid/location/-$$Lambda$LocationManager$GnssNavigationMessageListenerManager$GnssNavigationMessageListener$hPtXaHVfOUh07rZHHklhJOg9b4g;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/location/LocationManager$GnssNavigationMessageListenerManager;->execute(Ljava/util/function/Consumer;)V

    return-void
.end method
