.class Lcom/miui/internal/widget/AbsActionBarView$SavedState$1;
.super Ljava/lang/Object;
.source "AbsActionBarView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/AbsActionBarView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/miui/internal/widget/AbsActionBarView$SavedState;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/internal/widget/AbsActionBarView$SavedState;
    .registers 4

    new-instance v0, Lcom/miui/internal/widget/AbsActionBarView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miui/internal/widget/AbsActionBarView$SavedState;-><init>(Landroid/os/Parcel;Lcom/miui/internal/widget/AbsActionBarView$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/internal/widget/AbsActionBarView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/miui/internal/widget/AbsActionBarView$SavedState;
    .registers 3

    new-array v0, p1, [Lcom/miui/internal/widget/AbsActionBarView$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView$SavedState$1;->newArray(I)[Lcom/miui/internal/widget/AbsActionBarView$SavedState;

    move-result-object p1

    return-object p1
.end method
