.class Lmiui/widget/DateTimePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private nTimeInMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmiui/widget/DateTimePicker$SavedState$1;

    invoke-direct {v0}, Lmiui/widget/DateTimePicker$SavedState$1;-><init>()V

    sput-object v0, Lmiui/widget/DateTimePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/widget/DateTimePicker$SavedState;->nTimeInMillis:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;J)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    iput-wide p2, p0, Lmiui/widget/DateTimePicker$SavedState;->nTimeInMillis:J

    return-void
.end method


# virtual methods
.method public getTimeInMillis()J
    .locals 2

    iget-wide v0, p0, Lmiui/widget/DateTimePicker$SavedState;->nTimeInMillis:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget-wide v0, p0, Lmiui/widget/DateTimePicker$SavedState;->nTimeInMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
