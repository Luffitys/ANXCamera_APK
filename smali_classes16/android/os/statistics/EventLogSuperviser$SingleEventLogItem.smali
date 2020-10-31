.class public Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;
.super Landroid/os/statistics/MacroscopicEvent;
.source "EventLogSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/EventLogSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleEventLogItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/statistics/MacroscopicEvent<",
        "Landroid/os/statistics/EventLogSuperviser$EventLogFields;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem$1;

    invoke-direct {v0}, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem$1;-><init>()V

    sput-object v0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    new-instance v0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;

    invoke-direct {v0}, Landroid/os/statistics/EventLogSuperviser$EventLogFields;-><init>()V

    const/high16 v1, 0x10000

    invoke-direct {p0, v1, v0}, Landroid/os/statistics/MacroscopicEvent;-><init>(ILandroid/os/statistics/PerfEvent$DetailFields;)V

    return-void
.end method
