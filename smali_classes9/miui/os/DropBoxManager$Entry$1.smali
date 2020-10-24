.class Lmiui/os/DropBoxManager$Entry$1;
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
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lmiui/os/DropBoxManager$Entry$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/os/DropBoxManager$Entry;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiui/os/DropBoxManager$Entry;
    .locals 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    and-int/lit8 p0, v5, 0x8

    if-eqz p0, :cond_0

    new-instance p0, Lmiui/os/DropBoxManager$Entry;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    and-int/lit8 v5, v5, -0x9

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lmiui/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J[BI)V

    return-object p0

    :cond_0
    new-instance p0, Lmiui/os/DropBoxManager$Entry;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lmiui/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLandroid/os/ParcelFileDescriptor;I)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lmiui/os/DropBoxManager$Entry$1;->newArray(I)[Lmiui/os/DropBoxManager$Entry;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lmiui/os/DropBoxManager$Entry;
    .locals 0

    new-array p0, p1, [Lmiui/os/DropBoxManager$Entry;

    return-object p0
.end method
