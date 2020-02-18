.class public final synthetic Lcom/android/camera/module/impl/component/z;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic wb:Lcom/android/camera/module/impl/component/MiLiveRecorder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/impl/component/MiLiveRecorder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/impl/component/z;->wb:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/z;->wb:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->tf()V

    return-void
.end method
