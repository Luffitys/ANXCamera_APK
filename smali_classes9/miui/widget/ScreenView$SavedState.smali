.class Lmiui/widget/ScreenView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field currentScreen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmiui/widget/ScreenView$SavedState$1;

    invoke-direct {v0}, Lmiui/widget/ScreenView$SavedState$1;-><init>()V

    sput-object v0, Lmiui/widget/ScreenView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/ScreenView$SavedState;->currentScreen:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lmiui/widget/ScreenView$SavedState;->currentScreen:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/widget/ScreenView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/widget/ScreenView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 p1, -0x1

    iput p1, p0, Lmiui/widget/ScreenView$SavedState;->currentScreen:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget p0, p0, Lmiui/widget/ScreenView$SavedState;->currentScreen:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
