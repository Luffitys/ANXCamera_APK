.class public Landroid/os/spc/PSIEventSocketReader;
.super Ljava/lang/Object;
.source "PSIEventSocketReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/spc/PSIEventSocketReader$PSIEventListener;
    }
.end annotation


# static fields
.field public static final MAX_BUFFER_SIZE:I = 0x80


# instance fields
.field private mListener:Landroid/os/spc/PSIEventSocketReader$PSIEventListener;

.field private mPSISockFd:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;Landroid/os/spc/PSIEventSocketReader$PSIEventListener;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/spc/PSIEventSocketReader;->mPSISockFd:Landroid/os/ParcelFileDescriptor;

    iput-object p2, p0, Landroid/os/spc/PSIEventSocketReader;->mListener:Landroid/os/spc/PSIEventSocketReader$PSIEventListener;

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    if-eqz v1, :cond_18

    iput-object p1, p0, Landroid/os/spc/PSIEventSocketReader;->mPSISockFd:Landroid/os/ParcelFileDescriptor;

    :cond_18
    return-void
.end method

.method static synthetic access$000(Landroid/os/spc/PSIEventSocketReader;Ljava/io/InputStream;)Z
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/spc/PSIEventSocketReader;->readDataFromSocket(Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method private readDataFromSocket(Ljava/io/InputStream;)Z
    .registers 7

    const/16 v0, 0x80

    new-array v0, v0, [B

    :cond_4
    :goto_4
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_22

    iget-object v2, p0, Landroid/os/spc/PSIEventSocketReader;->mListener:Landroid/os/spc/PSIEventSocketReader$PSIEventListener;

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Landroid/os/spc/PSIEvent;->parse(Ljava/lang/String;)Landroid/os/spc/PSIEvent;

    move-result-object v2

    if-eqz v2, :cond_21

    iget-object v4, p0, Landroid/os/spc/PSIEventSocketReader;->mListener:Landroid/os/spc/PSIEventSocketReader$PSIEventListener;

    invoke-interface {v4, v2}, Landroid/os/spc/PSIEventSocketReader$PSIEventListener;->onReceive(Landroid/os/spc/PSIEvent;)V
    :try_end_21
    .catch Ljava/io/InterruptedIOException; {:try_start_5 .. :try_end_21} :catch_29
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_21} :catch_24

    :cond_21
    goto :goto_4

    :cond_22
    nop

    return v1

    :catch_24
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    return v1

    :catch_29
    move-exception v1

    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public startMonitor()V
    .registers 4

    iget-object v0, p0, Landroid/os/spc/PSIEventSocketReader;->mPSISockFd:Landroid/os/ParcelFileDescriptor;

    const-string v1, "SystemPressureControl"

    if-nez v0, :cond_c

    const-string v0, "PSIEventSocketReader: PSISocketFD has not prepared"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_22

    :cond_19
    new-instance v1, Landroid/os/spc/PSIEventSocketReader$1;

    invoke-direct {v1, p0, v0}, Landroid/os/spc/PSIEventSocketReader$1;-><init>(Landroid/os/spc/PSIEventSocketReader;Ljava/io/FileDescriptor;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    :cond_22
    :goto_22
    const-string v2, "PSIEventSocketReader: PSISocketFD is invalid"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
