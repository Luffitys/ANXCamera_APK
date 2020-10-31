.class Lmiui/widget/DatePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DatePicker;
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
            "Lmiui/widget/DatePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDay:I

.field private final mIsLunar:Z

.field private final mMonth:I

.field private final mYear:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/widget/DatePicker$SavedState$1;

    invoke-direct {v0}, Lmiui/widget/DatePicker$SavedState$1;-><init>()V

    sput-object v0, Lmiui/widget/DatePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/widget/DatePicker$SavedState;->mYear:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/widget/DatePicker$SavedState;->mMonth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/widget/DatePicker$SavedState;->mDay:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    iput-boolean v1, p0, Lmiui/widget/DatePicker$SavedState;->mIsLunar:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/widget/DatePicker$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;IIIZ)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    iput p2, p0, Lmiui/widget/DatePicker$SavedState;->mYear:I

    iput p3, p0, Lmiui/widget/DatePicker$SavedState;->mMonth:I

    iput p4, p0, Lmiui/widget/DatePicker$SavedState;->mDay:I

    iput-boolean p5, p0, Lmiui/widget/DatePicker$SavedState;->mIsLunar:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIIZLmiui/widget/DatePicker$1;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lmiui/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIZ)V

    return-void
.end method

.method static synthetic access$1100(Lmiui/widget/DatePicker$SavedState;)I
    .registers 2

    iget v0, p0, Lmiui/widget/DatePicker$SavedState;->mYear:I

    return v0
.end method

.method static synthetic access$1200(Lmiui/widget/DatePicker$SavedState;)I
    .registers 2

    iget v0, p0, Lmiui/widget/DatePicker$SavedState;->mMonth:I

    return v0
.end method

.method static synthetic access$1300(Lmiui/widget/DatePicker$SavedState;)I
    .registers 2

    iget v0, p0, Lmiui/widget/DatePicker$SavedState;->mDay:I

    return v0
.end method

.method static synthetic access$1400(Lmiui/widget/DatePicker$SavedState;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/widget/DatePicker$SavedState;->mIsLunar:Z

    return v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lmiui/widget/DatePicker$SavedState;->mYear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lmiui/widget/DatePicker$SavedState;->mMonth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lmiui/widget/DatePicker$SavedState;->mDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lmiui/widget/DatePicker$SavedState;->mIsLunar:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
