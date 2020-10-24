.class Lcom/android/camera/module/Camera2Module$11;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/Camera2Module;

.field final synthetic val$count:I

.field final synthetic val$mode:I

.field final synthetic val$repeatTimes:I


# direct methods
.method constructor <init>(Lcom/android/camera/module/Camera2Module;III)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/Camera2Module$11;->this$0:Lcom/android/camera/module/Camera2Module;

    iput p2, p0, Lcom/android/camera/module/Camera2Module$11;->val$count:I

    iput p3, p0, Lcom/android/camera/module/Camera2Module$11;->val$repeatTimes:I

    iput p4, p0, Lcom/android/camera/module/Camera2Module$11;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$11;->this$0:Lcom/android/camera/module/Camera2Module;

    iget v1, p0, Lcom/android/camera/module/Camera2Module$11;->val$count:I

    iget v2, p0, Lcom/android/camera/module/Camera2Module$11;->val$repeatTimes:I

    iget p0, p0, Lcom/android/camera/module/Camera2Module$11;->val$mode:I

    invoke-static {v0, v1, v2, p0}, Lcom/android/camera/module/Camera2Module;->access$3300(Lcom/android/camera/module/Camera2Module;III)V

    return-void
.end method
