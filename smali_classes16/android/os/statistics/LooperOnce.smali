.class public final Landroid/os/statistics/LooperOnce;
.super Landroid/os/statistics/MicroscopicEvent;
.source "LooperOnce.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/statistics/MicroscopicEvent<",
        "Landroid/os/statistics/MicroscopicEvent$MicroEventFields;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/statistics/LooperOnce;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/statistics/LooperOnce$1;

    invoke-direct {v0}, Landroid/os/statistics/LooperOnce$1;-><init>()V

    sput-object v0, Landroid/os/statistics/LooperOnce;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    new-instance v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;-><init>(Z)V

    const/16 v1, 0xb

    invoke-direct {p0, v1, v0}, Landroid/os/statistics/MicroscopicEvent;-><init>(ILandroid/os/statistics/MicroscopicEvent$MicroEventFields;)V

    return-void
.end method
