.class final Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# instance fields
.field private final parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method rewind()Landroid/os/ParcelFileDescriptor;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    const-wide/16 v1, 0x0

    sget v3, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v0, v1, v2, v3}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
