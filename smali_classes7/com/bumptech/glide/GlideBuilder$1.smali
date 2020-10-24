.class Lcom/bumptech/glide/GlideBuilder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/Glide$RequestOptionsFactory;


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/GlideBuilder;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/GlideBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/GlideBuilder$1;->this$0:Lcom/bumptech/glide/GlideBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    return-object p0
.end method
