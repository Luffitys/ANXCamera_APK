.class public final Landroid/os/statistics/SchedSuperviser$SchedWait;
.super Landroid/os/statistics/MicroscopicEvent;
.source "SchedSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/SchedSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SchedWait"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/statistics/MicroscopicEvent<",
        "Landroid/os/statistics/SchedSuperviser$SchedWaitFields;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/statistics/SchedSuperviser$SchedWait;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/statistics/SchedSuperviser$SchedWait$1;

    invoke-direct {v0}, Landroid/os/statistics/SchedSuperviser$SchedWait$1;-><init>()V

    sput-object v0, Landroid/os/statistics/SchedSuperviser$SchedWait;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    new-instance v0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;

    invoke-direct {v0}, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;-><init>()V

    const/16 v1, 0xd

    invoke-direct {p0, v1, v0}, Landroid/os/statistics/MicroscopicEvent;-><init>(ILandroid/os/statistics/MicroscopicEvent$MicroEventFields;)V

    return-void
.end method
