.class public final synthetic Landroid/location/-$$Lambda$LocationManager$GnssMeasurementsListenerManager$GnssMeasurementsListener$VaDOMlyMw_gbfsmNktA3uK1Vz-o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/location/-$$Lambda$LocationManager$GnssMeasurementsListenerManager$GnssMeasurementsListener$VaDOMlyMw_gbfsmNktA3uK1Vz-o;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Landroid/location/-$$Lambda$LocationManager$GnssMeasurementsListenerManager$GnssMeasurementsListener$VaDOMlyMw_gbfsmNktA3uK1Vz-o;->f$0:I

    check-cast p1, Landroid/location/GnssMeasurementsEvent$Callback;

    invoke-static {v0, p1}, Landroid/location/LocationManager$GnssMeasurementsListenerManager$GnssMeasurementsListener;->lambda$onStatusChanged$1(ILandroid/location/GnssMeasurementsEvent$Callback;)V

    return-void
.end method
