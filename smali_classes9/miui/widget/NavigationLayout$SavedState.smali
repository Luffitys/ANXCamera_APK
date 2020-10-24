.class Lmiui/widget/NavigationLayout$SavedState;
.super Landroid/view/View$BaseSavedState;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field offset:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmiui/widget/NavigationLayout$SavedState$1;

    invoke-direct {v0}, Lmiui/widget/NavigationLayout$SavedState$1;-><init>()V

    sput-object v0, Lmiui/widget/NavigationLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lmiui/widget/NavigationLayout$SavedState;->offset:F

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;Lmiui/widget/NavigationLayout$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/widget/NavigationLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget p0, p0, Lmiui/widget/NavigationLayout$SavedState;->offset:F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
