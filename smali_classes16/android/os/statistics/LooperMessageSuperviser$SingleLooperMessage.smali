.class public Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;
.super Landroid/os/statistics/MicroscopicEvent;
.source "LooperMessageSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/LooperMessageSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleLooperMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/statistics/MicroscopicEvent<",
        "Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage$1;

    invoke-direct {v0}, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage$1;-><init>()V

    sput-object v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    new-instance v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;

    invoke-direct {v0}, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;-><init>()V

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Landroid/os/statistics/MicroscopicEvent;-><init>(ILandroid/os/statistics/MicroscopicEvent$MicroEventFields;)V

    return-void
.end method
