.class public Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;
.super Ljava/lang/Object;
.source "VEVideoCompileEncodeSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mHWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;

.field public mSWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;

.field public useHWEncoder:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings$1;

    invoke-direct {v0}, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings$1;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;

    invoke-direct {v0}, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mHWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;

    new-instance v0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;

    invoke-direct {v0}, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mSWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;

    invoke-direct {v0}, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mHWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;

    new-instance v0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;

    invoke-direct {v0}, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mSWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->useHWEncoder:Z

    const-class v0, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;

    iput-object v0, p0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mHWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;

    const-class v0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;

    iput-object p1, p0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mSWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->useHWEncoder:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mHWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mSWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
