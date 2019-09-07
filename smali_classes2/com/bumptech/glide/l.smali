.class Lcom/bumptech/glide/l;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/m;->d(Lcom/bumptech/glide/request/target/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/m;

.field final synthetic val$target:Lcom/bumptech/glide/request/target/o;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/m;Lcom/bumptech/glide/request/target/o;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/l;->this$0:Lcom/bumptech/glide/m;

    iput-object p2, p0, Lcom/bumptech/glide/l;->val$target:Lcom/bumptech/glide/request/target/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/l;->this$0:Lcom/bumptech/glide/m;

    iget-object p0, p0, Lcom/bumptech/glide/l;->val$target:Lcom/bumptech/glide/request/target/o;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/m;->d(Lcom/bumptech/glide/request/target/o;)V

    return-void
.end method
