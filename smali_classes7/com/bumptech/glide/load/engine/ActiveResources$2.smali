.class Lcom/bumptech/glide/load/engine/ActiveResources$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/load/engine/ActiveResources;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/ActiveResources;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/ActiveResources$2;->this$0:Lcom/bumptech/glide/load/engine/ActiveResources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/ActiveResources$2;->this$0:Lcom/bumptech/glide/load/engine/ActiveResources;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/ActiveResources;->cleanReferenceQueue()V

    return-void
.end method
