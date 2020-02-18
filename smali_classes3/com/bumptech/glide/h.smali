.class Lcom/bumptech/glide/h;
.super Ljava/lang/Object;
.source "RequestBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/j;->j(II)Lcom/bumptech/glide/request/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/j;

.field final synthetic val$target:Lcom/bumptech/glide/request/RequestFutureTarget;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/j;Lcom/bumptech/glide/request/RequestFutureTarget;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/h;->this$0:Lcom/bumptech/glide/j;

    iput-object p2, p0, Lcom/bumptech/glide/h;->val$target:Lcom/bumptech/glide/request/RequestFutureTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/h;->val$target:Lcom/bumptech/glide/request/RequestFutureTarget;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestFutureTarget;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/h;->this$0:Lcom/bumptech/glide/j;

    iget-object p0, p0, Lcom/bumptech/glide/h;->val$target:Lcom/bumptech/glide/request/RequestFutureTarget;

    invoke-virtual {v0, p0, p0}, Lcom/bumptech/glide/j;->a(Lcom/bumptech/glide/request/target/o;Lcom/bumptech/glide/request/e;)Lcom/bumptech/glide/request/target/o;

    :cond_0
    return-void
.end method
