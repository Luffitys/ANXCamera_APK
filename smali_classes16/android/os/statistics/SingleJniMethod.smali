.class public final Landroid/os/statistics/SingleJniMethod;
.super Landroid/os/statistics/MicroscopicEvent;
.source "SingleJniMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/SingleJniMethod$JniMethodFields;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/statistics/MicroscopicEvent<",
        "Landroid/os/statistics/SingleJniMethod$JniMethodFields;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/statistics/SingleJniMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/statistics/SingleJniMethod$1;

    invoke-direct {v0}, Landroid/os/statistics/SingleJniMethod$1;-><init>()V

    sput-object v0, Landroid/os/statistics/SingleJniMethod;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    new-instance v0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;

    invoke-direct {v0}, Landroid/os/statistics/SingleJniMethod$JniMethodFields;-><init>()V

    const/16 v1, 0xa

    invoke-direct {p0, v1, v0}, Landroid/os/statistics/MicroscopicEvent;-><init>(ILandroid/os/statistics/MicroscopicEvent$MicroEventFields;)V

    return-void
.end method


# virtual methods
.method public isMeaningful()Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/os/statistics/SingleJniMethod;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Landroid/os/statistics/SingleJniMethod;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v1

    check-cast v1, Landroid/os/statistics/SingleJniMethod$JniMethodFields;

    iget-object v0, v1, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->stackTrace:[Ljava/lang/String;

    :cond_f
    if-eqz v0, :cond_16

    array-length v1, v0

    if-lez v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method
