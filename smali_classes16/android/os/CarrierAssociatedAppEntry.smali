.class public final Landroid/os/CarrierAssociatedAppEntry;
.super Ljava/lang/Object;
.source "CarrierAssociatedAppEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/CarrierAssociatedAppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final SDK_UNSPECIFIED:I = -0x1


# instance fields
.field public final addedInSdk:I

.field public final packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/CarrierAssociatedAppEntry$1;

    invoke-direct {v0}, Landroid/os/CarrierAssociatedAppEntry$1;-><init>()V

    sput-object v0, Landroid/os/CarrierAssociatedAppEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/CarrierAssociatedAppEntry;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/CarrierAssociatedAppEntry;->addedInSdk:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/CarrierAssociatedAppEntry;->packageName:Ljava/lang/String;

    iput p2, p0, Landroid/os/CarrierAssociatedAppEntry;->addedInSdk:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/os/CarrierAssociatedAppEntry;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/os/CarrierAssociatedAppEntry;->addedInSdk:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
