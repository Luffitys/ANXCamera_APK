.class Lcom/android/camera/videoplayer/utils/HandlerThreadExtension$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic this$0:Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;


# direct methods
.method constructor <init>(Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension$1;->this$0:Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
