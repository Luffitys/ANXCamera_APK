.class Lmiui/util/async/TaskInfoDeliverer$3;
.super Ljava/lang/Object;
.source "TaskInfoDeliverer.java"

# interfaces
.implements Lmiui/util/concurrent/Queue$Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/async/TaskInfoDeliverer;->postDeliver(Lmiui/util/async/Task;Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmiui/util/concurrent/Queue$Predicate<",
        "Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/util/async/TaskInfoDeliverer;

.field final synthetic val$thisTask:Lmiui/util/async/Task;


# direct methods
.method constructor <init>(Lmiui/util/async/TaskInfoDeliverer;Lmiui/util/async/Task;)V
    .registers 3

    iput-object p1, p0, Lmiui/util/async/TaskInfoDeliverer$3;->this$0:Lmiui/util/async/TaskInfoDeliverer;

    iput-object p2, p0, Lmiui/util/async/TaskInfoDeliverer$3;->val$thisTask:Lmiui/util/async/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;

    invoke-virtual {p0, p1}, Lmiui/util/async/TaskInfoDeliverer$3;->apply(Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;)Z

    move-result p1

    return p1
.end method

.method public apply(Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;)Z
    .registers 4

    if-eqz p1, :cond_a

    iget-object v0, p1, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;->task:Lmiui/util/async/Task;

    iget-object v1, p0, Lmiui/util/async/TaskInfoDeliverer$3;->val$thisTask:Lmiui/util/async/Task;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
