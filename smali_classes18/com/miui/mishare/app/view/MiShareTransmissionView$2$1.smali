.class Lcom/miui/mishare/app/view/MiShareTransmissionView$2$1;
.super Ljava/lang/Object;
.source "MiShareTransmissionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/mishare/app/view/MiShareTransmissionView$2;->onStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/mishare/app/view/MiShareTransmissionView$2;

.field final synthetic val$newState:I


# direct methods
.method constructor <init>(Lcom/miui/mishare/app/view/MiShareTransmissionView$2;I)V
    .registers 3

    iput-object p1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$2$1;->this$1:Lcom/miui/mishare/app/view/MiShareTransmissionView$2;

    iput p2, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$2$1;->val$newState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$2$1;->this$1:Lcom/miui/mishare/app/view/MiShareTransmissionView$2;

    iget-object v0, v0, Lcom/miui/mishare/app/view/MiShareTransmissionView$2;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$2$1;->this$1:Lcom/miui/mishare/app/view/MiShareTransmissionView$2;

    iget-object v1, v1, Lcom/miui/mishare/app/view/MiShareTransmissionView$2;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    # getter for: Lcom/miui/mishare/app/view/MiShareTransmissionView;->mState:I
    invoke-static {v1}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->access$100(Lcom/miui/mishare/app/view/MiShareTransmissionView;)I

    move-result v1

    iget v2, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$2$1;->val$newState:I

    # invokes: Lcom/miui/mishare/app/view/MiShareTransmissionView;->refreshView(II)V
    invoke-static {v0, v1, v2}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->access$200(Lcom/miui/mishare/app/view/MiShareTransmissionView;II)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$2$1;->this$1:Lcom/miui/mishare/app/view/MiShareTransmissionView$2;

    iget-object v0, v0, Lcom/miui/mishare/app/view/MiShareTransmissionView$2;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    iget v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$2$1;->val$newState:I

    # setter for: Lcom/miui/mishare/app/view/MiShareTransmissionView;->mState:I
    invoke-static {v0, v1}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->access$102(Lcom/miui/mishare/app/view/MiShareTransmissionView;I)I

    return-void
.end method
