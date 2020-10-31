.class public interface abstract Landroid/app/timezonedetector/ITimeZoneDetectorService;
.super Ljava/lang/Object;
.source "ITimeZoneDetectorService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;,
        Landroid/app/timezonedetector/ITimeZoneDetectorService$Default;
    }
.end annotation


# virtual methods
.method public abstract suggestManualTimeZone(Landroid/app/timezonedetector/ManualTimeZoneSuggestion;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract suggestTelephonyTimeZone(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
