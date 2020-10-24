.class Lcom/bumptech/glide/GlideBuilder$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/Glide$RequestOptionsFactory;


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/GlideBuilder;

.field final synthetic val$requestOptions:Lcom/bumptech/glide/request/RequestOptions;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/GlideBuilder;Lcom/bumptech/glide/request/RequestOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/GlideBuilder$2;->this$0:Lcom/bumptech/glide/GlideBuilder;

    iput-object p2, p0, Lcom/bumptech/glide/GlideBuilder$2;->val$requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/GlideBuilder$2;->val$requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    :goto_0
    return-object p0
.end method
