.class public Lcom/ss/android/medialib/log/Log2ClientInvoker;
.super Ljava/lang/Object;
.source "Log2ClientInvoker.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadLibrary()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeInit()V
.end method

.method public static native nativeSetLog2ClientSwitch(Z)V
.end method

.method public static onNativeCallback_logToLocal(ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ss/android/medialib/log/Log2Client;->logToLocal(ILjava/lang/String;)V

    return-void
.end method
