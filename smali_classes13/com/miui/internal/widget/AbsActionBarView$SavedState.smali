.class Lcom/miui/internal/widget/AbsActionBarView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "AbsActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/AbsActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/internal/widget/AbsActionBarView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field expandState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/miui/internal/widget/AbsActionBarView$SavedState$1;

    invoke-direct {v0}, Lcom/miui/internal/widget/AbsActionBarView$SavedState$1;-><init>()V

    sput-object v0, Lcom/miui/internal/widget/AbsActionBarView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/AbsActionBarView$SavedState;->expandState:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/internal/widget/AbsActionBarView$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/miui/internal/widget/AbsActionBarView$SavedState;->expandState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
