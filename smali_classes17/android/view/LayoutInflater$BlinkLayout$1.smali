.class Landroid/view/LayoutInflater$BlinkLayout$1;
.super Ljava/lang/Object;
.source "LayoutInflater.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/LayoutInflater$BlinkLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/LayoutInflater$BlinkLayout;


# direct methods
.method constructor <init>(Landroid/view/LayoutInflater$BlinkLayout;)V
    .registers 2

    iput-object p1, p0, Landroid/view/LayoutInflater$BlinkLayout$1;->this$0:Landroid/view/LayoutInflater$BlinkLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x42

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Landroid/view/LayoutInflater$BlinkLayout$1;->this$0:Landroid/view/LayoutInflater$BlinkLayout;

    # getter for: Landroid/view/LayoutInflater$BlinkLayout;->mBlink:Z
    invoke-static {v0}, Landroid/view/LayoutInflater$BlinkLayout;->access$000(Landroid/view/LayoutInflater$BlinkLayout;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/view/LayoutInflater$BlinkLayout$1;->this$0:Landroid/view/LayoutInflater$BlinkLayout;

    # getter for: Landroid/view/LayoutInflater$BlinkLayout;->mBlinkState:Z
    invoke-static {v0}, Landroid/view/LayoutInflater$BlinkLayout;->access$100(Landroid/view/LayoutInflater$BlinkLayout;)Z

    move-result v2

    xor-int/2addr v2, v1

    # setter for: Landroid/view/LayoutInflater$BlinkLayout;->mBlinkState:Z
    invoke-static {v0, v2}, Landroid/view/LayoutInflater$BlinkLayout;->access$102(Landroid/view/LayoutInflater$BlinkLayout;Z)Z

    iget-object v0, p0, Landroid/view/LayoutInflater$BlinkLayout$1;->this$0:Landroid/view/LayoutInflater$BlinkLayout;

    # invokes: Landroid/view/LayoutInflater$BlinkLayout;->makeBlink()V
    invoke-static {v0}, Landroid/view/LayoutInflater$BlinkLayout;->access$200(Landroid/view/LayoutInflater$BlinkLayout;)V

    :cond_1e
    iget-object v0, p0, Landroid/view/LayoutInflater$BlinkLayout$1;->this$0:Landroid/view/LayoutInflater$BlinkLayout;

    invoke-virtual {v0}, Landroid/view/LayoutInflater$BlinkLayout;->invalidate()V

    return v1

    :cond_24
    const/4 v0, 0x0

    return v0
.end method
