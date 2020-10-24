.class Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/graphics/ImageDecoder$OnPartialImageListener;


# instance fields
.field final synthetic this$1:Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1$1;->this$1:Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPartialImage(Landroid/graphics/ImageDecoder$DecodeException;)Z
    .locals 0
    .param p1    # Landroid/graphics/ImageDecoder$DecodeException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method
