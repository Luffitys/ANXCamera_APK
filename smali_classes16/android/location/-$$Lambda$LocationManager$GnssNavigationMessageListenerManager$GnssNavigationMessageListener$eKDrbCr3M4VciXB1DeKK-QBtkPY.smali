.class public final synthetic Landroid/location/-$$Lambda$LocationManager$GnssNavigationMessageListenerManager$GnssNavigationMessageListener$eKDrbCr3M4VciXB1DeKK-QBtkPY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/location/GnssNavigationMessage;


# direct methods
.method public synthetic constructor <init>(Landroid/location/GnssNavigationMessage;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/location/-$$Lambda$LocationManager$GnssNavigationMessageListenerManager$GnssNavigationMessageListener$eKDrbCr3M4VciXB1DeKK-QBtkPY;->f$0:Landroid/location/GnssNavigationMessage;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/location/-$$Lambda$LocationManager$GnssNavigationMessageListenerManager$GnssNavigationMessageListener$eKDrbCr3M4VciXB1DeKK-QBtkPY;->f$0:Landroid/location/GnssNavigationMessage;

    check-cast p1, Landroid/location/GnssNavigationMessage$Callback;

    invoke-static {v0, p1}, Landroid/location/LocationManager$GnssNavigationMessageListenerManager$GnssNavigationMessageListener;->lambda$onGnssNavigationMessageReceived$0(Landroid/location/GnssNavigationMessage;Landroid/location/GnssNavigationMessage$Callback;)V

    return-void
.end method
