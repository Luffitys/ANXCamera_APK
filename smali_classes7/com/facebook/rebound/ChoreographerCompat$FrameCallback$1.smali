.class Lcom/facebook/rebound/ChoreographerCompat$FrameCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field final synthetic this$0:Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;


# direct methods
.method constructor <init>(Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/rebound/ChoreographerCompat$FrameCallback$1;->this$0:Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 0

    iget-object p0, p0, Lcom/facebook/rebound/ChoreographerCompat$FrameCallback$1;->this$0:Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;->doFrame(J)V

    return-void
.end method
