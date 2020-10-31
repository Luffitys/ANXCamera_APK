.class Landroid/widget/ForwardingListener$TriggerLongPress;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ForwardingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TriggerLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ForwardingListener;


# direct methods
.method private constructor <init>(Landroid/widget/ForwardingListener;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/ForwardingListener$TriggerLongPress;->this$0:Landroid/widget/ForwardingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ForwardingListener;Landroid/widget/ForwardingListener$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ForwardingListener$TriggerLongPress;-><init>(Landroid/widget/ForwardingListener;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Landroid/widget/ForwardingListener$TriggerLongPress;->this$0:Landroid/widget/ForwardingListener;

    # invokes: Landroid/widget/ForwardingListener;->onLongPress()V
    invoke-static {v0}, Landroid/widget/ForwardingListener;->access$300(Landroid/widget/ForwardingListener;)V

    return-void
.end method
