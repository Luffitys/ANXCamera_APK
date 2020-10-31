.class public final Landroid/net/UidRange;
.super Ljava/lang/Object;
.source "UidRange.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final start:I

.field public final stop:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/UidRange$1;

    invoke-direct {v0}, Landroid/net/UidRange$1;-><init>()V

    sput-object v0, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_1e

    if-ltz p2, :cond_16

    if-gt p1, p2, :cond_e

    iput p1, p0, Landroid/net/UidRange;->start:I

    iput p2, p0, Landroid/net/UidRange;->stop:I

    return-void

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid UID range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid stop UID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid start UID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static containsUid(Ljava/util/Collection;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/UidRange;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/UidRange;

    invoke-virtual {v2, p1}, Landroid/net/UidRange;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/4 v0, 0x1

    return v0

    :cond_1c
    goto :goto_8

    :cond_1d
    return v0
.end method

.method public static createForUser(I)Landroid/net/UidRange;
    .registers 5

    new-instance v0, Landroid/net/UidRange;

    const v1, 0x186a0

    mul-int v2, p0, v1

    add-int/lit8 v3, p0, 0x1

    mul-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/net/UidRange;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public contains(I)Z
    .registers 3

    iget v0, p0, Landroid/net/UidRange;->start:I

    if-gt v0, p1, :cond_a

    iget v0, p0, Landroid/net/UidRange;->stop:I

    if-gt p1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public containsRange(Landroid/net/UidRange;)Z
    .registers 4

    iget v0, p0, Landroid/net/UidRange;->start:I

    iget v1, p1, Landroid/net/UidRange;->start:I

    if-gt v0, v1, :cond_e

    iget v0, p1, Landroid/net/UidRange;->stop:I

    iget v1, p0, Landroid/net/UidRange;->stop:I

    if-gt v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public count()I
    .registers 3

    iget v0, p0, Landroid/net/UidRange;->stop:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/net/UidRange;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroid/net/UidRange;

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    move-object v1, p1

    check-cast v1, Landroid/net/UidRange;

    iget v3, p0, Landroid/net/UidRange;->start:I

    iget v4, v1, Landroid/net/UidRange;->start:I

    if-ne v3, v4, :cond_19

    iget v3, p0, Landroid/net/UidRange;->stop:I

    iget v4, v1, Landroid/net/UidRange;->stop:I

    if-ne v3, v4, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v2

    :goto_1a
    return v0

    :cond_1b
    return v2
.end method

.method public getEndUser()I
    .registers 3

    iget v0, p0, Landroid/net/UidRange;->stop:I

    const v1, 0x186a0

    div-int/2addr v0, v1

    return v0
.end method

.method public getStartUser()I
    .registers 3

    iget v0, p0, Landroid/net/UidRange;->start:I

    const v1, 0x186a0

    div-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x11

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/UidRange;->start:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/net/UidRange;->stop:I

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/net/UidRange;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/UidRange;->stop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/net/UidRange;->start:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/UidRange;->stop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
