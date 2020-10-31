.class public final Landroid/app/timezonedetector/TimeZoneDetectorImpl;
.super Ljava/lang/Object;
.source "TimeZoneDetectorImpl.java"

# interfaces
.implements Landroid/app/timezonedetector/TimeZoneDetector;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "timezonedetector.TimeZoneDetector"


# instance fields
.field private final mITimeZoneDetectorService:Landroid/app/timezonedetector/ITimeZoneDetectorService;


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    const-string/jumbo v0, "time_zone_detector"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/timezonedetector/ITimeZoneDetectorService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/timezonedetector/TimeZoneDetectorImpl;->mITimeZoneDetectorService:Landroid/app/timezonedetector/ITimeZoneDetectorService;

    return-void
.end method


# virtual methods
.method public suggestManualTimeZone(Landroid/app/timezonedetector/ManualTimeZoneSuggestion;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/app/timezonedetector/TimeZoneDetectorImpl;->mITimeZoneDetectorService:Landroid/app/timezonedetector/ITimeZoneDetectorService;

    invoke-interface {v0, p1}, Landroid/app/timezonedetector/ITimeZoneDetectorService;->suggestManualTimeZone(Landroid/app/timezonedetector/ManualTimeZoneSuggestion;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    nop

    return-void

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public suggestTelephonyTimeZone(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/app/timezonedetector/TimeZoneDetectorImpl;->mITimeZoneDetectorService:Landroid/app/timezonedetector/ITimeZoneDetectorService;

    invoke-interface {v0, p1}, Landroid/app/timezonedetector/ITimeZoneDetectorService;->suggestTelephonyTimeZone(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    nop

    return-void

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
