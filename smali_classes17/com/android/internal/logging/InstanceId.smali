.class public final Lcom/android/internal/logging/InstanceId;
.super Ljava/lang/Object;
.source "InstanceId.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/logging/InstanceId;",
            ">;"
        }
    .end annotation
.end field

.field static final INSTANCE_ID_MAX:I = 0x100000


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/logging/InstanceId$1;

    invoke-direct {v0}, Lcom/android/internal/logging/InstanceId$1;-><init>()V

    sput-object v0, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/logging/InstanceId;->mId:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/logging/InstanceId;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/logging/InstanceId$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/logging/InstanceId;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static fakeInstanceId(I)Lcom/android/internal/logging/InstanceId;
    .registers 2

    new-instance v0, Lcom/android/internal/logging/InstanceId;

    invoke-direct {v0, p0}, Lcom/android/internal/logging/InstanceId;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/android/internal/logging/InstanceId;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget v0, p0, Lcom/android/internal/logging/InstanceId;->mId:I

    move-object v2, p1

    check-cast v2, Lcom/android/internal/logging/InstanceId;

    iget v2, v2, Lcom/android/internal/logging/InstanceId;->mId:I

    if-ne v0, v2, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Lcom/android/internal/logging/InstanceId;->mId:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/android/internal/logging/InstanceId;->mId:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Lcom/android/internal/logging/InstanceId;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
