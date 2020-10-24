.class Lcom/miui/internal/widget/ActionBarView$SavedState$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/internal/widget/ActionBarView$SavedState;
    .locals 1

    new-instance p0, Lcom/miui/internal/widget/ActionBarView$SavedState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcel;Lcom/miui/internal/widget/ActionBarView$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/internal/widget/ActionBarView$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/miui/internal/widget/ActionBarView$SavedState;
    .locals 0

    new-array p0, p1, [Lcom/miui/internal/widget/ActionBarView$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView$SavedState$1;->newArray(I)[Lcom/miui/internal/widget/ActionBarView$SavedState;

    move-result-object p0

    return-object p0
.end method
