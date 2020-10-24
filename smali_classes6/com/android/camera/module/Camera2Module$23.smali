.class Lcom/android/camera/module/Camera2Module$23;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/Camera2Module;


# direct methods
.method constructor <init>(Lcom/android/camera/module/Camera2Module;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/Camera2Module$23;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module$23;->this$0:Lcom/android/camera/module/Camera2Module;

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/android/camera/module/Camera2Module;->access$5700(Lcom/android/camera/module/Camera2Module;I)V

    return-void
.end method
