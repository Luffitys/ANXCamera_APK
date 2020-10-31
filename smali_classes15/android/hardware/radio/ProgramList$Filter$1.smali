.class Landroid/hardware/radio/ProgramList$Filter$1;
.super Ljava/lang/Object;
.source "ProgramList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/ProgramList$Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/radio/ProgramList$Filter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/ProgramList$Filter;
    .registers 4

    new-instance v0, Landroid/hardware/radio/ProgramList$Filter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/hardware/radio/ProgramList$Filter;-><init>(Landroid/os/Parcel;Landroid/hardware/radio/ProgramList$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/hardware/radio/ProgramList$Filter$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/ProgramList$Filter;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/radio/ProgramList$Filter;
    .registers 3

    new-array v0, p1, [Landroid/hardware/radio/ProgramList$Filter;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/hardware/radio/ProgramList$Filter$1;->newArray(I)[Landroid/hardware/radio/ProgramList$Filter;

    move-result-object p1

    return-object p1
.end method
