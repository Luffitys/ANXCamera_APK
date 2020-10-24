.class Lcom/android/camera/module/CloneModule$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/CloneModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/CloneModule;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/CloneModule$2;->this$0:Lcom/android/camera/module/CloneModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/CloneModule$2;->this$0:Lcom/android/camera/module/CloneModule;

    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam$Message;->START:Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-static {p0, v0}, Lcom/android/camera/module/CloneModule;->access$300(Lcom/android/camera/module/CloneModule;Lcom/xiaomi/fenshen/FenShenCam$Message;)V

    return-void
.end method
