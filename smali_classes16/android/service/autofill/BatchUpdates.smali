.class public final Landroid/service/autofill/BatchUpdates;
.super Ljava/lang/Object;
.source "BatchUpdates.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/BatchUpdates$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/BatchUpdates;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mTransformations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/service/autofill/InternalTransformation;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUpdates:Landroid/widget/RemoteViews;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/autofill/BatchUpdates$1;

    invoke-direct {v0}, Landroid/service/autofill/BatchUpdates$1;-><init>()V

    sput-object v0, Landroid/service/autofill/BatchUpdates;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/service/autofill/BatchUpdates$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # getter for: Landroid/service/autofill/BatchUpdates$Builder;->mTransformations:Ljava/util/ArrayList;
    invoke-static {p1}, Landroid/service/autofill/BatchUpdates$Builder;->access$000(Landroid/service/autofill/BatchUpdates$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/BatchUpdates;->mTransformations:Ljava/util/ArrayList;

    # getter for: Landroid/service/autofill/BatchUpdates$Builder;->mUpdates:Landroid/widget/RemoteViews;
    invoke-static {p1}, Landroid/service/autofill/BatchUpdates$Builder;->access$100(Landroid/service/autofill/BatchUpdates$Builder;)Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/BatchUpdates;->mUpdates:Landroid/widget/RemoteViews;

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/autofill/BatchUpdates$Builder;Landroid/service/autofill/BatchUpdates$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/autofill/BatchUpdates;-><init>(Landroid/service/autofill/BatchUpdates$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getTransformations()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/service/autofill/InternalTransformation;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/autofill/BatchUpdates;->mTransformations:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUpdates()Landroid/widget/RemoteViews;
    .registers 2

    iget-object v0, p0, Landroid/service/autofill/BatchUpdates;->mUpdates:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BatchUpdates: ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", transformations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/autofill/BatchUpdates;->mTransformations:Ljava/util/ArrayList;

    if-nez v1, :cond_1c

    const-string v1, "N/A"

    goto :goto_24

    :cond_1c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", updates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/autofill/BatchUpdates;->mUpdates:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 9

    iget-object v0, p0, Landroid/service/autofill/BatchUpdates;->mTransformations:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_35

    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [I

    new-array v2, v0, [Landroid/service/autofill/InternalTransformation;

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v0, :cond_2f

    iget-object v4, p0, Landroid/service/autofill/BatchUpdates;->mTransformations:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v1, v3

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/service/autofill/InternalTransformation;

    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_2f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    :goto_35
    iget-object v0, p0, Landroid/service/autofill/BatchUpdates;->mUpdates:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
