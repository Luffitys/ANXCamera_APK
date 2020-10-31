.class public Landroid/os/statistics/BinderSuperviser$BinderStarvation;
.super Landroid/os/statistics/MacroscopicEvent;
.source "BinderSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/BinderSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BinderStarvation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/statistics/MacroscopicEvent<",
        "Landroid/os/statistics/BinderSuperviser$BinderStarvationDetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/statistics/BinderSuperviser$BinderStarvation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/statistics/BinderSuperviser$BinderStarvation$1;

    invoke-direct {v0}, Landroid/os/statistics/BinderSuperviser$BinderStarvation$1;-><init>()V

    sput-object v0, Landroid/os/statistics/BinderSuperviser$BinderStarvation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    new-instance v0, Landroid/os/statistics/BinderSuperviser$BinderStarvationDetails;

    invoke-direct {v0}, Landroid/os/statistics/BinderSuperviser$BinderStarvationDetails;-><init>()V

    const v1, 0x10004

    invoke-direct {p0, v1, v0}, Landroid/os/statistics/MacroscopicEvent;-><init>(ILandroid/os/statistics/PerfEvent$DetailFields;)V

    return-void
.end method
