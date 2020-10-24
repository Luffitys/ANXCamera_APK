.class public Lcom/xiaomi/asr/engine/jni/VoicePrintInterface;
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
.method public native voiceprintDestroy()I
.end method

.method public native voiceprintGenerateModel(Ljava/lang/String;)Z
.end method

.method public native voiceprintGetAllRegister()Ljava/lang/String;
.end method

.method public native voiceprintInit(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native voiceprintReEnrollRegister(Ljava/lang/String;[BII)I
.end method

.method public native voiceprintRecognition([BII)Ljava/lang/String;
.end method

.method public native voiceprintRegister(Ljava/lang/String;[B)I
.end method

.method public native voiceprintRemoveAll()V
.end method

.method public native voiceprintVersion()Ljava/lang/String;
.end method
