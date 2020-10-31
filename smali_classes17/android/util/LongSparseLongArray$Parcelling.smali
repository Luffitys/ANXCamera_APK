.class public Landroid/util/LongSparseLongArray$Parcelling;
.super Ljava/lang/Object;
.source "LongSparseLongArray.java"

# interfaces
.implements Lcom/android/internal/util/Parcelling;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/LongSparseLongArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parcelling"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Parcelling<",
        "Landroid/util/LongSparseLongArray;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parcel(Landroid/util/LongSparseLongArray;Landroid/os/Parcel;I)V
    .registers 5

    if-nez p1, :cond_7

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_7
    # getter for: Landroid/util/LongSparseLongArray;->mSize:I
    invoke-static {p1}, Landroid/util/LongSparseLongArray;->access$000(Landroid/util/LongSparseLongArray;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    # getter for: Landroid/util/LongSparseLongArray;->mKeys:[J
    invoke-static {p1}, Landroid/util/LongSparseLongArray;->access$100(Landroid/util/LongSparseLongArray;)[J

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    # getter for: Landroid/util/LongSparseLongArray;->mValues:[J
    invoke-static {p1}, Landroid/util/LongSparseLongArray;->access$200(Landroid/util/LongSparseLongArray;)[J

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    return-void
.end method

.method public bridge synthetic parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .registers 4

    check-cast p1, Landroid/util/LongSparseLongArray;

    invoke-virtual {p0, p1, p2, p3}, Landroid/util/LongSparseLongArray$Parcelling;->parcel(Landroid/util/LongSparseLongArray;Landroid/os/Parcel;I)V

    return-void
.end method

.method public unparcel(Landroid/os/Parcel;)Landroid/util/LongSparseLongArray;
    .registers 11

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v1, 0x0

    return-object v1

    :cond_9
    new-instance v1, Landroid/util/LongSparseLongArray;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/util/LongSparseLongArray;-><init>(I)V

    # setter for: Landroid/util/LongSparseLongArray;->mSize:I
    invoke-static {v1, v0}, Landroid/util/LongSparseLongArray;->access$002(Landroid/util/LongSparseLongArray;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v3

    # setter for: Landroid/util/LongSparseLongArray;->mKeys:[J
    invoke-static {v1, v3}, Landroid/util/LongSparseLongArray;->access$102(Landroid/util/LongSparseLongArray;[J)[J

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v3

    # setter for: Landroid/util/LongSparseLongArray;->mValues:[J
    invoke-static {v1, v3}, Landroid/util/LongSparseLongArray;->access$202(Landroid/util/LongSparseLongArray;[J)[J

    # getter for: Landroid/util/LongSparseLongArray;->mKeys:[J
    invoke-static {v1}, Landroid/util/LongSparseLongArray;->access$100(Landroid/util/LongSparseLongArray;)[J

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x1

    if-lt v3, v0, :cond_2a

    move v3, v4

    goto :goto_2b

    :cond_2a
    move v3, v2

    :goto_2b
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    # getter for: Landroid/util/LongSparseLongArray;->mValues:[J
    invoke-static {v1}, Landroid/util/LongSparseLongArray;->access$200(Landroid/util/LongSparseLongArray;)[J

    move-result-object v3

    array-length v3, v3

    if-lt v3, v0, :cond_37

    move v3, v4

    goto :goto_38

    :cond_37
    move v3, v2

    :goto_38
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    if-lez v0, :cond_59

    # getter for: Landroid/util/LongSparseLongArray;->mKeys:[J
    invoke-static {v1}, Landroid/util/LongSparseLongArray;->access$100(Landroid/util/LongSparseLongArray;)[J

    move-result-object v3

    aget-wide v5, v3, v2

    const/4 v3, 0x1

    :goto_44
    if-ge v3, v0, :cond_59

    # getter for: Landroid/util/LongSparseLongArray;->mKeys:[J
    invoke-static {v1}, Landroid/util/LongSparseLongArray;->access$100(Landroid/util/LongSparseLongArray;)[J

    move-result-object v7

    aget-wide v7, v7, v3

    cmp-long v7, v5, v7

    if-gez v7, :cond_52

    move v7, v4

    goto :goto_53

    :cond_52
    move v7, v2

    :goto_53
    invoke-static {v7}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    :cond_59
    return-object v1
.end method

.method public bridge synthetic unparcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/util/LongSparseLongArray$Parcelling;->unparcel(Landroid/os/Parcel;)Landroid/util/LongSparseLongArray;

    move-result-object p1

    return-object p1
.end method
