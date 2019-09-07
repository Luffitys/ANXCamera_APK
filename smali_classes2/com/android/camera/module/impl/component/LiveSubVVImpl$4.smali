.class Lcom/android/camera/module/impl/component/LiveSubVVImpl$4;
.super Ljava/lang/Object;
.source "LiveSubVVImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/impl/component/LiveSubVVImpl;->OnNeedStopRecording()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/impl/component/LiveSubVVImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/module/impl/component/LiveSubVVImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$4;->this$0:Lcom/android/camera/module/impl/component/LiveSubVVImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$4;->this$0:Lcom/android/camera/module/impl/component/LiveSubVVImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->access$102(Lcom/android/camera/module/impl/component/LiveSubVVImpl;Z)Z

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$4;->this$0:Lcom/android/camera/module/impl/component/LiveSubVVImpl;

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->stopRecording()V

    return-void
.end method
