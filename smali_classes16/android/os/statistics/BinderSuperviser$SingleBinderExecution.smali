.class public Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;
.super Landroid/os/statistics/MicroscopicEvent;
.source "BinderSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/BinderSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleBinderExecution"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/statistics/MicroscopicEvent<",
        "Landroid/os/statistics/BinderSuperviser$BinderExecutionFields;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution$1;

    invoke-direct {v0}, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution$1;-><init>()V

    sput-object v0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    new-instance v0, Landroid/os/statistics/BinderSuperviser$BinderExecutionFields;

    invoke-direct {v0}, Landroid/os/statistics/BinderSuperviser$BinderExecutionFields;-><init>()V

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Landroid/os/statistics/MicroscopicEvent;-><init>(ILandroid/os/statistics/MicroscopicEvent$MicroEventFields;)V

    return-void
.end method
