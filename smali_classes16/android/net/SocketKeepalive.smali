.class public abstract Landroid/net/SocketKeepalive;
.super Ljava/lang/Object;
.source "SocketKeepalive.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/SocketKeepalive$Callback;,
        Landroid/net/SocketKeepalive$InvalidSocketException;,
        Landroid/net/SocketKeepalive$ErrorCodeException;,
        Landroid/net/SocketKeepalive$KeepaliveEvent;,
        Landroid/net/SocketKeepalive$ErrorCode;
    }
.end annotation


# static fields
.field public static final BINDER_DIED:I = -0xa

.field public static final DATA_RECEIVED:I = -0x2

.field public static final ERROR_HARDWARE_ERROR:I = -0x1f

.field public static final ERROR_HARDWARE_UNSUPPORTED:I = -0x1e

.field public static final ERROR_INSUFFICIENT_RESOURCES:I = -0x20

.field public static final ERROR_INVALID_INTERVAL:I = -0x18

.field public static final ERROR_INVALID_IP_ADDRESS:I = -0x15

.field public static final ERROR_INVALID_LENGTH:I = -0x17

.field public static final ERROR_INVALID_NETWORK:I = -0x14

.field public static final ERROR_INVALID_PORT:I = -0x16

.field public static final ERROR_INVALID_SOCKET:I = -0x19

.field public static final ERROR_SOCKET_NOT_IDLE:I = -0x1a

.field public static final ERROR_UNSUPPORTED:I = -0x1e

.field public static final MAX_INTERVAL_SEC:I = 0xe10

.field public static final MIN_INTERVAL_SEC:I = 0xa

.field public static final NO_KEEPALIVE:I = -0x1

.field public static final SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "SocketKeepalive"


# instance fields
.field final mCallback:Landroid/net/ISocketKeepaliveCallback;

.field final mExecutor:Ljava/util/concurrent/Executor;

.field final mNetwork:Landroid/net/Network;

.field final mPfd:Landroid/os/ParcelFileDescriptor;

.field final mService:Landroid/net/IConnectivityManager;

.field mSlot:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Landroid/net/IConnectivityManager;Landroid/net/Network;Landroid/os/ParcelFileDescriptor;Ljava/util/concurrent/Executor;Landroid/net/SocketKeepalive$Callback;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/SocketKeepalive;->mService:Landroid/net/IConnectivityManager;

    iput-object p2, p0, Landroid/net/SocketKeepalive;->mNetwork:Landroid/net/Network;

    iput-object p3, p0, Landroid/net/SocketKeepalive;->mPfd:Landroid/os/ParcelFileDescriptor;

    iput-object p4, p0, Landroid/net/SocketKeepalive;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/net/SocketKeepalive$1;

    invoke-direct {v0, p0, p5, p4}, Landroid/net/SocketKeepalive$1;-><init>(Landroid/net/SocketKeepalive;Landroid/net/SocketKeepalive$Callback;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/net/SocketKeepalive;->mCallback:Landroid/net/ISocketKeepaliveCallback;

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2

    invoke-virtual {p0}, Landroid/net/SocketKeepalive;->stop()V

    :try_start_3
    iget-object v0, p0, Landroid/net/SocketKeepalive;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_9

    goto :goto_a

    :catch_9
    move-exception v0

    :goto_a
    return-void
.end method

.method public final start(I)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/SocketKeepalive;->startImpl(I)V

    return-void
.end method

.method abstract startImpl(I)V
.end method

.method public final stop()V
    .registers 1

    invoke-virtual {p0}, Landroid/net/SocketKeepalive;->stopImpl()V

    return-void
.end method

.method abstract stopImpl()V
.end method
