.class public final synthetic Lcom/android/camera/module/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera2/Camera2Proxy$CaptureCallback;


# instance fields
.field private final synthetic ub:Lcom/android/camera/module/Camera2Module;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/Camera2Module;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/c;->ub:Lcom/android/camera/module/Camera2Module;

    return-void
.end method


# virtual methods
.method public final onCaptureCompleted(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/c;->ub:Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/Camera2Module;->l(Z)V

    return-void
.end method
