.class public Lcom/xiaomi/camera/isp/IspInterfaceIO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

.field private mRawInputSize:Landroid/util/Size;

.field private mYuvInputSize:Landroid/util/Size;

.field private mYuvOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/camera/isp/IspInterfaceIO$1;

    invoke-direct {v0}, Lcom/xiaomi/camera/isp/IspInterfaceIO$1;-><init>()V

    sput-object v0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    new-instance v0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    invoke-direct {v0, p1}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawInputSize:Landroid/util/Size;

    new-instance v0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    invoke-direct {v0, p1}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/util/Size;Landroid/util/Size;Lcom/xiaomi/camera/imagecodec/OutputConfiguration;)V
    .locals 1
    .param p1    # Landroid/util/Size;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/Size;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/xiaomi/camera/imagecodec/OutputConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    iput-object p3, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawInputSize:Landroid/util/Size;

    new-instance p2, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    const/16 v0, 0x23

    invoke-direct {p2, p3, p1, v0}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;-><init>(III)V

    iput-object p2, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    const-class v2, Lcom/xiaomi/camera/isp/IspInterfaceIO;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    check-cast p1, Lcom/xiaomi/camera/isp/IspInterfaceIO;

    iget-object v2, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawInputSize:Landroid/util/Size;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    iget-object v3, p1, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    invoke-virtual {v2, v3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    iget-object p1, p1, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    iget-object v3, p1, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawInputSize:Landroid/util/Size;

    invoke-virtual {v2, v3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    iget-object v3, p1, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    invoke-virtual {v2, v3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    iget-object p1, p1, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    return v0

    :cond_5
    :goto_2
    return v1
.end method

.method public getPicOutputConfiguration()Lcom/xiaomi/camera/imagecodec/OutputConfiguration;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    return-object p0
.end method

.method public getRawInputSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawInputSize:Landroid/util/Size;

    return-object p0
.end method

.method public getYuvInputSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    return-object p0
.end method

.method public getYuvOutputConfiguration()Lcom/xiaomi/camera/imagecodec/OutputConfiguration;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    return-object p0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawInputSize:Landroid/util/Size;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [I

    iget-object v1, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    aput v1, v0, v4

    iget-object v1, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    aput v1, v0, v3

    iget-object p0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->hashCode()I

    move-result p0

    aput p0, v0, v2

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/HashCodeHelpers;->hashCode([I)I

    move-result p0

    return p0

    :cond_0
    const/4 v5, 0x5

    new-array v5, v5, [I

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    aput v0, v5, v4

    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawInputSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    aput v0, v5, v3

    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    aput v0, v5, v2

    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    aput v0, v5, v1

    const/4 v0, 0x4

    iget-object p0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->hashCode()I

    move-result p0

    aput p0, v5, v0

    invoke-static {v5}, Lcom/xiaomi/camera/imagecodec/HashCodeHelpers;->hashCode([I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawInputSize:Landroid/util/Size;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v3

    iget-object v1, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawInputSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v2

    const-string v1, "RawInputSize: %dx%d "

    invoke-static {v5, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    iget-object v3, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    const-string v2, "YuvInputSize: %dx%d "

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawInputSize:Landroid/util/Size;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawInputSize:Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawInputSize:Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    invoke-virtual {p1, p0, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "dest must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
