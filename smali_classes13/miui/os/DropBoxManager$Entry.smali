.class public Lmiui/os/DropBoxManager$Entry;
.super Ljava/lang/Object;
.source "DropBoxManager.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/os/DropBoxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/os/DropBoxManager$Entry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mData:[B

.field private final mFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final mFlags:I

.field private final mTag:Ljava/lang/String;

.field private final mTimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/os/DropBoxManager$Entry$1;

    invoke-direct {v0}, Lmiui/os/DropBoxManager$Entry$1;-><init>()V

    sput-object v0, Lmiui/os/DropBoxManager$Entry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_12

    iput-object p1, p0, Lmiui/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    iput-wide p2, p0, Lmiui/os/DropBoxManager$Entry;->mTimeMillis:J

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/os/DropBoxManager$Entry;->mData:[B

    iput-object v0, p0, Lmiui/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    const/4 v0, 0x1

    iput v0, p0, Lmiui/os/DropBoxManager$Entry;->mFlags:I

    return-void

    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;JLandroid/os/ParcelFileDescriptor;I)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_36

    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    if-nez p4, :cond_11

    move v1, v2

    :cond_11
    if-ne v0, v1, :cond_1f

    iput-object p1, p0, Lmiui/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    iput-wide p2, p0, Lmiui/os/DropBoxManager$Entry;->mTimeMillis:J

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/os/DropBoxManager$Entry;->mData:[B

    iput-object p4, p0, Lmiui/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    iput p5, p0, Lmiui/os/DropBoxManager$Entry;->mFlags:I

    return-void

    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/io/File;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_32

    and-int/lit8 v0, p5, 0x1

    if-nez v0, :cond_1b

    iput-object p1, p0, Lmiui/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    iput-wide p2, p0, Lmiui/os/DropBoxManager$Entry;->mTimeMillis:J

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/os/DropBoxManager$Entry;->mData:[B

    const/high16 v0, 0x10000000

    invoke-static {p4, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lmiui/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    iput p5, p0, Lmiui/os/DropBoxManager$Entry;->mFlags:I

    return-void

    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_20

    if-eqz p4, :cond_18

    iput-object p1, p0, Lmiui/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    iput-wide p2, p0, Lmiui/os/DropBoxManager$Entry;->mTimeMillis:J

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lmiui/os/DropBoxManager$Entry;->mData:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    const/4 v0, 0x2

    iput v0, p0, Lmiui/os/DropBoxManager$Entry;->mFlags:I

    return-void

    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "text == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;J[BI)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_36

    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    if-nez p4, :cond_11

    move v1, v2

    :cond_11
    if-ne v0, v1, :cond_1f

    iput-object p1, p0, Lmiui/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    iput-wide p2, p0, Lmiui/os/DropBoxManager$Entry;->mTimeMillis:J

    iput-object p4, p0, Lmiui/os/DropBoxManager$Entry;->mData:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    iput p5, p0, Lmiui/os/DropBoxManager$Entry;->mFlags:I

    return-void

    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lmiui/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmiui/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_b

    :catch_a
    move-exception v0

    :cond_b
    :goto_b
    return-void
.end method

.method public describeContents()I
    .registers 2

    iget-object v0, p0, Lmiui/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public getFlags()I
    .registers 2

    iget v0, p0, Lmiui/os/DropBoxManager$Entry;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmiui/os/DropBoxManager$Entry;->mData:[B

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lmiui/os/DropBoxManager$Entry;->mData:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_17

    :cond_c
    iget-object v0, p0, Lmiui/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_25

    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v1, p0, Lmiui/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    :goto_17
    iget v1, p0, Lmiui/os/DropBoxManager$Entry;->mFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_23

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_24

    :cond_23
    move-object v1, v0

    :goto_24
    return-object v1

    :cond_25
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getText(I)Ljava/lang/String;
    .registers 9

    iget v0, p0, Lmiui/os/DropBoxManager$Entry;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    iget-object v0, p0, Lmiui/os/DropBoxManager$Entry;->mData:[B

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lmiui/os/DropBoxManager$Entry;->mData:[B

    array-length v3, v1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0

    :cond_1a
    const/4 v0, 0x0

    :try_start_1b
    invoke-virtual {p0}, Lmiui/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1f} :catch_53
    .catchall {:try_start_1b .. :try_end_1f} :catchall_4a

    move-object v0, v3

    if-nez v0, :cond_2a

    if-eqz v0, :cond_29

    :try_start_24
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_29

    :catch_28
    move-exception v2

    :cond_29
    :goto_29
    return-object v1

    :cond_2a
    :try_start_2a
    new-array v3, p1, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2e
    if-ltz v5, :cond_3d

    add-int v6, v4, v5

    move v4, v6

    if-ge v6, p1, :cond_3d

    sub-int v6, p1, v4

    invoke-virtual {v0, v3, v4, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    move v5, v6

    goto :goto_2e

    :cond_3d
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3, v2, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_42} :catch_53
    .catchall {:try_start_2a .. :try_end_42} :catchall_4a

    if-eqz v0, :cond_49

    :try_start_44
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_49

    :catch_48
    move-exception v1

    :cond_49
    :goto_49
    return-object v6

    :catchall_4a
    move-exception v1

    if-eqz v0, :cond_52

    :try_start_4d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_52

    :catch_51
    move-exception v2

    :cond_52
    :goto_52
    throw v1

    :catch_53
    move-exception v2

    nop

    if-eqz v0, :cond_5c

    :try_start_57
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_5c

    :catch_5b
    move-exception v3

    :cond_5c
    :goto_5c
    return-object v1
.end method

.method public getTimeMillis()J
    .registers 3

    iget-wide v0, p0, Lmiui/os/DropBoxManager$Entry;->mTimeMillis:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Lmiui/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lmiui/os/DropBoxManager$Entry;->mTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lmiui/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1b

    iget v0, p0, Lmiui/os/DropBoxManager$Entry;->mFlags:I

    and-int/lit8 v0, v0, -0x9

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmiui/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    :cond_1b
    iget v0, p0, Lmiui/os/DropBoxManager$Entry;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmiui/os/DropBoxManager$Entry;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :goto_27
    return-void
.end method
