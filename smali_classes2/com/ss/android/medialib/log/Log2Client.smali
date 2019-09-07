.class public Lcom/ss/android/medialib/log/Log2Client;
.super Ljava/lang/Object;
.source "Log2Client.java"


# static fields
.field private static sLog2Client:Lcom/ss/android/medialib/log/ILog2Client;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 0

    invoke-static {}, Lcom/ss/android/medialib/log/Log2ClientInvoker;->nativeInit()V

    return-void
.end method

.method public static logToLocal(ILjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/ss/android/medialib/log/Log2Client;->sLog2Client:Lcom/ss/android/medialib/log/ILog2Client;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/ss/android/medialib/log/ILog2Client;->logToLocal(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static register(Lcom/ss/android/medialib/log/ILog2Client;)V
    .locals 0

    invoke-static {}, Lcom/ss/android/medialib/log/Log2Client;->init()V

    sput-object p0, Lcom/ss/android/medialib/log/Log2Client;->sLog2Client:Lcom/ss/android/medialib/log/ILog2Client;

    return-void
.end method
