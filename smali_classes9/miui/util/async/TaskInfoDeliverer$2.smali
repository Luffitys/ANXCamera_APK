.class Lmiui/util/async/TaskInfoDeliverer$2;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field final synthetic this$0:Lmiui/util/async/TaskInfoDeliverer;


# direct methods
.method constructor <init>(Lmiui/util/async/TaskInfoDeliverer;)V
    .locals 0

    iput-object p1, p0, Lmiui/util/async/TaskInfoDeliverer$2;->this$0:Lmiui/util/async/TaskInfoDeliverer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object p0, p0, Lmiui/util/async/TaskInfoDeliverer$2;->this$0:Lmiui/util/async/TaskInfoDeliverer;

    new-instance v0, Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;-><init>(Landroid/os/Looper;)V

    invoke-static {p0, v0}, Lmiui/util/async/TaskInfoDeliverer;->access$102(Lmiui/util/async/TaskInfoDeliverer;Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;)Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
