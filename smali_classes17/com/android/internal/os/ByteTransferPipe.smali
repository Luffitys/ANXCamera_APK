.class public Lcom/android/internal/os/ByteTransferPipe;
.super Lcom/android/internal/os/TransferPipe;
.source "ByteTransferPipe.java"


# static fields
.field static final TAG:Ljava/lang/String; = "ByteTransferPipe"


# instance fields
.field private mOutputStream:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/os/TransferPipe;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ByteTransferPipe"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/TransferPipe;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/ByteTransferPipe;->go(Ljava/io/FileDescriptor;)V

    iget-object v0, p0, Lcom/android/internal/os/ByteTransferPipe;->mOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method protected getNewOutputStream()Ljava/io/OutputStream;
    .registers 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ByteTransferPipe;->mOutputStream:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method
