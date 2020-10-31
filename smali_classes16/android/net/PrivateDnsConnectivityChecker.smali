.class public Landroid/net/PrivateDnsConnectivityChecker;
.super Ljava/lang/Object;
.source "PrivateDnsConnectivityChecker.java"


# static fields
.field private static final CONNECTION_TIMEOUT_MS:I = 0x1388

.field private static final PRIVATE_DNS_PORT:I = 0x355

.field private static final TAG:Ljava/lang/String; = "NetworkUtils"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canConnectToPrivateDnsServer(Ljava/lang/String;)Z
    .registers 8

    const-string v0, "NetworkUtils"

    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v1

    const/16 v2, -0xfb

    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_d
    invoke-virtual {v1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/SSLSocket;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_13} :catch_5f

    const/16 v5, 0x1388

    :try_start_15
    invoke-virtual {v4, v5}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    new-instance v5, Ljava/net/InetSocketAddress;

    const/16 v6, 0x355

    invoke-direct {v5, p0, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;)V

    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->isConnected()Z

    move-result v5

    if-nez v5, :cond_3c

    const-string v5, "Connection to %s failed."

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p0, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_15 .. :try_end_35} :catchall_53

    nop

    if-eqz v4, :cond_3b

    :try_start_38
    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_5f

    :cond_3b
    return v3

    :cond_3c
    :try_start_3c
    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    const-string v5, "TLS handshake to %s succeeded."

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p0, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_3c .. :try_end_4c} :catchall_53

    nop

    if-eqz v4, :cond_52

    :try_start_4f
    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_5f

    :cond_52
    return v2

    :catchall_53
    move-exception v5

    if-eqz v4, :cond_5e

    :try_start_56
    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_5a

    goto :goto_5e

    :catchall_5a
    move-exception v6

    :try_start_5b
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5e
    :goto_5e
    throw v5
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5f} :catch_5f

    :catch_5f
    move-exception v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    const-string v5, "TLS handshake to %s failed."

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method
