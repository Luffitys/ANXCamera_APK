.class Landroid/graphics/drawable/RippleForeground$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RippleForeground.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/RippleForeground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/graphics/drawable/RippleForeground;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/RippleForeground;)V
    .registers 2

    iput-object p1, p0, Landroid/graphics/drawable/RippleForeground$1;->this$0:Landroid/graphics/drawable/RippleForeground;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Landroid/graphics/drawable/RippleForeground$1;->this$0:Landroid/graphics/drawable/RippleForeground;

    const/4 v1, 0x1

    # setter for: Landroid/graphics/drawable/RippleForeground;->mHasFinishedExit:Z
    invoke-static {v0, v1}, Landroid/graphics/drawable/RippleForeground;->access$002(Landroid/graphics/drawable/RippleForeground;Z)Z

    iget-object v0, p0, Landroid/graphics/drawable/RippleForeground$1;->this$0:Landroid/graphics/drawable/RippleForeground;

    # invokes: Landroid/graphics/drawable/RippleForeground;->pruneHwFinished()V
    invoke-static {v0}, Landroid/graphics/drawable/RippleForeground;->access$100(Landroid/graphics/drawable/RippleForeground;)V

    iget-object v0, p0, Landroid/graphics/drawable/RippleForeground$1;->this$0:Landroid/graphics/drawable/RippleForeground;

    # invokes: Landroid/graphics/drawable/RippleForeground;->pruneSwFinished()V
    invoke-static {v0}, Landroid/graphics/drawable/RippleForeground;->access$200(Landroid/graphics/drawable/RippleForeground;)V

    iget-object v0, p0, Landroid/graphics/drawable/RippleForeground$1;->this$0:Landroid/graphics/drawable/RippleForeground;

    # getter for: Landroid/graphics/drawable/RippleForeground;->mRunningHwAnimators:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/graphics/drawable/RippleForeground;->access$300(Landroid/graphics/drawable/RippleForeground;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/graphics/drawable/RippleForeground$1;->this$0:Landroid/graphics/drawable/RippleForeground;

    # invokes: Landroid/graphics/drawable/RippleForeground;->clearHwProps()V
    invoke-static {v0}, Landroid/graphics/drawable/RippleForeground;->access$400(Landroid/graphics/drawable/RippleForeground;)V

    :cond_21
    return-void
.end method
