.class Lcom/bumptech/glide/m$b;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lcom/bumptech/glide/manager/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final Jc:Lcom/bumptech/glide/manager/p;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/manager/p;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/manager/p;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/m$b;->Jc:Lcom/bumptech/glide/manager/p;

    return-void
.end method


# virtual methods
.method public m(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/bumptech/glide/m$b;->Jc:Lcom/bumptech/glide/manager/p;

    invoke-virtual {p0}, Lcom/bumptech/glide/manager/p;->Xi()V

    :cond_0
    return-void
.end method
