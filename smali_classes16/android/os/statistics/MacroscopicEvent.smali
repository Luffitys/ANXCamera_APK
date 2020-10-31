.class public abstract Landroid/os/statistics/MacroscopicEvent;
.super Landroid/os/statistics/PerfEvent;
.source "MacroscopicEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/os/statistics/PerfEvent$DetailFields;",
        ">",
        "Landroid/os/statistics/PerfEvent<",
        "TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(ILandroid/os/statistics/PerfEvent$DetailFields;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/os/statistics/PerfEvent;-><init>(ILandroid/os/statistics/PerfEvent$DetailFields;)V

    return-void
.end method
