.class public final Landroid/bluetooth/le/ResultStorageDescriptor;
.super Ljava/lang/Object;
.source "ResultStorageDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLength:I

.field private mOffset:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/bluetooth/le/ResultStorageDescriptor$1;

    invoke-direct {v0}, Landroid/bluetooth/le/ResultStorageDescriptor$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/ResultStorageDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/bluetooth/le/ResultStorageDescriptor;->mType:I

    iput p2, p0, Landroid/bluetooth/le/ResultStorageDescriptor;->mOffset:I

    iput p3, p0, Landroid/bluetooth/le/ResultStorageDescriptor;->mLength:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/bluetooth/le/ResultStorageDescriptor;->ReadFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/le/ResultStorageDescriptor$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/le/ResultStorageDescriptor;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private ReadFromParcel(Landroid/os/Parcel;)V
    .registers 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ResultStorageDescriptor;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ResultStorageDescriptor;->mOffset:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ResultStorageDescriptor;->mLength:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getLength()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/le/ResultStorageDescriptor;->mLength:I

    return v0
.end method

.method public getOffset()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/le/ResultStorageDescriptor;->mOffset:I

    return v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/le/ResultStorageDescriptor;->mType:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/bluetooth/le/ResultStorageDescriptor;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/le/ResultStorageDescriptor;->mOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/le/ResultStorageDescriptor;->mLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
