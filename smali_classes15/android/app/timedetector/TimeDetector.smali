.class public interface abstract Landroid/app/timedetector/TimeDetector;
.super Ljava/lang/Object;
.source "TimeDetector.java"


# direct methods
.method public static createManualTimeSuggestion(JLjava/lang/String;)Landroid/app/timedetector/ManualTimeSuggestion;
    .registers 7

    new-instance v0, Landroid/os/TimestampedValue;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/os/TimestampedValue;-><init>(JLjava/lang/Object;)V

    new-instance v1, Landroid/app/timedetector/ManualTimeSuggestion;

    invoke-direct {v1, v0}, Landroid/app/timedetector/ManualTimeSuggestion;-><init>(Landroid/os/TimestampedValue;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Landroid/app/timedetector/ManualTimeSuggestion;->addDebugInfo([Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public abstract suggestManualTime(Landroid/app/timedetector/ManualTimeSuggestion;)V
.end method

.method public abstract suggestNetworkTime(Landroid/app/timedetector/NetworkTimeSuggestion;)V
.end method

.method public abstract suggestTelephonyTime(Landroid/app/timedetector/TelephonyTimeSuggestion;)V
.end method
