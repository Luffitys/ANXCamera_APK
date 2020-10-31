.class final Landroid/view/View$PerformClick;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PerformClick"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Landroid/view/View$PerformClick;->this$0:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroid/view/View$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/View$PerformClick;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroid/view/View$PerformClick;->this$0:Landroid/view/View;

    const/4 v1, 0x1

    # invokes: Landroid/view/View;->recordGestureClassification(I)V
    invoke-static {v0, v1}, Landroid/view/View;->access$3200(Landroid/view/View;I)V

    iget-object v0, p0, Landroid/view/View$PerformClick;->this$0:Landroid/view/View;

    # invokes: Landroid/view/View;->performClickInternal()Z
    invoke-static {v0}, Landroid/view/View;->access$3600(Landroid/view/View;)Z

    return-void
.end method
