.class Lmiui/preference/VolumePreference$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field mVolumeStore:Lmiui/preference/VolumePreference$VolumeStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmiui/preference/VolumePreference$SavedState$1;

    invoke-direct {v0}, Lmiui/preference/VolumePreference$SavedState$1;-><init>()V

    sput-object v0, Lmiui/preference/VolumePreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    new-instance v0, Lmiui/preference/VolumePreference$VolumeStore;

    invoke-direct {v0}, Lmiui/preference/VolumePreference$VolumeStore;-><init>()V

    iput-object v0, p0, Lmiui/preference/VolumePreference$SavedState;->mVolumeStore:Lmiui/preference/VolumePreference$VolumeStore;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lmiui/preference/VolumePreference$VolumeStore;->volume:I

    iget-object p0, p0, Lmiui/preference/VolumePreference$SavedState;->mVolumeStore:Lmiui/preference/VolumePreference$VolumeStore;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lmiui/preference/VolumePreference$VolumeStore;->originalVolume:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    new-instance p1, Lmiui/preference/VolumePreference$VolumeStore;

    invoke-direct {p1}, Lmiui/preference/VolumePreference$VolumeStore;-><init>()V

    iput-object p1, p0, Lmiui/preference/VolumePreference$SavedState;->mVolumeStore:Lmiui/preference/VolumePreference$VolumeStore;

    return-void
.end method


# virtual methods
.method getVolumeStore()Lmiui/preference/VolumePreference$VolumeStore;
    .locals 0

    iget-object p0, p0, Lmiui/preference/VolumePreference$SavedState;->mVolumeStore:Lmiui/preference/VolumePreference$VolumeStore;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lmiui/preference/VolumePreference$SavedState;->mVolumeStore:Lmiui/preference/VolumePreference$VolumeStore;

    iget p2, p2, Lmiui/preference/VolumePreference$VolumeStore;->volume:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lmiui/preference/VolumePreference$SavedState;->mVolumeStore:Lmiui/preference/VolumePreference$VolumeStore;

    iget p0, p0, Lmiui/preference/VolumePreference$VolumeStore;->originalVolume:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
