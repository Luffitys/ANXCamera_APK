.class public final synthetic Landroid/graphics/drawable/-$$Lambda$NinePatchDrawable$yQvfm7FAkslD5wdGFysjgwt8cLE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# instance fields
.field public final synthetic f$0:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Rect;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/drawable/-$$Lambda$NinePatchDrawable$yQvfm7FAkslD5wdGFysjgwt8cLE;->f$0:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 5

    iget-object v0, p0, Landroid/graphics/drawable/-$$Lambda$NinePatchDrawable$yQvfm7FAkslD5wdGFysjgwt8cLE;->f$0:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/drawable/NinePatchDrawable;->lambda$updateStateFromTypedArray$0(Landroid/graphics/Rect;Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V

    return-void
.end method
