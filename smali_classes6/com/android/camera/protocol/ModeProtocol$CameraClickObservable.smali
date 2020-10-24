.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# static fields
.field public static final OBSERVABLE_AI_SCENE:I = 0xa6

.field public static final OBSERVABLE_CINEMATIC_ASPECT_RATIO:I = 0xa9

.field public static final OBSERVABLE_EIS:I = 0xaa

.field public static final OBSERVABLE_FLASH:I = 0xa1

.field public static final OBSERVABLE_FOCUS:I = 0xa5

.field public static final OBSERVABLE_HDR:I = 0xa2

.field public static final OBSERVABLE_LIVEPHOTO:I = 0xa3

.field public static final OBSERVABLE_MORE:I = 0xa4

.field public static final OBSERVABLE_SAT:I = 0xa7

.field public static final OBSERVABLE_SHUTTER:I = 0xab

.field public static final OBSERVABLE_ZOOM:I = 0xa8

.field public static final OBSERVER_ASD_RCOMM:I = 0xa1

.field public static final TYPE_TAG:I = 0xe3


# virtual methods
.method public varargs abstract addObservable([ILcom/android/camera/protocol/ModeProtocol$CameraClickObservable$ClickObserver;[I)V
.end method

.method public abstract subscribe(I)V
.end method
