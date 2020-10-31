.class Lcom/android/internal/BrightnessSynchronizer$1;
.super Landroid/os/Handler;
.source "BrightnessSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/BrightnessSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/BrightnessSynchronizer;


# direct methods
.method constructor <init>(Lcom/android/internal/BrightnessSynchronizer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/BrightnessSynchronizer$1;->this$0:Lcom/android/internal/BrightnessSynchronizer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_20

    :cond_c
    iget-object v0, p0, Lcom/android/internal/BrightnessSynchronizer$1;->this$0:Lcom/android/internal/BrightnessSynchronizer;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    # invokes: Lcom/android/internal/BrightnessSynchronizer;->updateBrightnessIntFromFloat(F)V
    invoke-static {v0, v1}, Lcom/android/internal/BrightnessSynchronizer;->access$100(Lcom/android/internal/BrightnessSynchronizer;F)V

    goto :goto_20

    :cond_18
    iget-object v0, p0, Lcom/android/internal/BrightnessSynchronizer$1;->this$0:Lcom/android/internal/BrightnessSynchronizer;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/internal/BrightnessSynchronizer;->updateBrightnessFloatFromInt(I)V
    invoke-static {v0, v1}, Lcom/android/internal/BrightnessSynchronizer;->access$000(Lcom/android/internal/BrightnessSynchronizer;I)V

    nop

    :goto_20
    return-void
.end method
