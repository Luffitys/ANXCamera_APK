.class Landroid/location/LocationManager$GnssStatusListenerManager$GnssStatusListener;
.super Landroid/location/IGnssStatusListener$Stub;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager$GnssStatusListenerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GnssStatusListener"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/location/LocationManager$GnssStatusListenerManager;


# direct methods
.method private constructor <init>(Landroid/location/LocationManager$GnssStatusListenerManager;)V
    .registers 2

    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerManager$GnssStatusListener;->this$1:Landroid/location/LocationManager$GnssStatusListenerManager;

    invoke-direct {p0}, Landroid/location/IGnssStatusListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/location/LocationManager$GnssStatusListenerManager;Landroid/location/LocationManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/LocationManager$GnssStatusListenerManager$GnssStatusListener;-><init>(Landroid/location/LocationManager$GnssStatusListenerManager;)V

    return-void
.end method

.method static synthetic lambda$onFirstFix$0(ILandroid/location/GnssStatus$Callback;)V
    .registers 2

    invoke-virtual {p1, p0}, Landroid/location/GnssStatus$Callback;->onFirstFix(I)V

    return-void
.end method

.method static synthetic lambda$onNmeaReceived$2(Ljava/lang/String;JLandroid/location/GnssStatus$Callback;)V
    .registers 5

    instance-of v0, p3, Landroid/location/LocationManager$NmeaAdapter;

    if-eqz v0, :cond_a

    move-object v0, p3

    check-cast v0, Landroid/location/LocationManager$NmeaAdapter;

    invoke-virtual {v0, p0, p1, p2}, Landroid/location/LocationManager$NmeaAdapter;->onNmeaMessage(Ljava/lang/String;J)V

    :cond_a
    return-void
.end method

.method static synthetic lambda$onSvStatusChanged$1(Landroid/location/GnssStatus;Landroid/location/GnssStatus$Callback;)V
    .registers 2

    invoke-virtual {p1, p0}, Landroid/location/GnssStatus$Callback;->onSatelliteStatusChanged(Landroid/location/GnssStatus;)V

    return-void
.end method


# virtual methods
.method public onFirstFix(I)V
    .registers 4

    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerManager$GnssStatusListener;->this$1:Landroid/location/LocationManager$GnssStatusListenerManager;

    # setter for: Landroid/location/LocationManager$GnssStatusListenerManager;->mTtff:I
    invoke-static {v0, p1}, Landroid/location/LocationManager$GnssStatusListenerManager;->access$1202(Landroid/location/LocationManager$GnssStatusListenerManager;I)I

    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerManager$GnssStatusListener;->this$1:Landroid/location/LocationManager$GnssStatusListenerManager;

    new-instance v1, Landroid/location/-$$Lambda$LocationManager$GnssStatusListenerManager$GnssStatusListener$7Fi5XkeF81eL_OKPS2GJMvyc3-8;

    invoke-direct {v1, p1}, Landroid/location/-$$Lambda$LocationManager$GnssStatusListenerManager$GnssStatusListener$7Fi5XkeF81eL_OKPS2GJMvyc3-8;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/location/LocationManager$GnssStatusListenerManager;->execute(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onGnssStarted()V
    .registers 3

    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerManager$GnssStatusListener;->this$1:Landroid/location/LocationManager$GnssStatusListenerManager;

    sget-object v1, Landroid/location/-$$Lambda$-z-Hjl12STdAybauR3BT-ftvWd0;->INSTANCE:Landroid/location/-$$Lambda$-z-Hjl12STdAybauR3BT-ftvWd0;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager$GnssStatusListenerManager;->execute(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onGnssStopped()V
    .registers 3

    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerManager$GnssStatusListener;->this$1:Landroid/location/LocationManager$GnssStatusListenerManager;

    sget-object v1, Landroid/location/-$$Lambda$UmbtQF279SH5h72Ftfcj_s96jsY;->INSTANCE:Landroid/location/-$$Lambda$UmbtQF279SH5h72Ftfcj_s96jsY;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager$GnssStatusListenerManager;->execute(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onNmeaReceived(JLjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerManager$GnssStatusListener;->this$1:Landroid/location/LocationManager$GnssStatusListenerManager;

    new-instance v1, Landroid/location/-$$Lambda$LocationManager$GnssStatusListenerManager$GnssStatusListener$gYcH61KCtV_OcJJszI1TfvnrJHY;

    invoke-direct {v1, p3, p1, p2}, Landroid/location/-$$Lambda$LocationManager$GnssStatusListenerManager$GnssStatusListener$gYcH61KCtV_OcJJszI1TfvnrJHY;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/location/LocationManager$GnssStatusListenerManager;->execute(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onSvStatusChanged(I[I[F[F[F[F[F)V
    .registers 11

    invoke-static/range {p1 .. p7}, Landroid/location/GnssStatus;->wrap(I[I[F[F[F[F[F)Landroid/location/GnssStatus;

    move-result-object v0

    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerManager$GnssStatusListener;->this$1:Landroid/location/LocationManager$GnssStatusListenerManager;

    # setter for: Landroid/location/LocationManager$GnssStatusListenerManager;->mGnssStatus:Landroid/location/GnssStatus;
    invoke-static {v1, v0}, Landroid/location/LocationManager$GnssStatusListenerManager;->access$1302(Landroid/location/LocationManager$GnssStatusListenerManager;Landroid/location/GnssStatus;)Landroid/location/GnssStatus;

    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerManager$GnssStatusListener;->this$1:Landroid/location/LocationManager$GnssStatusListenerManager;

    new-instance v2, Landroid/location/-$$Lambda$LocationManager$GnssStatusListenerManager$GnssStatusListener$4EPi22o4xuVnpNhFHnDvebH4TG8;

    invoke-direct {v2, v0}, Landroid/location/-$$Lambda$LocationManager$GnssStatusListenerManager$GnssStatusListener$4EPi22o4xuVnpNhFHnDvebH4TG8;-><init>(Landroid/location/GnssStatus;)V

    invoke-virtual {v1, v2}, Landroid/location/LocationManager$GnssStatusListenerManager;->execute(Ljava/util/function/Consumer;)V

    return-void
.end method
