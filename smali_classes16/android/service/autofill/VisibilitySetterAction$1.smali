.class Landroid/service/autofill/VisibilitySetterAction$1;
.super Ljava/lang/Object;
.source "VisibilitySetterAction.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/VisibilitySetterAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/VisibilitySetterAction;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/VisibilitySetterAction;
    .registers 8

    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseIntArray()Landroid/util/SparseIntArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_23

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    if-nez v1, :cond_1d

    new-instance v5, Landroid/service/autofill/VisibilitySetterAction$Builder;

    invoke-direct {v5, v3, v4}, Landroid/service/autofill/VisibilitySetterAction$Builder;-><init>(II)V

    move-object v1, v5

    goto :goto_20

    :cond_1d
    invoke-virtual {v1, v3, v4}, Landroid/service/autofill/VisibilitySetterAction$Builder;->setVisibility(II)Landroid/service/autofill/VisibilitySetterAction$Builder;

    :goto_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_23
    if-nez v1, :cond_27

    const/4 v2, 0x0

    goto :goto_2b

    :cond_27
    invoke-virtual {v1}, Landroid/service/autofill/VisibilitySetterAction$Builder;->build()Landroid/service/autofill/VisibilitySetterAction;

    move-result-object v2

    :goto_2b
    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/service/autofill/VisibilitySetterAction$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/VisibilitySetterAction;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/service/autofill/VisibilitySetterAction;
    .registers 3

    new-array v0, p1, [Landroid/service/autofill/VisibilitySetterAction;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/service/autofill/VisibilitySetterAction$1;->newArray(I)[Landroid/service/autofill/VisibilitySetterAction;

    move-result-object p1

    return-object p1
.end method
