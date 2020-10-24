.class public Lcom/xiaomi/asr/engine/jni/MultiChannelWakeupEngineInterface;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadLibrary(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public native wakeupDebugFeedData([BI)Ljava/lang/String;
.end method

.method public native wakeupDestroy()I
.end method

.method public native wakeupFeedData([BII)I
.end method

.method public native wakeupGetFrameSize()I
.end method

.method public native wakeupInit(Ljava/lang/String;)I
.end method

.method public native wakeupReset()I
.end method

.method public native wakeupVersion()Ljava/lang/String;
.end method
