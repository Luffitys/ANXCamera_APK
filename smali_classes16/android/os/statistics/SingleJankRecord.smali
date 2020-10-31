.class public Landroid/os/statistics/SingleJankRecord;
.super Landroid/os/statistics/MacroscopicEvent;
.source "SingleJankRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/SingleJankRecord$JankRecordFields;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/statistics/MacroscopicEvent<",
        "Landroid/os/statistics/SingleJankRecord$JankRecordFields;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/statistics/SingleJankRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/statistics/SingleJankRecord$1;

    invoke-direct {v0}, Landroid/os/statistics/SingleJankRecord$1;-><init>()V

    sput-object v0, Landroid/os/statistics/SingleJankRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    new-instance v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;

    invoke-direct {v0}, Landroid/os/statistics/SingleJankRecord$JankRecordFields;-><init>()V

    const v1, 0x10002

    invoke-direct {p0, v1, v0}, Landroid/os/statistics/MacroscopicEvent;-><init>(ILandroid/os/statistics/PerfEvent$DetailFields;)V

    return-void
.end method
