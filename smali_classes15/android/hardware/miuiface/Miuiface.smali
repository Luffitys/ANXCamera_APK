.class public final Landroid/hardware/miuiface/Miuiface;
.super Ljava/lang/Object;
.source "Miuiface.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/miuiface/Miuiface;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDeviceId:J

.field private mGroupId:I

.field private mMiuifaceId:I

.field private mName:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/miuiface/Miuiface$1;

    invoke-direct {v0}, Landroid/hardware/miuiface/Miuiface$1;-><init>()V

    sput-object v0, Landroid/hardware/miuiface/Miuiface;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/miuiface/Miuiface;->mName:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/miuiface/Miuiface;->mGroupId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/miuiface/Miuiface;->mMiuifaceId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/miuiface/Miuiface;->mDeviceId:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/miuiface/Miuiface$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/miuiface/Miuiface;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IIJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/miuiface/Miuiface;->mName:Ljava/lang/CharSequence;

    iput p2, p0, Landroid/hardware/miuiface/Miuiface;->mGroupId:I

    iput p3, p0, Landroid/hardware/miuiface/Miuiface;->mMiuifaceId:I

    iput-wide p4, p0, Landroid/hardware/miuiface/Miuiface;->mDeviceId:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceId()J
    .registers 3

    iget-wide v0, p0, Landroid/hardware/miuiface/Miuiface;->mDeviceId:J

    return-wide v0
.end method

.method public getGroupId()I
    .registers 2

    iget v0, p0, Landroid/hardware/miuiface/Miuiface;->mGroupId:I

    return v0
.end method

.method public getMiuifaceId()I
    .registers 2

    iget v0, p0, Landroid/hardware/miuiface/Miuiface;->mMiuifaceId:I

    return v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/hardware/miuiface/Miuiface;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Landroid/hardware/miuiface/Miuiface;->mName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/hardware/miuiface/Miuiface;->mGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/miuiface/Miuiface;->mMiuifaceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/hardware/miuiface/Miuiface;->mDeviceId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
