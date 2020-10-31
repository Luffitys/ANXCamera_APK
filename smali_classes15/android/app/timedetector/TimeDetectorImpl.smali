.class public final Landroid/app/timedetector/TimeDetectorImpl;
.super Ljava/lang/Object;
.source "TimeDetectorImpl.java"

# interfaces
.implements Landroid/app/timedetector/TimeDetector;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "timedetector.TimeDetector"


# instance fields
.field private final mITimeDetectorService:Landroid/app/timedetector/ITimeDetectorService;


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

    const-string/jumbo v0, "time_detector"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/timedetector/ITimeDetectorService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/timedetector/ITimeDetectorService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/timedetector/TimeDetectorImpl;->mITimeDetectorService:Landroid/app/timedetector/ITimeDetectorService;

    return-void
.end method


# virtual methods
.method public suggestManualTime(Landroid/app/timedetector/ManualTimeSuggestion;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/app/timedetector/TimeDetectorImpl;->mITimeDetectorService:Landroid/app/timedetector/ITimeDetectorService;

    invoke-interface {v0, p1}, Landroid/app/timedetector/ITimeDetectorService;->suggestManualTime(Landroid/app/timedetector/ManualTimeSuggestion;)V
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

.method public suggestNetworkTime(Landroid/app/timedetector/NetworkTimeSuggestion;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/app/timedetector/TimeDetectorImpl;->mITimeDetectorService:Landroid/app/timedetector/ITimeDetectorService;

    invoke-interface {v0, p1}, Landroid/app/timedetector/ITimeDetectorService;->suggestNetworkTime(Landroid/app/timedetector/NetworkTimeSuggestion;)V
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

.method public suggestTelephonyTime(Landroid/app/timedetector/TelephonyTimeSuggestion;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/app/timedetector/TimeDetectorImpl;->mITimeDetectorService:Landroid/app/timedetector/ITimeDetectorService;

    invoke-interface {v0, p1}, Landroid/app/timedetector/ITimeDetectorService;->suggestTelephonyTime(Landroid/app/timedetector/TelephonyTimeSuggestion;)V
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
