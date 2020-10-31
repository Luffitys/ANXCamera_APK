.class Landroid/widget/Chronometer$1;
.super Ljava/lang/Object;
.source "Chronometer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Chronometer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Chronometer;


# direct methods
.method constructor <init>(Landroid/widget/Chronometer;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/Chronometer$1;->this$0:Landroid/widget/Chronometer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Landroid/widget/Chronometer$1;->this$0:Landroid/widget/Chronometer;

    # getter for: Landroid/widget/Chronometer;->mRunning:Z
    invoke-static {v0}, Landroid/widget/Chronometer;->access$000(Landroid/widget/Chronometer;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/widget/Chronometer$1;->this$0:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    # invokes: Landroid/widget/Chronometer;->updateText(J)V
    invoke-static {v0, v1, v2}, Landroid/widget/Chronometer;->access$100(Landroid/widget/Chronometer;J)V

    iget-object v0, p0, Landroid/widget/Chronometer$1;->this$0:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->dispatchChronometerTick()V

    iget-object v0, p0, Landroid/widget/Chronometer$1;->this$0:Landroid/widget/Chronometer;

    # getter for: Landroid/widget/Chronometer;->mTickRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Landroid/widget/Chronometer;->access$200(Landroid/widget/Chronometer;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Chronometer;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_21
    return-void
.end method
