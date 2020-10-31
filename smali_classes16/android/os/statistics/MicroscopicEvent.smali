.class public abstract Landroid/os/statistics/MicroscopicEvent;
.super Landroid/os/statistics/PerfEvent;
.source "MicroscopicEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/MicroscopicEvent$RootEventFields;,
        Landroid/os/statistics/MicroscopicEvent$MeasurementEventFields;,
        Landroid/os/statistics/MicroscopicEvent$BlockerEventFields;,
        Landroid/os/statistics/MicroscopicEvent$BlockedEventFields;,
        Landroid/os/statistics/MicroscopicEvent$MicroEventFields;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/os/statistics/MicroscopicEvent$MicroEventFields;",
        ">",
        "Landroid/os/statistics/PerfEvent<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final SCHED_POLICY_UNKNOWN:I = -0x1


# direct methods
.method constructor <init>(ILandroid/os/statistics/MicroscopicEvent$MicroEventFields;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/os/statistics/PerfEvent;-><init>(ILandroid/os/statistics/PerfEvent$DetailFields;)V

    return-void
.end method
