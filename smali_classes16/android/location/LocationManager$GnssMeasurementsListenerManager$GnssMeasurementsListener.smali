.class Landroid/location/LocationManager$GnssMeasurementsListenerManager$GnssMeasurementsListener;
.super Landroid/location/IGnssMeasurementsListener$Stub;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager$GnssMeasurementsListenerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GnssMeasurementsListener"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/location/LocationManager$GnssMeasurementsListenerManager;


# direct methods
.method private constructor <init>(Landroid/location/LocationManager$GnssMeasurementsListenerManager;)V
    .registers 2

    iput-object p1, p0, Landroid/location/LocationManager$GnssMeasurementsListenerManager$GnssMeasurementsListener;->this$1:Landroid/location/LocationManager$GnssMeasurementsListenerManager;

    invoke-direct {p0}, Landroid/location/IGnssMeasurementsListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/location/LocationManager$GnssMeasurementsListenerManager;Landroid/location/LocationManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/LocationManager$GnssMeasurementsListenerManager$GnssMeasurementsListener;-><init>(Landroid/location/LocationManager$GnssMeasurementsListenerManager;)V

    return-void
.end method

.method static synthetic lambda$onGnssMeasurementsReceived$0(Landroid/location/GnssMeasurementsEvent;Landroid/location/GnssMeasurementsEvent$Callback;)V
    .registers 2

    invoke-virtual {p1, p0}, Landroid/location/GnssMeasurementsEvent$Callback;->onGnssMeasurementsReceived(Landroid/location/GnssMeasurementsEvent;)V

    return-void
.end method

.method static synthetic lambda$onStatusChanged$1(ILandroid/location/GnssMeasurementsEvent$Callback;)V
    .registers 2

    invoke-virtual {p1, p0}, Landroid/location/GnssMeasurementsEvent$Callback;->onStatusChanged(I)V

    return-void
.end method


# virtual methods
.method public onGnssMeasurementsReceived(Landroid/location/GnssMeasurementsEvent;)V
    .registers 4

    iget-object v0, p0, Landroid/location/LocationManager$GnssMeasurementsListenerManager$GnssMeasurementsListener;->this$1:Landroid/location/LocationManager$GnssMeasurementsListenerManager;

    new-instance v1, Landroid/location/-$$Lambda$LocationManager$GnssMeasurementsListenerManager$GnssMeasurementsListener$KpnZ7QK-0TdYNaRuvj6jEAwntwA;

    invoke-direct {v1, p1}, Landroid/location/-$$Lambda$LocationManager$GnssMeasurementsListenerManager$GnssMeasurementsListener$KpnZ7QK-0TdYNaRuvj6jEAwntwA;-><init>(Landroid/location/GnssMeasurementsEvent;)V

    invoke-virtual {v0, v1}, Landroid/location/LocationManager$GnssMeasurementsListenerManager;->execute(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onStatusChanged(I)V
    .registers 4

    iget-object v0, p0, Landroid/location/LocationManager$GnssMeasurementsListenerManager$GnssMeasurementsListener;->this$1:Landroid/location/LocationManager$GnssMeasurementsListenerManager;

    new-instance v1, Landroid/location/-$$Lambda$LocationManager$GnssMeasurementsListenerManager$GnssMeasurementsListener$VaDOMlyMw_gbfsmNktA3uK1Vz-o;

    invoke-direct {v1, p1}, Landroid/location/-$$Lambda$LocationManager$GnssMeasurementsListenerManager$GnssMeasurementsListener$VaDOMlyMw_gbfsmNktA3uK1Vz-o;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/location/LocationManager$GnssMeasurementsListenerManager;->execute(Ljava/util/function/Consumer;)V

    return-void
.end method
