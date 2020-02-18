.class public Lcom/ss/android/ttve/log/TELog2Client;
.super Ljava/lang/Object;
.source "TELog2Client.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[VESDK]"

.field private static mLogger:Lcom/ss/android/vesdk/VELogProtocol;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 1

    invoke-static {}, Lcom/ss/android/ttve/log/TELog2ClientInvoker;->nativeInit()V

    new-instance v0, Lcom/ss/android/ttve/log/TELog2Client$1;

    invoke-direct {v0}, Lcom/ss/android/ttve/log/TELog2Client$1;-><init>()V

    invoke-static {v0}, Lcom/ss/android/medialib/log/Log2Client;->register(Lcom/ss/android/medialib/log/ILog2Client;)V

    return-void
.end method

.method public static logToLocal(ILjava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/ss/android/ttve/log/TELog2Client;->mLogger:Lcom/ss/android/vesdk/VELogProtocol;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VESDK]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/ss/android/vesdk/VELogProtocol;->logToLocal(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static registerLogger(Lcom/ss/android/vesdk/VELogProtocol;)V
    .locals 0

    sput-object p0, Lcom/ss/android/ttve/log/TELog2Client;->mLogger:Lcom/ss/android/vesdk/VELogProtocol;

    return-void
.end method

.method public static setLog2ClientSwitch(Z)V
    .locals 0

    invoke-static {p0}, Lcom/ss/android/ttve/log/TELog2ClientInvoker;->nativeSetLog2ClientSwitch(Z)V

    invoke-static {p0}, Lcom/ss/android/medialib/log/Log2ClientInvoker;->nativeSetLog2ClientSwitch(Z)V

    return-void
.end method
