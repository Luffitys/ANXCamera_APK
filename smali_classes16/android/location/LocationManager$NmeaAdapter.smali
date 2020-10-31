.class Landroid/location/LocationManager$NmeaAdapter;
.super Landroid/location/GnssStatus$Callback;
.source "LocationManager.java"

# interfaces
.implements Landroid/location/OnNmeaMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NmeaAdapter"
.end annotation


# instance fields
.field private final mListener:Landroid/location/OnNmeaMessageListener;


# direct methods
.method private constructor <init>(Landroid/location/OnNmeaMessageListener;)V
    .registers 2

    invoke-direct {p0}, Landroid/location/GnssStatus$Callback;-><init>()V

    iput-object p1, p0, Landroid/location/LocationManager$NmeaAdapter;->mListener:Landroid/location/OnNmeaMessageListener;

    return-void
.end method

.method synthetic constructor <init>(Landroid/location/OnNmeaMessageListener;Landroid/location/LocationManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/LocationManager$NmeaAdapter;-><init>(Landroid/location/OnNmeaMessageListener;)V

    return-void
.end method


# virtual methods
.method public onNmeaMessage(Ljava/lang/String;J)V
    .registers 5

    iget-object v0, p0, Landroid/location/LocationManager$NmeaAdapter;->mListener:Landroid/location/OnNmeaMessageListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/location/OnNmeaMessageListener;->onNmeaMessage(Ljava/lang/String;J)V

    return-void
.end method
