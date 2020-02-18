.class Lcom/bumptech/glide/k;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/m;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/m;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/k;->this$0:Lcom/bumptech/glide/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/bumptech/glide/k;->this$0:Lcom/bumptech/glide/m;

    iget-object v0, p0, Lcom/bumptech/glide/m;->ba:Lcom/bumptech/glide/manager/i;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/manager/i;->b(Lcom/bumptech/glide/manager/j;)V

    return-void
.end method
