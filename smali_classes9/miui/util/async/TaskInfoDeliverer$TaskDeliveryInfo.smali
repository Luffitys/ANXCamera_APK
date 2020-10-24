.class Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public delivery:Lmiui/util/async/Task$Delivery;

.field public info:Ljava/lang/Object;

.field public task:Lmiui/util/async/Task;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;->task:Lmiui/util/async/Task;

    iput-object v0, p0, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;->delivery:Lmiui/util/async/Task$Delivery;

    iput-object v0, p0, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;->info:Ljava/lang/Object;

    return-void
.end method
