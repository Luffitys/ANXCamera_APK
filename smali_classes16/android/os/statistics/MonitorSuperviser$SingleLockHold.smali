.class public final Landroid/os/statistics/MonitorSuperviser$SingleLockHold;
.super Landroid/os/statistics/MicroscopicEvent;
.source "MonitorSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/MonitorSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingleLockHold"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/statistics/MicroscopicEvent<",
        "Landroid/os/statistics/MonitorSuperviser$SingleMonitorReadyFields;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/statistics/MonitorSuperviser$SingleLockHold;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/statistics/MonitorSuperviser$SingleLockHold$1;

    invoke-direct {v0}, Landroid/os/statistics/MonitorSuperviser$SingleLockHold$1;-><init>()V

    sput-object v0, Landroid/os/statistics/MonitorSuperviser$SingleLockHold;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    new-instance v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorReadyFields;

    invoke-direct {v0}, Landroid/os/statistics/MonitorSuperviser$SingleMonitorReadyFields;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/os/statistics/MicroscopicEvent;-><init>(ILandroid/os/statistics/MicroscopicEvent$MicroEventFields;)V

    return-void
.end method
